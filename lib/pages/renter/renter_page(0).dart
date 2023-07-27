import 'package:flutter/material.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

class RenterPage extends StatefulWidget {
  const RenterPage({super.key});
  static const String id = 'RenterPage';
  @override
  State<RenterPage> createState() => _RenterPageState();
}

class _RenterPageState extends State<RenterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      endDrawer: buildSideBar(context),
      body: const NoBookingData(),
    );
  }
}

class NoBookingData extends StatelessWidget {
  const NoBookingData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20.0, 70.0, 20.0, 20.0),
      child: Column(
        children: <Widget>[
          const Image(
            width: 160.0,
            height: 160.0,
            image: AssetImage('assets/img/mb.png'),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            "You currently don't have a booking",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'ProximaNovaBold',
              fontSize: 24.0,
            ),
          ),
          const Text(
            'Check out hundereds of other destinations on our app',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'ProximaNovaRegular',
              fontSize: 15.0,
              color: Color(0xFF838383),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: const Color(0xFF1C39BB),
              padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 80.0),
            ),
            onPressed: null,
            child: const Text(
              'Continue',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
