import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/dms/current/current_dm_cubit.dart';
import 'package:valkyrie_app/application/dms/dm_list/dm_list_cubit.dart';
import 'package:valkyrie_app/application/dms/start_dm/start_dm_cubit.dart';
import 'package:valkyrie_app/application/friends/accept_request/accept_request_cubit.dart';
import 'package:valkyrie_app/application/friends/decline_request/decline_request_cubit.dart';
import 'package:valkyrie_app/application/friends/get_friends/get_friends_cubit.dart';
import 'package:valkyrie_app/application/friends/get_requests/get_requests_cubit.dart';
import 'package:valkyrie_app/application/notifications/notifications_cubit.dart';
import 'package:valkyrie_app/application/notifications/request_notifications_cubit.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/common/utils/flushbar_creator.dart';
import 'package:valkyrie_app/presentation/main/home/direct_messages/dm_screen.dart';
import 'package:valkyrie_app/presentation/main/home/friends_tab/friend_layout.dart';

class FriendListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<GetFriendsCubit>()..getFriends(),
        ),
        BlocProvider(
          create: (context) => getIt<GetRequestsCubit>()..getFriendRequests(),
        ),
        BlocProvider(
          create: (context) => getIt<AcceptRequestCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<DeclineRequestCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<StartDMCubit>(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<DeclineRequestCubit, DeclineRequestState>(
            listener: (context, state) {
              state.maybeMap(
                actionFailure: (state) {
                  showError(
                    message: state.friendFailure.map(
                      badRequest: (failure) => failure.message,
                      unexpected: (_) =>
                          "Something went wrong. Try again later.",
                    ),
                  ).show(context);
                },
                actionSuccess: (state) {
                  showSuccess(message: "Canceled request").show(context);
                  context
                      .read<GetRequestsCubit>()
                      .removeRequest(state.requestId);
                  context.read<NotificationsCubit>().decrement();
                  context.read<RequestNotificationsCubit>().decrement();
                },
                orElse: () {},
              );
            },
          ),
          BlocListener<AcceptRequestCubit, AcceptRequestState>(
            listener: (context, state) {
              state.maybeMap(
                actionFailure: (state) {
                  showError(
                    message: state.friendFailure.map(
                      badRequest: (failure) => failure.message,
                      unexpected: (_) =>
                          "Something went wrong. Try again later.",
                    ),
                  ).show(context);
                },
                actionSuccess: (state) {
                  showSuccess(message: "Accepted request").show(context);
                  context
                      .read<GetRequestsCubit>()
                      .removeRequest(state.requestId);
                  context.read<NotificationsCubit>().decrement();
                  context.read<RequestNotificationsCubit>().decrement();
                },
                orElse: () {},
              );
            },
          ),
          BlocListener<StartDMCubit, StartDMState>(
            listener: (context, state) {
              state.maybeMap(
                fetchSuccess: (state) {
                  context.read<DMListCubit>().addNewDM(state.channel);
                  context.read<CurrentDMCubit>().setDMChannel(state.channel.id);
                  Navigator.of(context)
                      .pushReplacementNamed(DMScreen.routeName);
                },
                fetchFailure: (state) {
                  showError(
                    message: state.channelFailure.map(
                      notFound: (_) => "Could not find the member",
                      unexpected: (_) =>
                          "Something went wrong. Try again later.",
                    ),
                  ).show(context);
                },
                orElse: () {},
              );
            },
          ),
        ],
        child: FriendLayout(),
      ),
    );
  }
}
