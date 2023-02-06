import 'package:flutter/material.dart';
import 'package:quizz_app/featrures/user/screens/Home.dart';
import 'package:quizz_app/featrures/user/screens/Leaderboard.dart';
import 'package:quizz_app/featrures/user/screens/Profile.dart';
import 'package:quizz_app/featrures/user/screens/Search.dart';

class TabItem {
  String name;
  IconData icon;

  TabItem({required this.icon, required this.name});
}

class BottomTabs extends StatefulWidget {
  const BottomTabs({super.key});

  @override
  State<BottomTabs> createState() => BottomTabsState();
}

class BottomTabsState extends State<BottomTabs> {
  int _selectedIndex = 0;

  final screenItems = [
    TabItem(icon: Icons.home, name: 'Home'),
    TabItem(icon: Icons.search, name: 'Search'),
    TabItem(icon: Icons.leaderboard, name: 'Leaderboard'),
    TabItem(icon: Icons.person, name: 'Profile')
  ];

  Map<int, GlobalKey<NavigatorState>> navigatorKeys = {
    0: GlobalKey<NavigatorState>(),
    1: GlobalKey<NavigatorState>(),
    2: GlobalKey<NavigatorState>(),
    3: GlobalKey<NavigatorState>()
  };
  final List<Widget> _widgetOptions = <Widget>[
    Home(),
    Search(),
    Leaderboard(),
    Profile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Future<bool> _onWillPop() async {
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildNavigator(),
      bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20)),
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: true,
              showUnselectedLabels: false,
              items: screenItems
                  .map((item) => BottomNavigationBarItem(
                      icon: Icon(item.icon), label: item.name))
                  .toList(),
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.black.withOpacity(0.2),
              selectedFontSize: 10,
              onTap: _onItemTapped,
            ),
          )),
    );
  }

  buildNavigator() {
    return WillPopScope(
        onWillPop: _onWillPop,
        child: Navigator(
          key: navigatorKeys[_selectedIndex],
          onGenerateRoute: (RouteSettings settings) {
            return MaterialPageRoute(
                builder: (_) => _widgetOptions.elementAt(_selectedIndex));
          },
        ));
  }
}
