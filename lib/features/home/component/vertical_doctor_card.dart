import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pharmacy_app/commons/text_body_small.dart';
import 'package:pharmacy_app/commons/text_label_small.dart';
import 'package:pharmacy_app/constants/image_strings.dart';

class VerticalDoctorCard extends StatelessWidget {
  const VerticalDoctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.only(top: 25),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: 12,
              right: 12,
              bottom: 12,
              top: 33,
            ),
            width: 162,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextBodySmall(text: "Dr. Steave James"),
                const SizedBox(
                  height: 5,
                ),
                TextLabelSmall(
                    preferredStyle: TextStyle(
                      color: Theme.of(context).colorScheme.onTertiary,
                    ),
                    text:
                        "Diabetologist,General Physician, Endocrinologist M.B.B.S, MRCP (UK), MRCP (London)"),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(
                          size: 19,
                          Icons.star,
                          color: Colors.yellow[400],
                        ),
                        Icon(
                          size: 19,
                          Icons.star,
                          color: Colors.yellow[400],
                        ),
                        Icon(
                          size: 19,
                          Icons.star,
                          color: Colors.yellow[400],
                        ),
                        Icon(
                          size: 19,
                          Icons.star,
                          color: Colors.yellow[400],
                        ),
                        Icon(
                          size: 19,
                          Icons.star_border,
                          color: Colors.grey[400],
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    TextBodySmall(
                      text: "(12)",
                      preferredStyle: TextStyle(
                        color: Theme.of(context).colorScheme.onTertiary,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: -25,
            left: 56,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Image.asset(vertical_doctor_card_image)),
          ),
        ],
      ),
    );
  }
}
