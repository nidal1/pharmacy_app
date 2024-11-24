import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pharmacy_app/commons/account_profile_details.dart';
import 'package:pharmacy_app/commons/fonts/my_flutter_app_icons.dart';
import 'package:pharmacy_app/commons/text_body_medium.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: Column(
        // Important: Remove any padding from the ListView.
        children: [
          // AccountProfileDetails
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(
              top: 60.0,
              bottom: 30,
            ),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Color(0xffE5E5E5)),
              ),
            ),
            child: const AccountProfileDetails(),
          ),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // DrawerItems

                Expanded(
                  child: ListView(children: const [
                    Column(
                      children: [
                        _DrawerItem(
                          iconData: CustomFonts.pill,
                          title: "Online Pharmacy",
                        ),
                        _DrawerItem(
                          iconData: CustomFonts.home_care,
                          title: "Home Nursing Care",
                        ),
                        _DrawerItem(
                          iconData: CustomFonts.old_man,
                          title: "Elderly Care",
                        ),
                        _DrawerItem(
                          iconData: CustomFonts.laboratory,
                          title: "Laboratory Collection",
                        ),
                      ],
                    ),
                  ]),
                ),

                // BottomItems
                Container(
                  decoration: const BoxDecoration(
                      border:
                          Border(top: BorderSide(color: Color(0xffE5E5E5)))),
                  child: const Column(
                    children: [
                      _DrawerItem(
                        iconData: CustomFonts.pill,
                        title: "Tell your friend",
                      ),
                      _DrawerItem(
                        iconData: CustomFonts.pill,
                        title: "Feedback & Contact us",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _DrawerItem extends StatelessWidget {
  final IconData iconData;
  final String title;

  const _DrawerItem({
    super.key,
    required this.iconData,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        iconData,
        size: 18,
        color: Theme.of(context).colorScheme.primary,
      ),
      title: TextBodyMedium(
        text: title,
      ),
      onTap: () {
        // Update the state of the app.
        // ...
      },
    );
  }
}
