import 'package:flutter/material.dart';
import 'package:pharmacy_app/commons/text_body_medium.dart';

class ButtonFilled extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const ButtonFilled({
    super.key,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Theme.of(context).colorScheme.primary)),
      child: TextBodyMedium(
        text: text,
        preferredStyle: const TextStyle(color: Colors.white),
      ),
    );
  }
}
