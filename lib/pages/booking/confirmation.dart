import 'package:flutter/material.dart';
import 'package:roompal_ojt/pages/booking/payment_details.dart';
import 'package:roompal_ojt/pages/booking/payment_details.dart';
import 'package:roompal_ojt/pages/room_details.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

class ConfirmationPage extends StatefulWidget {
  const ConfirmationPage({Key? key}) : super(key: key);
  static const String id = 'ConfirmationPage';

  @override
  State<ConfirmationPage> createState() => _ConfirmationPageState();
}

class _ConfirmationPageState extends State<ConfirmationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/img/wmB.png'),
      ),
      endDrawer: buildSideBar(context),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
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
                  textColor: Colors.grey,
                  lineColor: Colors.grey,
                  textSize: 12,
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
                  textColor: const Color(0xFF1C39BB),
                  lineColor: const Color(0xFFFEB618),
                  textSize: 18,
                  flex: 2,
                ),
              ],
            ),
            kSizedBox,
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Kwarto De Luna',
                  style: kRoomName,
                ),
                Text(
                  'Room #0000',
                  style: kRoomNumber,
                ),
                Row(
                  children: <Widget>[
                    RoomDetailsDisplay(Icons.star, '4.5'),
                    RoomDetailsDisplay(Icons.person, '125 reviews'),
                    RoomDetailsDisplay(Icons.table_restaurant, 'Studio'),
                    RoomDetailsDisplay(Icons.pin_drop, 'Legazpi City, Bicol'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'Nearby Landmarks:',
                      style: TextStyle(
                        fontSize: 10.0,
                        fontFamily: 'ProximaNovaAltBold',
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    RoomDetailsDisplay(Icons.church, 'Albay Cathedral'),
                    RoomDetailsDisplay(Icons.park, 'Albay Park'),
                  ],
                ),
              ],
            ),
            kSizedBox,
            Text(
              'Transaction Details',
              style: textStyleContent(
                size: 16,
                color: const Color(0xFF575F6E),
              ),
            ),
            ksizedBoxTextFieldCol,
            Container(
              padding: const EdgeInsets.all(10),
              decoration: boxDecoration(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Name',
                    style: textStyleContent(
                      size: 14,
                      color: const Color(0xFF242426),
                    ),
                  ),
                  ksizedBoxTextFieldCol,
                  confirmationDetails(details: 'Cena Una Cortson Bueno'),
                  ksizedBoxTextFieldCol,
                  divider,
                  ksizedBoxTextFieldCol,
                  Row(
                    children: <Widget>[
                      displayDetails(
                        label: 'Guest',
                        details: '1',
                        flex: 1,
                      ),
                      ksizedBoxTextFieldRow,
                      displayDetails(
                        label: 'Payment Method',
                        details: 'Credit Card',
                        flex: 3,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            kSizedBox,
            Container(
              padding: const EdgeInsets.all(10),
              decoration: boxDecoration(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Phone Number',
                    style: textStyleContent(
                      size: 14,
                      color: const Color(0xFF242426),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      displayDetails(
                        label: '',
                        details: '+63',
                        flex: 1,
                      ),
                      ksizedBoxTextFieldRow,
                      displayDetails(
                        label: '',
                        details: '912 7689 991',
                        flex: 3,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            kSizedBox,
            Container(
              padding: const EdgeInsets.all(10),
              decoration: boxDecoration(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Check in & Check out Date',
                    style: textStyleContent(
                      size: 14,
                      color: const Color(0xFF242426),
                    ),
                  ),
                  ksizedBoxTextFieldCol,
                  confirmationDetails(details: 'July 03-17 (14 days)'),
                  ksizedBoxTextFieldCol,
                  divider,
                  ksizedBoxTextFieldCol,
                ],
              ),
            ),
            kSizedBox,
            Container(
              padding: const EdgeInsets.all(10),
              decoration: boxDecoration(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Email',
                    style: textStyleContent(
                      size: 14,
                      color: const Color(0xFF242426),
                    ),
                  ),
                  ksizedBoxTextFieldCol,
                  confirmationDetails(details: 'coratsoncu@gmail.com'),
                  ksizedBoxTextFieldCol,
                  divider,
                  ksizedBoxTextFieldCol,
                ],
              ),
            ),
            ksizedBoxTFB,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                navigationButton(
                    onPressed: () => Navigator.pushNamed(context, PaymentDetails.id), icon: Icons.arrow_back, label: 'Go back', isGoBack: true),
                navigationButton(onPressed: null, label: 'Go next', icon: Icons.arrow_forward, isGoBack: false)
              ],
            ),
            ksizedBoxTextFieldCol,
            noButtonIcons(
              onPressed: () => Navigator.pushNamed(context, RoomDetails.id),
              label: 'Cancel',
              isBorderRequired: true,
              buttonColor: Colors.white,
              textColor: const Color(0xFF242426),
            ),
          ]),
        ),
      ),
    );
  }
}
