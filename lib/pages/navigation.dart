import 'package:find_flames_ui/pages/home.dart';
import 'package:find_flames_ui/pages/searchNet.dart';
import 'package:flutter/material.dart';
import 'package:find_flames_ui/pages/calendar.dart';
import 'package:find_flames_ui/pages/message.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {

  List pages = const [
    Message(),
    SearchNet(),
    Calendar(),
    HomePage()
  ];

  int currentIndex = 3;
  void onTap (int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: pages[currentIndex],
      backgroundColor: Colors.transparent,
      bottomNavigationBar: _bottomNaviBar(),
    );
  }

  _bottomNaviBar(){
    return BottomNavigationBar(
      unselectedFontSize: 0,
      selectedFontSize: 0,
      onTap: onTap,
      currentIndex: currentIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,
      fixedColor: const Color(0xFFFFFFFF),
      items: [
        BottomNavigationBarItem(label: 'Home', icon: SvgPicture.asset('assets/naviBar/Home.svg')),
        BottomNavigationBarItem(label: 'Search', icon: SvgPicture.asset("assets/naviBar/globalsearch.svg")),
        BottomNavigationBarItem(label: 'Calendar', icon: SvgPicture.asset("assets/naviBar/calendaredit.svg")),
        BottomNavigationBarItem(label: 'Messages', icon: SvgPicture.asset("assets/naviBar/messages3.svg")),
      ],
    );
  }
}
