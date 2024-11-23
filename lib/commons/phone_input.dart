import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final Map<String, String> countryFlags = {
  '+1': '🇺🇸', // United States and Canada
  '+44': '🇬🇧', // United Kingdom
  '+49': '🇩🇪', // Germany
  '+33': '🇫🇷', // France
  '+81': '🇯🇵', // Japan
  '+91': '🇮🇳', // India
  '+86': '🇨🇳', // China
  '+61': '🇦🇺', // Australia
  '+55': '🇧🇷', // Brazil
  '+7': '🇷🇺', // Russia
  '+34': '🇪🇸', // Spain
  '+39': '🇮🇹', // Italy
  '+27': '🇿🇦', // South Africa
  '+234': '🇳🇬', // Nigeria
  '+20': '🇪🇬', // Egypt
  '+82': '🇰🇷', // South Korea
  '+47': '🇳🇴', // Norway
  '+46': '🇸🇪', // Sweden
  '+41': '🇨🇭', // Switzerland
  '+358': '🇫🇮', // Finland
  '+31': '🇳🇱', // Netherlands
  '+32': '🇧🇪', // Belgium
  '+48': '🇵🇱', // Poland
  '+30': '🇬🇷', // Greece
  '+351': '🇵🇹', // Portugal
  '+352': '🇱🇺', // Luxembourg
  '+386': '🇸🇮', // Slovenia
  '+43': '🇦🇹', // Austria
  '+90': '🇹🇷', // Turkey
  '+65': '🇸🇬', // Singapore
};

class PhoneInput extends StatelessWidget {
  const PhoneInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const FlagDropdown(),
          InputDivider(
            height: 36,
            width: 1,
            color: Theme.of(context).colorScheme.onTertiary,
          ),
          const SizedBox(
            width: 15,
          ),
          Input(),
        ],
      ),
    );
  }
}

class InputDivider extends StatelessWidget {
  final double height;
  final double width;
  final Color color;

  const InputDivider({
    super.key,
    required this.height,
    required this.width,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: color,
    );
  }
}

class FlagDropdown extends StatefulWidget {
  const FlagDropdown({Key? key}) : super(key: key);

  @override
  _FlagDropdownState createState() => _FlagDropdownState();
}

class _FlagDropdownState extends State<FlagDropdown> {
  final TextEditingController countriesController = TextEditingController();
  String? selectedCountry = '+1';
  @override
  Widget build(BuildContext context) {
    print(selectedCountry);
    return DropdownMenu<String>(
      width: 80,
      menuHeight: 200,
      initialSelection: countryFlags['+1'],
      hintText: countryFlags['+1'],
      controller: countriesController,
      requestFocusOnTap: true,
      trailingIcon: const Icon(Icons.keyboard_arrow_down),
      selectedTrailingIcon: const Icon(Icons.keyboard_arrow_up),
      onSelected: (String? country) {
        setState(() {
          selectedCountry = country;
        });
      },
      dropdownMenuEntries:
          countryFlags.keys.map<DropdownMenuEntry<String>>((String country) {
        return DropdownMenuEntry<String>(
          value: country,
          label: countryFlags[country]!,
          // enabled: color.label != 'Grey',
        );
      }).toList(),
    );
  }
}

class Input extends StatelessWidget {
  Input({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // width: 250,
      child: TextField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          hintText: 'Enter phone number',
          hintStyle: TextStyle(color: Theme.of(context).colorScheme.onTertiary),
        ),
      ),
    );
  }
}
