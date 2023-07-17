import 'package:flutter/material.dart';
import 'package:roompal_ojt/pages/landing_page.dart';
import 'package:roompal_ojt/pages/renter/renter_page(0).dart';
import 'package:roompal_ojt/pages/renter/renter_page(1).dart';
import 'package:roompal_ojt/pages/renter/renter_page(2).dart';
import 'package:roompal_ojt/pages/room_details.dart';

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
            ],
          ),
        ),
      ),
    );
  }
}
