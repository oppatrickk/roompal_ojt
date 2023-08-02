import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roompal_ojt/Renter_State.dart';
import 'package:roompal_ojt/pages/booking/payment_success.dart';
import 'package:roompal_ojt/pages/room_details.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/sidebar.dart';
import 'package:roompal_ojt/widgets/textfield_widget.dart';
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
    RenterState renterState = Provider.of<RenterState>(context);
    return Scaffold(
      appBar: appBar(),
      endDrawer: SideBar(
        isRenter: renterState.isRenter,
      ),
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
              height: 160,
              padding: const EdgeInsets.all(10),
              decoration: boxDecoration(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  displayDetails(label: 'Name', details: 'Cena Una Coratson Bueno', flex: 1),
                  Row(
                    children: <Widget>[
                      displayDetails(label: 'Guest/s', details: '1', flex: 1),
                      ksizedBoxTextFieldRow,
                      displayDetails(label: 'Payment Method', details: 'Credit Card', flex: 3),
                    ],
                  )
                ],
              ),
            ),
            kSizedBox,
            displayContent(label: 'Phone Number', details: '09123456789'),
            kSizedBox,
            displayContent(label: 'Check in & Check out Date', details: 'July 03-17 (14 days)'),
            kSizedBox,
            displayContent(label: 'Email', details: 'coratsoncu@gmail.com'),
            ksizedBoxTFB,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                navigationButton(onPressed: () => Navigator.pop(context), icon: Icons.arrow_back, label: 'Go back', isGoBack: true),
                navigationButton(
                    onPressed: () => Navigator.pushNamed(context, PaymentSuccess.id), label: 'Finish', icon: Icons.arrow_forward, isGoBack: false)
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
          ]),
        ),
      ),
    );
  }
}
