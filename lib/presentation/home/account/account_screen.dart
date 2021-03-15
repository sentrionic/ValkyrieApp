import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/account/get_account/account_cubit.dart';
import 'package:valkyrie_app/application/account/update_account/update_account_bloc.dart';
import 'package:valkyrie_app/application/auth/auth_status/auth_status_bloc.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/common/flushbar_creator.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';

class AccountScreen extends StatelessWidget {
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<UpdateAccountBloc>(),
      child: BlocListener<UpdateAccountBloc, UpdateAccountState>(
        listener: (context, state) => {
          state.saveFailureOrSuccessOption.fold(
            () => {},
            (either) => either.fold(
              (failure) {
                FlushBarCreator.showError(
                  message: failure.maybeMap(
                    badRequest: (value) => value.message,
                    orElse: () => "Server Error. Try again later.",
                  ),
                ).show(context);
              },
              (account) {
                FlushBarCreator.showSuccess(
                        message: "Successfully updated your account")
                    .show(context);
                context.read<AccountCubit>().updateAccount(account);
              },
            ),
          ),
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text("User Settings"),
            automaticallyImplyLeading: false,
            actions: [
              IconButton(
                icon: const Icon(Icons.exit_to_app),
                onPressed: () {
                  context
                      .read<AuthStatusBloc>()
                      .add(const AuthStatusEvent.signedOut());
                },
              ),
            ],
          ),
          body: BlocBuilder<AccountCubit, AccountState>(
            builder: (context, state) {
              return state.maybeWhen(
                loadSuccess: (account) => Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Stack(
                                children: [
                                  CircleAvatar(
                                    radius: 45,
                                    foregroundImage:
                                        NetworkImage(account.image),
                                  ),
                                  Positioned(
                                    right: 0,
                                    child: Container(
                                      padding: const EdgeInsets.all(1),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      constraints: const BoxConstraints(
                                        minWidth: 30,
                                        minHeight: 30,
                                      ),
                                      child: const Icon(
                                        Icons.add_photo_alternate_outlined,
                                        color: Colors.black87,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                account.username.getOrCrash(),
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        color: const Color(0xff363940),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: SingleChildScrollView(
                            child: Form(
                              key: _key,
                              autovalidateMode: context
                                      .watch<UpdateAccountBloc>()
                                      .state
                                      .showErrorMessages
                                  ? AutovalidateMode.always
                                  : AutovalidateMode.disabled,
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    "ACCOUNT INFORMATION",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white38,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  TextFormField(
                                    decoration: const InputDecoration(
                                      labelText: 'Username',
                                      border: InputBorder.none,
                                      fillColor: ThemeColors.inputBackground,
                                      labelStyle: TextStyle(
                                        color: Colors.white70,
                                      ),
                                      filled: true,
                                      errorStyle: TextStyle(
                                          color: ThemeColors.errorRed),
                                    ),
                                    initialValue: account.username.getOrCrash(),
                                    onChanged: (value) => context
                                        .read<UpdateAccountBloc>()
                                        .add(UpdateAccountEvent.usernameChanged(
                                            value)),
                                    onSaved: (value) => context
                                        .read<UpdateAccountBloc>()
                                        .add(UpdateAccountEvent.usernameChanged(
                                            value!)),
                                    validator: (_) => context
                                        .read<UpdateAccountBloc>()
                                        .state
                                        .username
                                        .value
                                        .fold(
                                            (f) => f.maybeMap(
                                                  invalidUsername: (_) =>
                                                      'Username must be at least 3 charactesr long',
                                                  orElse: () => null,
                                                ),
                                            (r) => null),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  TextFormField(
                                    decoration: const InputDecoration(
                                      labelText: 'Email',
                                      border: InputBorder.none,
                                      fillColor: ThemeColors.inputBackground,
                                      labelStyle: TextStyle(
                                        color: Colors.white70,
                                      ),
                                      filled: true,
                                      errorStyle: TextStyle(
                                          color: ThemeColors.errorRed),
                                    ),
                                    initialValue: account.email.getOrCrash(),
                                    onChanged: (value) =>
                                        context.read<UpdateAccountBloc>().add(
                                              UpdateAccountEvent.emailChanged(
                                                  value),
                                            ),
                                    onSaved: (value) =>
                                        context.read<UpdateAccountBloc>().add(
                                              UpdateAccountEvent.emailChanged(
                                                  value!),
                                            ),
                                    validator: (_) => context
                                        .read<UpdateAccountBloc>()
                                        .state
                                        .emailAddress
                                        .value
                                        .fold(
                                            (f) => f.maybeMap(
                                                  invalidEmail: (_) =>
                                                      'Must be a valid E-Mail address',
                                                  orElse: () => null,
                                                ),
                                            (r) => null),
                                  ),
                                  const SizedBox(
                                    height: 35,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            primary: ThemeColors.themeBlue,
                                          ),
                                          onPressed: () {
                                            _key.currentState?.save();
                                            context
                                                .read<UpdateAccountBloc>()
                                                .add(
                                                  const UpdateAccountEvent
                                                      .saved(),
                                                );
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 15),
                                            child: const Text(
                                              "Save Changes",
                                              style: TextStyle(
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: OutlinedButton(
                                          onPressed: () {
                                            Navigator.of(context)
                                                .pushNamed('/change-password');
                                          },
                                          child: const Text(
                                            "Change Password",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                orElse: () => const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
