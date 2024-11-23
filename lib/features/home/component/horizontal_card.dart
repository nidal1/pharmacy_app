import 'package:flutter/material.dart';
import 'package:pharmacy_app/commons/text_body_medium.dart';
import 'package:pharmacy_app/commons/text_title_medium.dart';
import 'package:pharmacy_app/constants/image_strings.dart';

class HorizontalCard extends StatelessWidget {
  final String title;
  final String subtitle;

  const HorizontalCard(
      {super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(8),
      width: 350,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                horizontal_card_image,
              )),
          const SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextTitleMedium(text: title),
              const SizedBox(
                height: 5,
              ),
              TextBodyMedium(
                text: subtitle,
                preferredStyle:
                    TextStyle(color: Theme.of(context).colorScheme.onTertiary),
              ),
            ],
          ),
          const SizedBox(
            width: 12,
          ),
          ElevatedButton(onPressed: () {}, child: const Text("Get"))
        ],
      ),
    );
  }
}
