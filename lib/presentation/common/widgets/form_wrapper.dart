import 'package:flutter/material.dart';

class FormWrapper extends StatelessWidget {
  final List<Widget> children;

  const FormWrapper({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Center(
          child: Column(
            children: children,
          ),
        ),
      ),
    );
  }
}
