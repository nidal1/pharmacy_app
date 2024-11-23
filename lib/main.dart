import 'package:flutter/material.dart';
import 'package:pharmacy_app/features/RouterHandler/router_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  bool isFirst = await getIsFirst();
  runApp(const Main());
}

Future<bool> getIsFirst() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getBool('isFirst') ?? true;
}

Future<void> setIsFirst(bool value) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool('isFirst', value);
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const RouterHandler();
  }
}
