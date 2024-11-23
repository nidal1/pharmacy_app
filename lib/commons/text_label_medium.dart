import 'package:flutter/material.dart';

class TextLabelMedium extends StatelessWidget {
  final String text;
  final TextStyle? preferredStyle;
  final TextAlign? textAlign;
  const TextLabelMedium(
      {super.key, required this.text, this.preferredStyle, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.labelMedium?.merge(preferredStyle),
      textAlign: textAlign,
    );
  }
}
