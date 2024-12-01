import 'package:flutter/material.dart';
import 'package:pharmacy_app/commons/search_input.dart';
import 'package:pharmacy_app/commons/text_body_medium.dart';
import 'package:pharmacy_app/commons/text_body_small.dart';
import 'package:pharmacy_app/commons/text_title_large.dart';
import 'package:pharmacy_app/constants/image_strings.dart';

class SearchResultsScreen extends StatelessWidget {
  const SearchResultsScreen({super.key});
  final bool showButton = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 382,
        child: Column(
          children: [
            SearchInput(showButton: showButton),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16.0),
                children: const [
                  Column(
                    children: [
                      SearchResultCard(
                        title: 'Sita Pharmacy',
                        kilometers: '45',
                        address: 'd/9 address, kopal nagar Karachi',
                      ),
                      SearchResultCard(
                        title: 'GoSita Pharmacy',
                        kilometers: '5',
                        address: 'd/9 address, kopal nagar Karachi',
                      ),
                      SearchResultCard(
                        title: 'Laia Pharmacy',
                        kilometers: '12',
                        address: 'd/9 address, kopal nagar Karachi',
                      ),
                      SearchResultCard(
                        title: 'Sita Pharmacy',
                        kilometers: '45',
                        address: 'd/9 address, kopal nagar Karachi',
                      ),
                      SearchResultCard(
                        title: 'GoSita Pharmacy',
                        kilometers: '5',
                        address: 'd/9 address, kopal nagar Karachi',
                      ),
                      SearchResultCard(
                        title: 'Laia Pharmacy',
                        kilometers: '12',
                        address: 'd/9 address, kopal nagar Karachi',
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchResultCard extends StatelessWidget {
  final String title;
  final String address;
  final String kilometers;

  const SearchResultCard({
    super.key,
    required this.title,
    required this.address,
    required this.kilometers,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.only(bottom: 22),
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(horizontal_card_image),
          ),
          const SizedBox(
            width: 10,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 160,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextTileLarge(text: title),
                const SizedBox(
                  height: 8,
                ),
                TextBodyMedium(
                  text: address,
                  preferredStyle: TextStyle(
                    color: Theme.of(context).colorScheme.onTertiary,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_pin,
                      size: 14,
                      color: Theme.of(context).colorScheme.onTertiary,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    TextBodySmall(
                      text: '$kilometers KM away',
                      preferredStyle: TextStyle(
                        color: Theme.of(context).colorScheme.onTertiary,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          ElevatedButton(onPressed: () {}, child: const Text("Open"))
        ],
      ),
    );
  }
}
