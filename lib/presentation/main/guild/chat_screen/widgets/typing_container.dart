import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/channels/currently_typing/currently_typing_cubit.dart';
import 'package:valkyrie_app/presentation/main/guild/chat_screen/widgets/typing_indicator.dart';

class TypingContainer extends StatelessWidget {
  String _getTypingString(List<String> members) {
    switch (members.length) {
      case 1:
        return members[0];
      case 2:
        return "${members[0]} and ${members[1]}";
      case 3:
        return "${members[0]}, ${members[1]} and ${members[2]}";
      default:
        return "Several people";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      height: 25,
      child: BlocBuilder<CurrentlyTypingCubit, List<String>>(
        buildWhen: (p, c) => p.length != c.length,
        builder: (context, state) => Row(
          children: [
            const SizedBox(
              width: 5,
            ),
            const TypingIndicator(),
            const SizedBox(
              width: 5,
            ),
            Text(
              _getTypingString(state),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Colors.white70,
              ),
            ),
            Text(
              "${state.length == 1 ? ' is' : ' are'} typing...",
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 11,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
