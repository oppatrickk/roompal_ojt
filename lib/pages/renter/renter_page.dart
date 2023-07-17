import 'package:flutter/material.dart';

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
      appBar: AppBar(backgroundColor: Colors.blueAccent),
      body: Column(
        children: [
          Text("You currently don't have a booking"),
          Text('Check out hundreds of other destinations on our app'),
        ],
      ),
    );
  }
}
