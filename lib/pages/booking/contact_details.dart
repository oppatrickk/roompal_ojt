import 'package:flutter/material.dart';
import 'package:roompal_ojt/pages/booking/booking.dart';
import 'package:roompal_ojt/pages/booking/payment_details.dart';
import 'package:roompal_ojt/pages/room_details.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/textfield_widget.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

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
      appBar: appBar(),
      endDrawer: buildSideBar(context),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.ideographic,
                children: <Widget>[
                  bookingSteps(
                    label: 'Booking',
                    textColor: Colors.grey,
                    lineColor: Colors.grey,
                    textSize: 12,
                    flex: 1,
                  ),
                  bookingSteps(
                    label: 'Contacts',
                    textColor: const Color(0xFF1C39BB),
                    lineColor: const Color(0xFFFEB618),
                    textSize: 18,
                    flex: 1,
                  ),
                  bookingSteps(
                    label: 'Payment',
                    textColor: Colors.grey,
                    lineColor: Colors.grey,
                    textSize: 12,
                    flex: 1,
                  ),
                  bookingSteps(
                    label: 'Confirmation',
                    textColor: Colors.grey,
                    lineColor: Colors.grey,
                    textSize: 12,
                    flex: 1,
                  ),
                ],
              ),
              kSizedBox,
              Text(
                'Confirm your contact data. It will take a couple of minutes.',
                style: textStyleContent(
                  size: 16,
                  color: const Color(0xFF575F6E),
                ),
              ),
              kSizedBox,
              userName(),
              kSizedBox,
              textField1(label: 'Phone Number', hint: ''),
              kSizedBox,
              textField1(label: 'Email', hint: ''),
              ksizedBoxTFB,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  navigationButton(
                      onPressed: () => Navigator.pushNamed(context, Booking.id), icon: Icons.arrow_back, label: 'Go back', isGoBack: true),
                  navigationButton(
                      onPressed: () => Navigator.pushNamed(context, PaymentDetails.id), label: 'Go next', icon: Icons.arrow_forward, isGoBack: false)
                ],
              ),
              ksizedBoxTextFieldCol,
              noButtonIcons(
                onPressed: () => Navigator.pushNamed(context, RoomDetails.id),
                label: 'Cancel',
                isBorderRequired: true,
                buttonColor: Colors.white,
                textColor: const Color(0xFF242426),
                horizontalPadding: 27,
                verticalPadding: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
