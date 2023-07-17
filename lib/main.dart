import 'package:flutter/material.dart';
import 'package:roompal_ojt/pages/home_page.dart';
import 'package:roompal_ojt/pages/landing_page.dart';
import 'pages/renter/renter_page.dart';
import 'pages/room_details.dart';

void main() => runApp(RoompalOJT());

class RoompalOJT extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Roompal OJT',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      initialRoute: MyHomePage.id,
      //add other screens here
      routes: {
        MyHomePage.id: (BuildContext context) => const MyHomePage(title: 'Roompal OJT'),
        RenterPage.id: (BuildContext context) => const RenterPage(),
        LandingPage.id: (BuildContext context) => const LandingPage(),
        RoomDetails.id: (BuildContext context) => const RoomDetails(),
      },
    );
  }
}
