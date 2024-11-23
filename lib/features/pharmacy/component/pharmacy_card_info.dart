import 'package:flutter/material.dart';
import 'package:pharmacy_app/commons/text_label_medium.dart';
import 'package:pharmacy_app/commons/text_title_medium.dart';
import 'package:pharmacy_app/constants/image_strings.dart';

class PharmacyCardInfo extends StatelessWidget {
  const PharmacyCardInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(horizontal_card_image)),
          const SizedBox(
            width: 23,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextTitleMedium(text: "Sita Pharmacy"),
              const SizedBox(
                height: 7,
              ),
              TextLabelMedium(
                text: "d/9 address, kopal nagar\nKarachi",
                preferredStyle: TextStyle(
                  color: Theme.of(context).colorScheme.onTertiary,
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Theme.of(context).colorScheme.onTertiary,
                    size: 15,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  TextLabelMedium(
                    text: "45 KM away",
                    preferredStyle: TextStyle(
                      color: Theme.of(context).colorScheme.onTertiary,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
