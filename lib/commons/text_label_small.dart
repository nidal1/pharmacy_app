import 'package:flutter/material.dart';

class TextLabelSmall extends StatelessWidget {
  final String text;
  final TextStyle? preferredStyle;
  final TextAlign? textAlign;
  const TextLabelSmall(
      {super.key, required this.text, this.preferredStyle, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.labelSmall?.merge(preferredStyle),
      textAlign: textAlign,
    );
  }
}
