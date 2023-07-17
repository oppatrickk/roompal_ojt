import 'package:flutter/material.dart';

class RenterPage1 extends StatelessWidget {
  const RenterPage1({super.key});
  static const String id = 'RenterPage1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: Colors.white,
        title: Image.asset('assets/img/wmB.png'),
        elevation: 5.0,
      ),
      endDrawer: const NavigationDrawer(children: <Widget>[]),
    );
  }
}
