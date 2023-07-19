import 'package:flutter/material.dart';
import 'package:roompal_ojt/pages/booking.dart';
import 'package:roompal_ojt/pages/booking_summary.dart';
import 'package:roompal_ojt/pages/home_page.dart';
import 'package:roompal_ojt/pages/landing_page.dart';
import 'package:roompal_ojt/pages/contact_details.dart';
import 'package:roompal_ojt/pages/payment_fail.dart';
import 'package:roompal_ojt/pages/payment_success.dart';
<<<<<<< HEAD
import 'package:roompal_ojt/pages/property_owner/overview_page.dart';
=======
import 'package:roompal_ojt/pages/property_owner/location_page.dart';
>>>>>>> d87f89a80775226a4794264148cd88927b91e7c9
import 'package:roompal_ojt/pages/renter/renter_page(2).dart';
import 'pages/renter/renter_page(1).dart';
import 'pages/renter/renter_page(0).dart';
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
        RenterPage1.id: (BuildContext context) => const RenterPage1(),
        BookedDetails.id: (BuildContext context) => const BookedDetails(),
        ContactDetails.id: (BuildContext context) => const ContactDetails(),
        Booking.id: (BuildContext context) => const Booking(),
        BookingSummary.id: (BuildContext context) => const BookingSummary(),
        PaymentSuccess.id: (BuildContext context) => const PaymentSuccess(),
        PaymentFail.id: (BuildContext context) => const PaymentFail(),
<<<<<<< HEAD
        OverviewPage.id: (BuildContext context) => const OverviewPage(),
=======
        LocationPage.id: (BuildContext context) => const LocationPage(),
>>>>>>> d87f89a80775226a4794264148cd88927b91e7c9
      },
    );
  }
}
