import 'package:flutter/material.dart';

class FormWrapper extends StatelessWidget {
  final List<Widget> children;

  const FormWrapper({super.key, required this.children});

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
