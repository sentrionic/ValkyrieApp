import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateDivider extends StatelessWidget {
  final DateTime date;
  const DateDivider({Key? key, required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 10.0, right: 20.0),
            child: const Divider(),
          ),
        ),
        Text(
          DateFormat('MMMM dd, yyyy').format(date),
          style: const TextStyle(
            color: Colors.white60,
            fontSize: 12,
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 20.0, right: 10.0),
            child: const Divider(),
          ),
        ),
      ],
    );
  }
}
