import 'package:flutter/material.dart';
import 'package:pharmacy_app/commons/text_title_large.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextTileLarge(text: title),
          TextButton(
            onPressed: () {},
            child: const Text("See all"),
          )
        ],
      ),
    );
  }
}
