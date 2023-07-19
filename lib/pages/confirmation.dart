import 'package:flutter/material.dart';
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
                  crossAxisAlignment: CrossAxisAlignment.stretch,
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
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              kSizedBox,
              Container(
                padding: EdgeInsets.all(10),
                decoration: boxDecoration(),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Enter Phone Number',
                          style: textStyleContent(
                            size: 14,
                            color: Color(0xFF242426),
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFBBBFC1),
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF242426),
                                    ),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(horizontal: 30),
                                  labelText: '+63',
                                ),
                                style: textStyleHeader(
                                  size: 18,
                                  color: Color(0xFF242426),
                                ),
                              ),
                            ),
                            ksizedBoxTextFieldRow,
                            Expanded(
                              flex: 2,
                              child: textFieldDecoration(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              kSizedBox,
              Container(
                padding: EdgeInsets.all(10),
                decoration: boxDecoration(),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        textField(label: 'Enter Email'),
                        ksizedBoxTextFieldCol,
                      ],
                    ),
                  ],
                ),
              ),
              ksizedBoxTFB,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      decoration: boxDecoration(),
                      child: Row(
                        children: [
                          iconStyle(icon: Icons.arrow_back, color: Color(0xFF242426), size: 24),
                          ksizedBoxTextFieldRow,
                          Text(
                            'Go Back',
                            style: textStyleHeader(color: Color(0xFF242426), size: 16),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      decoration: boxDecoration(),
                      child: Row(
                        children: [
                          Text(
                            'Go Next',
                            style: textStyleHeader(color: Color(0xFF242426), size: 16),
                          ),
                          ksizedBoxTextFieldRow,
                          iconStyle(icon: Icons.arrow_forward, color: Color(0xFF242426), size: 24),
                        ],
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
              ksizedBoxTextFieldCol,
              GestureDetector(
                child: Container(
                  decoration: boxDecoration(),
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Center(
                    child: Text(
                      'Cancel',
                      style: textStyleHeader(color: Color(0xFF242426), size: 16),
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
              padding: EdgeInsets.all(10),
              decoration: boxDecoration(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Email',
                    style: textStyleContent(
                      size: 14,
                      color: Color(0xFF242426),
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
              children: [
                navigationButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, PaymentDetails.id),
                    icon: Icons.arrow_back,
                    label: 'Go back',
                    isGoBack: true),
                navigationButton(
                    onPressed: null,
                    label: 'Go next',
                    icon: Icons.arrow_forward,
                    isGoBack: false)
              ],
            ),
            ksizedBoxTextFieldCol,
            noButtonIcons(
              onPressed: () => Navigator.pushNamed(context, RoomDetails.id),
              label: 'Cancel',
              isBorderRequired: true,
              buttonColor: Colors.white,
              textColor: Color(0xFF242426),
            ),
          ]),
        ),
      ),
    );
  }
}
