import 'package:flutter/material.dart';
import 'package:roompal_ojt/pages/booking/booking.dart';
import 'package:roompal_ojt/pages/booking/booking_summary.dart';
import 'package:roompal_ojt/pages/booking/contact_details.dart';
import 'package:roompal_ojt/pages/booking/payment_fail.dart';
import 'package:roompal_ojt/pages/booking/payment_success.dart';
import 'package:roompal_ojt/pages/landing_page.dart';
import 'package:roompal_ojt/pages/property_owner/contact_overview.dart';
import 'package:roompal_ojt/pages/property_owner/detail_page.dart';
import 'package:roompal_ojt/pages/property_owner/listing_owner_tableview.dart';
import 'package:roompal_ojt/pages/property_owner/listing_ownersView.dart';
import 'package:roompal_ojt/pages/property_owner/listing_rentersView.dart';
import 'package:roompal_ojt/pages/property_owner/location_page.dart';
import 'package:roompal_ojt/pages/property_owner/overview_page.dart';
import 'package:roompal_ojt/pages/property_owner/personal_details_not_verified.dart';
import 'package:roompal_ojt/pages/property_owner/personal_details_verified.dart';
import 'package:roompal_ojt/pages/property_owner/photo_page.dart';
import 'package:roompal_ojt/pages/property_owner/price_page.dart';
import 'package:roompal_ojt/pages/property_owner/reviews_page.dart';
import 'package:roompal_ojt/pages/property_owner/stay_view.dart';
import 'package:roompal_ojt/pages/renter/renter_page(0).dart';
import 'package:roompal_ojt/pages/renter/renter_page(1).dart';
import 'package:roompal_ojt/pages/renter/renter_page(2).dart';
import 'package:roompal_ojt/pages/room_details.dart';
import 'package:roompal_ojt/pages/user_registration/as_Renter.dart';
import 'package:roompal_ojt/pages/user_registration/as_property_owner.dart';
import 'package:roompal_ojt/pages/user_registration/chooserole_page.dart';
import 'package:roompal_ojt/pages/user_registration/forgot_password.dart';
import 'package:roompal_ojt/pages/user_registration/login_page.dart';
import 'package:roompal_ojt/pages/user_registration/reset_password.dart';
import 'package:roompal_ojt/pages/user_registration/verification.dart';
import 'package:roompal_ojt/widgets/pop_up.dart';

import 'booking/payment_details.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  static const String id = 'MyHomePage';
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, RenterPage.id);
                },
                child: const Text('renter page'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, RoomDetails.id);
                },
                child: const Text('room details'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, LandingPage.id);
                },
                child: const Text('landing page'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, RenterPage1.id);
                },
                child: const Text('renter page 1'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, BookedDetails.id);
                },
                child: const Text('renter page 2:Booked Room Details'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, ContactDetails.id);
                },
                child: const Text('Contact Details'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, Booking.id);
                },
                child: const Text('booking'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, BookingSummary.id);
                },
                child: const Text('booking summary'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, PaymentSuccess.id);
                },
                child: const Text('payment success'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, PaymentFail.id);
                },
                child: const Text('payment fail'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, ContactOverview.id);
                },
                child: const Text('contact overview'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, OverviewPage.id);
                },
                child: const Text('Property Owner: Overview'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, LocationPage.id);
                },
                child: const Text('Location Page'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, PhotoPage.id);
                },
                child: const Text('Photo Page'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, DetailPage.id);
                },
                child: const Text('Detail Page'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, PricePage.id);
                },
                child: const Text('Price Page'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, ListingOwner.id);
                },
                child: const Text('Listing Owner'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, ListingOwnerTV.id);
                },
                child: const Text("Listing Owner' TV"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, ListingRenter.id);
                },
                child: const Text("Manage Listing: Renter's View"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, OwnerReviewPage.id);
                },
                child: const Text('Owner Review Page'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, StayView.id);
                },
                child: const Text('Stay View'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, PersonalDetailsV.id);
                },
                child: const Text('Personal Details Verified'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, PersonalDetailsNV.id);
                },
                child: const Text('Personal Details Not Verified'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, LoginPage.id);
                },
                child: const Text('Login Page'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, ChooseRole.id);
                },
                child: const Text('Choose Role'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, AsPropertyOwner.id);
                },
                child: const Text('Sign up: As Property Owner'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, AsRenter.id);
                },
                child: const Text('Sign up: As Renter'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, ForgotPassword.id);
                },
                child: const Text('Sign up: Forgot Password'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, ResetPassword.id);
                },
                child: const Text('Sign up: Reset Password'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, Verification.id);
                },
                child: const Text('Sign up: Verification'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, PaymentDetails.id);
                },
                child: const Text('Payment Details'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, PopUpTemporary.id);
                },
                child: const Text('PopUp Temporary'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
