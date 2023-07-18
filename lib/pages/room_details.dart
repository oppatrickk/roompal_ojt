import 'package:flutter/material.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

class RoomDetails extends StatelessWidget {
  const RoomDetails({super.key});
  static const String id = 'RoomDetails';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: Colors.white,
        title: Image.asset('assets/img/wmB.png'),
        elevation: 5.0,
      ),
      endDrawer: buildSideBar(context),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(),
      ),
    );
  }
}
