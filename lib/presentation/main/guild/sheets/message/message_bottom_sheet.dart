import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/messages/delete_message/delete_message_cubit.dart';
import 'package:valkyrie_app/application/messages/edit_message/edit_message_cubit.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/domain/message/message.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/common/utils/flushbar_creator.dart';
import 'package:valkyrie_app/presentation/common/utils/get_current_user.dart';
import 'package:valkyrie_app/presentation/common/widgets/get_modal_button.dart';
import 'package:valkyrie_app/presentation/common/widgets/show_confirmation_dialog.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/main/guild/sheets/profile/profile_bottom_sheet.dart';

class MessageBottomSheet extends StatelessWidget {
  final Message message;
  final Guild? guild;
  const MessageBottomSheet({
    Key? key,
    required this.message,
    required this.guild,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<DeleteMessageCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<EditMessageCubit>(),
        ),
      ],
      child: _MessageBottomSheetActions(guild: guild, message: message),
    );
  }
}

class _MessageBottomSheetActions extends StatelessWidget {
  final current = getCurrentUser();
  final Message message;
  final Guild? guild;
  _MessageBottomSheetActions({
    Key? key,
    required this.message,
    required this.guild,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isAuthor = message.user.id == current.id;
    final isOwner = current.id == guild?.ownerId;
    final isFile = message.attachment != null;

    return BlocListener<EditMessageCubit, EditMessageState>(
      listener: (context, state) {
        state.saveFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              showError(
                message: failure.maybeMap(
                  orElse: () => "Server Error. Try again later.",
                ),
              ).show(context);
            },
            (_) {
              Navigator.popUntil(context, (route) => route.isFirst);
            },
          ),
        );
      },
      child: Container(
        color: ThemeColors.appBackground,
        child: ListView(
          children: [
            const SizedBox(
              height: 10,
            ),
            if (isAuthor && !isFile)
              getModalButton("Edit", Icons.edit, () {
                final cubit = context.read<EditMessageCubit>();
                _showEditDialog(context, cubit);
              }),
            getModalButton(
              "Copy ${isFile ? "Url" : "Text"}",
              Icons.copy,
              () => _copyToClipboard(context),
            ),
            if (isAuthor || isOwner)
              getModalButton("Delete", Icons.delete, () {
                showConfirmationDialog(
                  context,
                  title: "Delete Message",
                  body: "Are you sure you want to delete this message?",
                  buttonPrompt: "Delete",
                  buttonColor: ThemeColors.brandRed,
                  onSubmit: () {
                    Navigator.popUntil(context, (route) => route.isFirst);
                    return context
                        .read<DeleteMessageCubit>()
                        .deleteMessage(message.id);
                  },
                );
              }),
            getModalButton("Profile", Icons.account_box_rounded, () {
              Navigator.of(context).pop();
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (_) => ProfileBottomSheet(
                  guild: guild,
                  member: message.user,
                ),
              );
            }),
          ],
        ),
      ),
    );
  }

  void _showEditDialog(BuildContext context, EditMessageCubit cubit) {
    showDialog(
      context: context,
      builder: (context) {
        final _key = GlobalKey<FormState>();
        return AlertDialog(
          title: const Text('Edit Message'),
          content: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: _key,
            child: TextFormField(
              autocorrect: false,
              initialValue: message.text!.getOrCrash(),
              keyboardType: TextInputType.multiline,
              maxLines: null,
              textInputAction: TextInputAction.done,
              onChanged: (value) => cubit.messageTextChanged(value),
              onSaved: (value) => cubit.messageTextChanged(value!),
              validator: (_) => cubit.state.text.value.fold(
                (f) => f.maybeMap(
                  exceedingLength: (_) => "Character limit is 2000",
                  empty: (_) => "Message must not be empty",
                  orElse: () => null,
                ),
                (_) => null,
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text(
                "Cancel",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: ThemeColors.themeBlue,
                elevation: 0,
              ),
              onPressed: () {
                _key.currentState?.save();
                FocusScope.of(context).unfocus();
                cubit.submitEdit(message.id);
              },
              child: const Text("Submit"),
            ),
          ],
        );
      },
    );
  }

  void _copyToClipboard(BuildContext context) {
    final isFile = message.attachment != null;
    final data = isFile ? message.attachment!.url! : message.text!.getOrCrash();
    Clipboard.setData(
      ClipboardData(text: data),
    );
    Navigator.of(context).pop();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          "Copied the ${isFile ? "url" : "text"} to your clipboard",
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: ThemeColors.inputBackground,
        duration: const Duration(seconds: 3),
      ),
    );
  }
}
