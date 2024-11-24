import 'package:flutter/material.dart';
import 'package:pharmacy_app/commons/text_label_medium.dart';
import 'package:pharmacy_app/commons/text_title_large.dart';
import 'package:pharmacy_app/constants/image_strings.dart';

class AccountProfileDetails extends StatelessWidget {
  const AccountProfileDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(88),
            child: Image.asset(account_profile_image)),
        const SizedBox(
          height: 15,
        ),
        Column(
          children: [
            const TextTileLarge(text: "Amber Hania"),
            const SizedBox(
              height: 3,
            ),
            TextLabelMedium(
              text: "+1332 288 69 208",
              preferredStyle:
                  TextStyle(color: Theme.of(context).colorScheme.onTertiary),
            )
          ],
        ),
      ],
    );
  }
}
