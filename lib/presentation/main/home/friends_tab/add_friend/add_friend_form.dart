import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/friends/add_friend/add_friend_cubit.dart';
import 'package:valkyrie_app/presentation/common/utils/flushbar_creator.dart';
import 'package:valkyrie_app/presentation/common/utils/get_current_user.dart';
import 'package:valkyrie_app/presentation/common/widgets/form_wrapper.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';

enum _PopupActions { copy }

class AddFriendForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final current = getCurrentUser();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Friend"),
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              if (value == _PopupActions.copy) {
                _copyToClipboard(context, current.id);
              }
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: _PopupActions.copy,
                child: Text("Copy your UID"),
              ),
            ],
          )
        ],
      ),
      body: Container(
        height: double.infinity,
        color: ThemeColors.appBackground,
        child: BlocConsumer<AddFriendCubit, AddFriendState>(
          listener: (context, state) {
            state.failureOrSuccessOption.fold(
              () {},
              (either) => either.fold(
                (failure) {
                  showError(
                    message: failure.maybeMap(
                      badRequest: (failure) => failure.message,
                      orElse: () => "Something went wrong. Try again later.",
                    ),
                  ).show(context);
                },
                (_) {
                  showSuccess(
                    message: "Successfully sent a friend request.",
                  ).show(context);
                },
              ),
            );
          },
          builder: (context, state) {
            return Form(
              autovalidateMode: state.showErrorMessages
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              child: FormWrapper(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Icon(
                    Icons.person_add_alt_1,
                    size: 100,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Add your friend on Valkyrie",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "You will need their user id.",
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'UID',
                          ),
                          textInputAction: TextInputAction.done,
                          style: const TextStyle(fontSize: 18),
                          autocorrect: false,
                          onChanged: (value) =>
                              context.read<AddFriendCubit>().idChanged(value),
                          validator: (_) => context
                              .read<AddFriendCubit>()
                              .state
                              .uid
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  invalidUID: (_) => 'Must be a valid user ID',
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () => _copyToClipboard(context, current.id),
                    child: Text(
                      "Your id is ${current.id}",
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 45,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: ThemeColors.themeBlue,
                            ),
                            onPressed: () {
                              FocusScope.of(context).unfocus();
                              context
                                  .read<AddFriendCubit>()
                                  .sendFriendRequest();
                            },
                            child: const Text(
                              "Send Friend Request",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  void _copyToClipboard(BuildContext context, String id) {
    Clipboard.setData(
      ClipboardData(text: id),
    );
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          "Copied the UID to your clipboard",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: ThemeColors.inputBackground,
        duration: Duration(seconds: 3),
      ),
    );
  }
}
