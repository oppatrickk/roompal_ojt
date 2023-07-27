import 'package:flutter/material.dart';
import 'package:roompal_ojt/pages/booking/booking.dart';
import 'package:roompal_ojt/pages/booking/booking_summary.dart';
import 'package:roompal_ojt/pages/booking/contact_details.dart';
import 'package:roompal_ojt/pages/booking/payment_details.dart';
import 'package:roompal_ojt/pages/booking/payment_fail.dart';
import 'package:roompal_ojt/pages/booking/payment_success.dart';
import 'package:roompal_ojt/pages/home_page.dart';
import 'package:roompal_ojt/pages/landing_page.dart';
import 'package:roompal_ojt/pages/property_owner/contact_overview.dart';
import 'package:roompal_ojt/pages/property_owner/detail_page.dart';
import 'package:roompal_ojt/pages/property_owner/listing_ownersView.dart';
import 'package:roompal_ojt/pages/property_owner/location_page.dart';
import 'package:roompal_ojt/pages/property_owner/overview_page.dart';
import 'package:roompal_ojt/pages/property_owner/personal_details_not_verified.dart';
import 'package:roompal_ojt/pages/property_owner/personal_details_verified.dart';
import 'package:roompal_ojt/pages/property_owner/photo_page.dart';
import 'package:roompal_ojt/pages/property_owner/price_page.dart';
import 'package:roompal_ojt/pages/property_owner/reviews_page.dart';
import 'package:roompal_ojt/pages/property_owner/stay_view.dart';
import 'package:roompal_ojt/pages/renter/renter_page(2).dart';
import 'package:roompal_ojt/pages/user_registration/as_Renter.dart';
import 'package:roompal_ojt/pages/user_registration/as_property_owner.dart';
import 'package:roompal_ojt/pages/user_registration/chooserole_page.dart';
import 'package:roompal_ojt/pages/user_registration/forgot_password.dart';
import 'package:roompal_ojt/pages/user_registration/login_page.dart';
import 'package:roompal_ojt/pages/user_registration/reset_password.dart';
import 'package:roompal_ojt/pages/user_registration/verification.dart';
import 'package:roompal_ojt/widgets/pop_up.dart';
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
        RenterPage.id: (BuildContext context) => RenterPage(),
        LandingPage.id: (BuildContext context) => const LandingPage(),
        RoomDetails.id: (BuildContext context) => const RoomDetails(),
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
        OwnerReviewPage.id: (BuildContext context) => const OwnerReviewPage(),
        PersonalDetailsV.id: (BuildContext context) => const PersonalDetailsV(),
        StayView.id: (BuildContext context) => const StayView(),
        PersonalDetailsNV.id: (BuildContext context) => const PersonalDetailsNV(),
        LoginPage.id: (BuildContext context) => const LoginPage(),
        ChooseRole.id: (BuildContext context) => const ChooseRole(),
        AsPropertyOwner.id: (BuildContext context) => const AsPropertyOwner(),
        AsRenter.id: (BuildContext context) => const AsRenter(),
        ForgotPassword.id: (BuildContext context) => const ForgotPassword(),
        ResetPassword.id: (BuildContext context) => const ResetPassword(),
        Verification.id: (BuildContext context) => const Verification(),
        PaymentDetails.id: (BuildContext context) => const PaymentDetails(),
        PopUpTemporary.id: (BuildContext context) => const PopUpTemporary(),
      },
    );
  }
}
