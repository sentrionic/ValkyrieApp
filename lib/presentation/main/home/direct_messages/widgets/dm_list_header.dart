import 'package:flutter/material.dart';

class DMListHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 25.0, left: 15.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "Direct Messages",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
