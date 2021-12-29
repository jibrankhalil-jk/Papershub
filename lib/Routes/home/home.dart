import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:papershub/Routes/home/quizsection.dart';
import 'package:papershub/Routes/home/settings.dart';

import '../../constants.dart';
import 'homedashboard.dart';
import 'notifications.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

constants finalconst = constants();
var constant = constants();

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    final PageController _pageController = PageController();

    void _onTappedBar(int value) {
      setState(() {
        _selectedIndex = value;
      });
      _pageController.jumpToPage(value);
    }

    ;

    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        height: 55,
        color: finalconst.blue,
        items: <Widget>[
          Icon(
            Icons.home_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.grid_view,
            color: Colors.white,
          ),
          Icon(
            Icons.notifications_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.settings,
            color: Colors.white,
          ),
        ],
        onTap: _onTappedBar,
      ),
      body: SafeArea(
        child: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          children: <Widget>[
            Homedashboard(),
            Quizsection(),
            Notificatiosn(),
            Settings(),
          ],
        ),
      ),
    );
  }
}
