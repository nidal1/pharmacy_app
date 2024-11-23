import 'package:flutter/material.dart';
import 'package:pharmacy_app/commons/product_card.dart';
import 'package:pharmacy_app/commons/text_label_medium.dart';
import 'package:pharmacy_app/features/pharmacy/component/pharmacy_card_info.dart';

class PharmacyScreen extends StatelessWidget {
  const PharmacyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23.0),
      child: ListView(
        children: [
          const PharmacyCardInfo(),
          const SizedBox(
            height: 19,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ButtonOutlined(
                icon: const Icon(
                  Icons.reply,
                  textDirection: TextDirection.rtl,
                  size: 20,
                ),
                text: "Directions",
                onPressed: () {},
              ),
              ButtonOutlined(
                icon: const Icon(
                  Icons.chat_bubble_outline_rounded,
                  size: 17,
                ),
                text: "Chat",
                onPressed: () {},
              ),
              ButtonOutlined(
                icon: const Icon(
                  Icons.phone_in_talk_rounded,
                  size: 17,
                ),
                text: "Call",
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductCard(
                    title: "Covid-19",
                    size: Size.md,
                  ),
                  ProductCard(
                    title: "Blood pressure",
                    size: Size.md,
                  ),
                  ProductCard(
                    title: "Pain killers",
                    size: Size.md,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductCard(
                    title: "Stomach",
                    size: Size.md,
                  ),
                  ProductCard(
                    title: "Epiapcy",
                    size: Size.md,
                  ),
                  ProductCard(
                    title: "Pancreatics",
                    size: Size.md,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductCard(
                    title: "Nuero pill",
                    size: Size.md,
                  ),
                  ProductCard(
                    title: "Immune System",
                    size: Size.md,
                  ),
                  ProductCard(
                    title: "Other",
                    size: Size.md,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ButtonOutlined extends StatelessWidget {
  void Function()? onPressed;
  final Icon icon;
  final String text;

  ButtonOutlined({
    super.key,
    required this.icon,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: onPressed,
        child: Row(
          children: [
            icon,
            const SizedBox(
              width: 5,
            ),
            TextLabelMedium(text: text)
          ],
        ));
  }
}
