import 'package:flutter/material.dart';
import 'package:roompal_ojt/pages/payment_details.dart';
import 'package:roompal_ojt/pages/room_details.dart';
import '../widgets/const_elements.dart';
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
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
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
                    textColor: Color(0xFF1C39BB),
                    lineColor: Color(0xFFFEB618),
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
                  color: Color(0xFF575F6E),
                ),
              ),
              kSizedBox,
              Container(
                padding: EdgeInsets.all(10),
                decoration: boxDecoration(),
                child: Column(
                  children: [
                    textField(label: 'Enter Last Name'),
                    ksizedBoxTextFieldCol,
                    textField(label: 'Enter First Name'),
                    ksizedBoxTextFieldCol,
                    textField(label: 'Enter Middle Name'),
                    ksizedBoxTextFieldCol,
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
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 30),
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
                  navigationButton(
                      onPressed: null,
                      icon: Icons.arrow_back,
                      label: 'Go back',
                      isGoBack: true),
                  navigationButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, PaymentDetails.id),
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
            ],
          ),
        ),
      ),
    );
  }
}
