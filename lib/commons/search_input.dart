import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  SearchInput({
    super.key,
    required this.showButton,
    this.actionButtonText = "Action",
  });

  final bool showButton;
  final String? actionButtonText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomSearchInput(
            showButton: showButton,
          ),
          if (showButton) ...[
            const SizedBox(width: 8.0),
            TextButton(
              onPressed: () {
                // Add your button action here
              },
              child: Text(actionButtonText!),
            ),
          ],
        ],
      ),
    );
  }
}

class CustomSearchInput extends StatelessWidget {
  final bool showButton;

  const CustomSearchInput({
    super.key,
    this.showButton = false,
  });
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: showButton ? 250 : 350, // Set the maximum width
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.search_outlined),
              const SizedBox(width: 8.0),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Search...',
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        color: Theme.of(context).colorScheme.onTertiary,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
