import 'package:asap_drivers_app/tab_screens/earnings_tab.dart';
import 'package:asap_drivers_app/tab_screens/home_tab.dart';
import 'package:asap_drivers_app/tab_screens/profile_tab.dart';
import 'package:asap_drivers_app/tab_screens/ratings_tab.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  int selectedIndex = 0;

  onItemClicked(int index) {
    setState(() {
      selectedIndex = index;
      tabController!.index = selectedIndex;
    });
  }

  @override
  void initState() {
    super.initState();

    tabController = TabController(
      length: 4,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Main Screen!!',
        ),
      ),
      body: TabBarView(
        controller: tabController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomeTab(),
          EarningsTab(),
          RatingsTab(),
          ProfileTab(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.currency_rupee,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
          ),
        ],
      ),
    );
  }
}
