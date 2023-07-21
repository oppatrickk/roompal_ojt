import 'package:flutter/material.dart';
import 'package:roompal_ojt/pages/booking/booking.dart';
import 'package:roompal_ojt/pages/booking/booking_summary.dart';
import 'package:roompal_ojt/pages/booking/contact_details.dart';
import 'package:roompal_ojt/pages/booking/payment_fail.dart';
import 'package:roompal_ojt/pages/booking/payment_success.dart';
import 'package:roompal_ojt/pages/home_page.dart';
import 'package:roompal_ojt/pages/landing_page.dart';
import 'package:roompal_ojt/pages/property_owner/contact_overview.dart';
import 'package:roompal_ojt/pages/property_owner/detail_page.dart';
import 'package:roompal_ojt/pages/property_owner/listing_owner_tableview.dart';
import 'package:roompal_ojt/pages/property_owner/listing_ownersView.dart';
import 'package:roompal_ojt/pages/property_owner/listing_rentersView.dart';
import 'package:roompal_ojt/pages/property_owner/location_page.dart';
import 'package:roompal_ojt/pages/property_owner/overview_page.dart';
import 'package:roompal_ojt/pages/property_owner/photo_page.dart';
import 'package:roompal_ojt/pages/property_owner/price_page.dart';
import 'package:roompal_ojt/pages/property_owner/reviews_page.dart';
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
        ContactOverview.id: (BuildContext context) => const ContactOverview(),
        OverviewPage.id: (BuildContext context) => const OverviewPage(),
        LocationPage.id: (BuildContext context) => LocationPage(),
        PhotoPage.id: (BuildContext context) => const PhotoPage(),
        DetailPage.id: (BuildContext context) => const DetailPage(),
        PricePage.id: (BuildContext context) => const PricePage(),
        ListingOwner.id: (BuildContext context) => const ListingOwner(),
        ListingOwnerTV.id: (BuildContext context) => const ListingOwnerTV(),
        ListingRenter.id: (BuildContext context) => const ListingRenter(),
        OwnerReviewPage.id: (BuildContext context) => const OwnerReviewPage(),
      },
    );
  }
}
