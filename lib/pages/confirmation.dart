import 'package:flutter/material.dart';
import 'package:roompal_ojt/pages/renter/renter_page(2).dart';
import 'package:roompal_ojt/pages/room_details.dart';
import '../widgets/const_elements.dart';
import '../widgets/widget_elements.dart';

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
        title: Image.asset("assets/img/wmB.png"),
      ),
      endDrawer: buildSideBar(context),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.ideographic,
              children: [
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
                  textColor: Color(0xFF1C39BB),
                  lineColor: Color(0xFFFEB618),
                  textSize: 18,
                  flex: 2,
                ),
              ],
            ),
            kSizedBox,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Kwarto De Luna',
                  style: kRoomName,
                ),
                const Text(
                  'Room #0000',
                  style: kRoomNumber,
                ),
                const Row(
                  children: <Widget>[
                    RoomDetailsDisplay(Icons.star, '4.5'),
                    RoomDetailsDisplay(Icons.person, '125 reviews'),
                    RoomDetailsDisplay(Icons.table_restaurant, 'Studio'),
                    RoomDetailsDisplay(Icons.pin_drop, 'Legazpi City, Bicol'),
                  ],
                ),
                const Row(
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
                color: Color(0xFF575F6E),
              ),
            ),
            ksizedBoxTextFieldCol,
            Container(
              padding: EdgeInsets.all(10),
              decoration: boxDecoration(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name',
                    style: textStyleContent(
                      size: 14,
                      color: Color(0xFF242426),
                    ),
                  ),
                  ksizedBoxTextFieldCol,
                  confirmationDetails(details: 'Cena Una Cortson Bueno'),
                  ksizedBoxTextFieldCol,
                  divider,
                  ksizedBoxTextFieldCol,
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Guest',
                            style: textStyleContent(
                              size: 14,
                              color: Color(0xFF242426),
                            ),
                          ),
                          confirmationDetails(details: '1'),
                          ksizedBoxTextFieldCol,
                          divider,
                          ksizedBoxTextFieldCol,
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Container confirmationDetails({required String details}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        details,
        style: textStyleHeader(color: Color(0xFF242426), size: 18),
      ),
    );
  }
}
