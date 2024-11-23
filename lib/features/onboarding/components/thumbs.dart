import 'package:flutter/material.dart';

class Thumbs extends StatelessWidget {
  final int numberOfDots;
  final int activeDotIndex;
  const Thumbs({
    super.key,
    required this.numberOfDots,
    required this.activeDotIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List<Dot>.generate(
          numberOfDots,
          (index) => Dot(
                isActive: activeDotIndex == index,
              )),
    );
  }
}

class Dot extends StatelessWidget {
  final bool isActive;
  const Dot({
    super.key,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      width: 7,
      height: 7,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: !isActive
              ? Theme.of(context).colorScheme.onTertiary
              : Theme.of(context).colorScheme.primary),
    );
  }
}
