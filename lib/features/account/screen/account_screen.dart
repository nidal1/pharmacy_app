import 'package:flutter/material.dart';
import 'package:pharmacy_app/commons/fonts/my_flutter_app_icons.dart';
import 'package:pharmacy_app/commons/text_title_large.dart';
import 'package:pharmacy_app/features/account/components/account_profile_details.dart';
import 'package:pharmacy_app/features/account/components/profile_saved_item.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        const AccountProfileDetails(),
        const SizedBox(
          height: 30,
        ),
        const Row(
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
        const SizedBox(
          height: 30,
        ),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: const Column(
            children: [
              AccountLinks(
                iconData: CustomFonts.calendar,
                title: 'Appointments',
              ),
              SizedBox(
                height: 40,
              ),
              AccountLinks(
                iconData: CustomFonts.pill,
                title: 'Pills Reminder',
              ),
              SizedBox(
                height: 40,
              ),
              AccountLinks(
                iconData: CustomFonts.dolar,
                title: 'My Doctors',
              ),
              SizedBox(
                height: 40,
              ),
              AccountLinks(
                iconData: CustomFonts.doctor_outlined,
                title: 'Insurance Plan',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AccountLinks extends StatelessWidget {
  final IconData iconData;
  final String title;

  const AccountLinks({super.key, required this.iconData, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            iconData,
            color: Theme.of(context).colorScheme.primary,
          ),
          TextTileLarge(text: title),
          const Icon(Icons.keyboard_arrow_right)
        ],
      ),
    );
  }
}
