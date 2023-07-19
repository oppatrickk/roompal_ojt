import 'package:flutter/material.dart';
import 'package:roompal_ojt/pages/confirmation.dart';
import 'package:roompal_ojt/pages/home_page.dart';
import 'package:roompal_ojt/pages/landing_page.dart';
import 'package:roompal_ojt/pages/contact_details.dart';
import 'package:roompal_ojt/pages/payment_details.dart';
import 'package:roompal_ojt/pages/renter/renter_page(2).dart';
import 'pages/renter/renter_page(1).dart';
import 'pages/renter/renter_page(0).dart';
import 'pages/room_details.dart';

void main() => runApp(const RoompalOJT());

class RoompalOJT extends StatelessWidget {
  const RoompalOJT({super.key});

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
        RenterPage1.id: (BuildContext context) => const RenterPage1(),
        BookedDetails.id: (BuildContext context) => const BookedDetails(),
        ContactDetails.id: (BuildContext context) => const ContactDetails(),
        ConfirmationPage.id: (BuildContext context) => const ConfirmationPage(),
        PaymentDetails.id: (BuildContext context) => const PaymentDetails(),
      },
    );
  }
}
