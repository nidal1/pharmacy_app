import 'package:flutter/material.dart';
import 'package:pharmacy_app/commons/text_label_medium.dart';

class ProfileSavedItem extends StatelessWidget {
  final Icon icon;
  final String title;

  const ProfileSavedItem({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 57,
          height: 57,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(57),
          ),
          child: icon,
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          width: 57,
          child: TextLabelMedium(
            text: title,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
