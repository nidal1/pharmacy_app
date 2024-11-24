import 'package:flutter/material.dart';
import 'package:pharmacy_app/commons/search_input.dart';
import 'package:pharmacy_app/commons/text_body_medium.dart';

class SearchScreen extends StatelessWidget {
  final bool showButton = true;
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          width: 382,
          child: Column(
            children: [
              SearchInput(
                showButton: showButton,
                actionButtonText: 'Cancel',
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView(
                  children: const [
                    Column(
                      children: [
                        SearchItem(
                          name: "Pharmacy Sidi Hssayen",
                        ),
                        SearchItem(
                          name: "Dr. Nidal Tou",
                        ),
                        SearchItem(
                          name: "Aspirin",
                        ),
                        SearchItem(
                          name: "Dr. Khadija Ass",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}

class SearchItem extends StatelessWidget {
  final String name;
  const SearchItem({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 7),
      child: Row(
        children: [
          const Icon(Icons.search),
          const SizedBox(
            width: 5,
          ),
          TextBodyMedium(text: name)
        ],
      ),
    );
  }
}
