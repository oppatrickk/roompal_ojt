import 'package:flutter/material.dart';
import '../widgets/widget_elements.dart';

class ContactDetails extends StatefulWidget {
  const ContactDetails({Key? key}) : super(key: key);
  static const String id = 'ContactDetails';

  @override
  State<ContactDetails> createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/img/wmB.png"),
      ),
      endDrawer: buildSideBar(context),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Booking',
                    style: textStyleHeader(color: Colors.grey, size: 18),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
