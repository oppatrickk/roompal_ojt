import 'package:flutter/material.dart';
import 'package:roompal_ojt/pages/property_owner/listing_ownersView.dart';
import 'package:roompal_ojt/pages/property_owner/overview_page.dart';
import 'package:roompal_ojt/pages/property_owner/reviews_page.dart';
import 'package:roompal_ojt/pages/property_owner/stay_view.dart';
import 'package:roompal_ojt/widgets/sidebar.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});
  static const String id = 'BottomNavigation';

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  // BottomNavigationBar
  int selectedIndex = 0;
  static const List<Widget> widgetOptions = <Widget>[
    OverviewSection(),
    OwnersViewSection(),
    StayViewSection(),
    ReviewsSection(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      endDrawer: const SideBar(),
      body: SingleChildScrollView(
        child: widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_rounded),
            label: 'Create Listing',
            backgroundColor: Color(0xFF1C39BB),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit_note_rounded),
            label: 'Manage Listing',
            backgroundColor: Color(0xFF1C39BB),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_rounded),
            label: 'Stay View',
            backgroundColor: Color(0xFF1C39BB),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grade_outlined),
            label: 'Review',
            backgroundColor: Color(0xFF1C39BB),
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.white,
        onTap: onItemTapped,
      ),
    );
  }
}
