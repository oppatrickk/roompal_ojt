import 'package:flutter/material.dart';
import 'package:roompal_ojt/pages/booking/payment_details.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

class ContactOverview extends StatefulWidget {
  const ContactOverview({Key? key}) : super(key: key);
  static const String id = 'ContactOverview';

  @override
  State<ContactOverview> createState() => _ContactOverviewState();
}

class _ContactOverviewState extends State<ContactOverview> {
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                child: Image.asset('assets/img/cl2.png'),
              ),
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Location',
                      style: kRoomName,
                    ),
                    Text(
                      'Fill in the property location data. It will take a couple of minutes. ',
                      style: kRoomNumber,
                    ),
                  ],
                ),
              ),
              Text(
                'Fill in contact data. It will take a couple of minutes.',
                style: textStyleContent(
                  size: 16,
                  color: const Color(0xFF575F6E),
                ),
              ),
              kSizedBox,
              Container(
                padding: const EdgeInsets.all(10),
                decoration: boxDecoration(),
                child: Column(
                  children: <Widget>[
                    textField(label: 'Last Name'),
                    ksizedBoxTextFieldCol,
                    textField(label: 'First Name'),
                    ksizedBoxTextFieldCol,
                    textField(label: 'Middle Name'),
                    ksizedBoxTextFieldCol,
                  ],
                ),
              ),
              kSizedBox,
              Container(
                padding: const EdgeInsets.all(10),
                decoration: boxDecoration(),
                child: Column(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
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
                            Expanded(
                              flex: 1,
                              child: TextField(
                                decoration: const InputDecoration(
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
                                  color: const Color(0xFF242426),
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
                padding: const EdgeInsets.all(10),
                decoration: boxDecoration(),
                child: Column(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        textField(label: 'Email'),
                        ksizedBoxTextFieldCol,
                      ],
                    ),
                  ],
                ),
              ),
              ksizedBoxTFB,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  navigationButton(onPressed: null, icon: Icons.arrow_back, label: 'Go back', isGoBack: true),
                  navigationButton(
                      onPressed: () => Navigator.pushNamed(context, PaymentDetails.id), label: 'Go next', icon: Icons.arrow_forward, isGoBack: false)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
