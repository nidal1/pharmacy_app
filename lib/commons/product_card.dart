import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy_app/commons/text_body_medium.dart';
import 'package:pharmacy_app/constants/image_strings.dart';
import 'package:pharmacy_app/utils/functions.dart';

enum Size { sm, md }

class ProductCard extends StatelessWidget {
  final String title;
  Size? size;

  ProductCard({super.key, required this.title, this.size = Size.sm});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            size == Size.sm ? product_card_image : product_card_image_secondary,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 74,
            ),
            child: TextBodyMedium(
              text: truncateText(title, 2),
              textAlign: TextAlign.center,
            )),
      ],
    );
  }
}
