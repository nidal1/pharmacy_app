import 'package:flutter/material.dart';

class TextHeadingLarge extends StatelessWidget {
  final String text;
  const TextHeadingLarge({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineLarge,
    );
  }
}
