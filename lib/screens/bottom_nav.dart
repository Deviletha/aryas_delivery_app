import 'package:aryas_delivery_app/screens/pending.dart';
import 'package:aryas_delivery_app/screens/summary.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'completed.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectindex = 0;

  List body = <Widget>[
    const Pending(),
    Completed(),
    Summary(),
  ];

  void onitemtapped(int index) {
    setState(() {
      selectindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: FloatingNavbar(
        onTap: onitemtapped,
        currentIndex: selectindex,
        selectedBackgroundColor: Colors.white,
        iconSize: 18,
        fontSize: 15,
        backgroundColor: Colors.green,
        elevation: 0,
        items: [
          FloatingNavbarItem(title: "Pending", icon: Iconsax.clock),
          FloatingNavbarItem(title: "Completed", icon: Iconsax.tick_circle),
          FloatingNavbarItem(title: "Summary", icon: Iconsax.more_circle),
        ],
      ),
      body: body.elementAt(selectindex),
    );
  }
}
