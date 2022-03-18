import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:image_picker/image_picker.dart';
import 'package:valkyrie_app/application/messages/create_message/create_message_cubit.dart';
import 'package:valkyrie_app/application/messages/upload_image/upload_image_cubit.dart';
import 'package:valkyrie_app/presentation/common/utils/get_channel_name.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';

class MessageInput extends HookWidget {
  final String channelId;
  final bool isDM;
  const MessageInput({required this.channelId, required this.isDM});

  @override
  Widget build(BuildContext context) {
    final _controller = useTextEditingController();
    return BlocListener<CreateMessageCubit, CreateMessageState>(
      listener: (context, state) {
        state.messageFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (_) => {},
            (_) {
              context.read<CreateMessageCubit>().resetMessageText();
              _controller.clear();
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        height: 55,
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.5,
        ),
        child: Row(
          children: [
            GestureDetector(
              onTap: () => _selectImage(context, channelId),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: ThemeColors.inputBackground,
                ),
                width: 40,
                height: 40,
                child: const Icon(
                  Icons.photo,
                  size: 25,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: TextField(
                onChanged: (value) {
                  context.read<CreateMessageCubit>().messageTextChanged(value);
                },
                keyboardType: TextInputType.multiline,
                controller: _controller,
                style: const TextStyle(
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                  hintText:
                      'Message ${isDM ? "@${getDMUsername(context, channelId)}" : "#${getChannelName(context, channelId)}"}',
                  fillColor: ThemeColors.messageInput,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 12,
                  ),
                ),
                maxLines: null,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () =>
                  context.read<CreateMessageCubit>().createMessage(channelId),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: ThemeColors.themeBlue,
                ),
                width: 40,
                height: 40,
                child: const Icon(
                  Icons.send,
                  size: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _selectImage(BuildContext context, String channelId) async {
    ImagePicker()
        .pickImage(
      source: ImageSource.gallery,
    )
        .then((value) {
      if (value != null) {
        context.read<UploadImageCubit>().uploadImage(channelId, value);
      }
    });
  }
}
