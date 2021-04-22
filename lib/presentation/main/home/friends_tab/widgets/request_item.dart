import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/friends/accept_request/accept_request_cubit.dart';
import 'package:valkyrie_app/application/friends/decline_request/decline_request_cubit.dart';
import 'package:valkyrie_app/domain/friends/friend_request.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';

class RequestItem extends StatelessWidget {
  final FriendRequest request;

  const RequestItem({
    Key? key,
    required this.request,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
          request.image,
        ),
        radius: 18,
      ),
      title: Text(
        request.username,
        style: const TextStyle(
          fontSize: 16,
        ),
      ),
      subtitle: Text(
        "${request.type == RequestType.incoming ? "Incoming" : "Outgoing"} Friend Request",
        style: const TextStyle(
          color: Colors.white38,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (request.type == RequestType.incoming) ...[
            GestureDetector(
              onTap: () => context
                  .read<AcceptRequestCubit>()
                  .acceptFriendRequest(request.id),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.black45,
                ),
                width: 35,
                height: 35,
                child: const Icon(
                  Icons.check,
                  color: ThemeColors.brandGreen,
                  size: 20,
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            )
          ],
          GestureDetector(
            onTap: () =>
                context.read<DeclineRequestCubit>().declineRequest(request.id),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.black45,
              ),
              width: 35,
              height: 35,
              child: const Icon(
                Icons.close,
                color: ThemeColors.brandRed,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
