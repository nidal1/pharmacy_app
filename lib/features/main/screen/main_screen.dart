import 'package:flutter/material.dart';
import 'package:pharmacy_app/commons/main_app_bar.dart';
import 'package:pharmacy_app/features/account/screen/account_screen.dart';
import 'package:pharmacy_app/features/home/component/home_drawer.dart';
import 'package:pharmacy_app/features/home/component/bottom_navigation.dart';
import 'package:pharmacy_app/features/home/screen/home_screen.dart';
import 'package:pharmacy_app/features/search/screen/search_screen.dart';
import 'package:pharmacy_app/features/search_results/screen/search_results_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 3;

  void updateSelectedIndex(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List<Widget> pages = [
    HomeScreen(),
    Text("page 2"),
    Text("page 3"),
    const AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(),
      drawer: const HomeDrawer(),
      // body: pages[selectedIndex],
      // body: const SearchScreen(),
      body: const SearchResultsScreen(),
      bottomNavigationBar: BottomNavigation(
        selectedIndex: selectedIndex,
        updateSelectedIndex: updateSelectedIndex,
      ),
    );
  }
}
