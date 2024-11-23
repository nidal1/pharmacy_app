import 'package:flutter/material.dart';
import 'package:pharmacy_app/commons/product_card.dart';
import 'package:pharmacy_app/commons/search_input.dart';
import 'package:pharmacy_app/features/home/component/horizontal_card.dart';
import 'package:pharmacy_app/features/home/component/section_title.dart';
import 'package:pharmacy_app/features/home/component/vertical_doctor_card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final bool showButton = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 382,
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            Column(
              children: [
                SearchInput(showButton: showButton),
                const SizedBox(height: 20), // Just for spacing in the list

                const HorizontalCard(
                  title: "Pharmacy",
                  subtitle: "Get verified medicines.",
                ),
                const HorizontalCard(
                  title: "Pharmacy",
                  subtitle: "Get verified medicines.",
                ),
                const HorizontalCard(
                  title: "Pharmacy",
                  subtitle: "Get verified medicines.",
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const SectionTitle(
              title: 'Doctors nearby you',
            ),
            SizedBox(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal, shrinkWrap: true,
                itemCount: 3, // Number of items
                itemBuilder: (context, index) {
                  return const VerticalDoctorCard();
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SectionTitle(
              title: 'Recommended products',
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProductCard(
                  title: 'Covid-19',
                ),
                ProductCard(
                  title: 'Blood pressure',
                ),
                ProductCard(
                  title: 'Pain killers',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
