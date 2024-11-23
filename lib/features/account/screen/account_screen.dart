import 'package:flutter/material.dart';
import 'package:pharmacy_app/commons/accordion.dart';
import 'package:pharmacy_app/commons/fonts/my_flutter_app_icons.dart';
import 'package:pharmacy_app/features/account/components/account_profile_details.dart';
import 'package:pharmacy_app/features/account/components/profile_saved_item.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: const [
        AccountProfileDetails(),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ProfileSavedItem(
              icon: Icon(Icons.medication_outlined),
              title: "Saved Doctors",
            ),
            ProfileSavedItem(
              icon: Icon(Icons.assignment_add),
              title: "Saved Articles",
            ),
            ProfileSavedItem(
              icon: Icon(Icons.favorite_outline_outlined),
              title: "Health Diary",
            ),
          ],
        ),
        Column(
          children: [
            Row(
              children: [Icon(Icons.calendar_month_outlined)],
            ),
            Row(
              children: [Icon(Icons.perm_identity_outlined)],
            ),
            Row(
              children: [Icon(Icons.animation_outlined)],
            ),
            Row(
              children: [Icon(CustomFonts.doctor_outlined)],
            ),
          ],
        ),
      ],
    );
  }
}
