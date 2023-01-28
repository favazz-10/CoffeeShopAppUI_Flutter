import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      height: 50,
      animationDuration: Duration(milliseconds: 400),
      backgroundColor: Color(0xff141921),
      buttonBackgroundColor: Color(0xff141921),
      index: 1,
      color: Color(0xffd17842),
      items: [
        Icon(
          Icons.search,
          color: Colors.white,
        ),
        Icon(
          Icons.home,
          color: Colors.white,
        ),
        Icon(
          Icons.settings,
          color: Colors.white,
        )
      ],
    );
  }

}