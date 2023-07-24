import 'package:flutter/material.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

class AsRenter extends StatefulWidget {
  const AsRenter({super.key});
  static const String id = 'AsRenter';

  @override
  State<AsRenter> createState() => _AsRenter();
}

class _AsRenter extends State<AsRenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            branding(),
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sign up as',
                        style: kRoomName,
                      ),
                      Text(
                        'Renter',
                        style: TextStyle(
                          fontSize: 32.0,
                          fontFamily: 'ProximaNovaAltBold',
                          color: Color(0xFF1C39BB),
                        ),
                      ),
                    ],
                  ),
                  ksizedBoxTextFieldCol,
                  Text(
                    'Fill in the data require to sign up. It will take a couple of minutes.',
                    style: kRoomNumber,
                    textAlign: TextAlign.center,
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
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 30),
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
                  kSizedBox,
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: boxDecoration(),
                    child: Column(
                      children: <Widget>[
                        textField(label: 'Complete Address'),
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
                            textField(label: 'Password'),
                            ksizedBoxTextFieldCol,
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
                            textField(label: 'Confirm Password'),
                            ksizedBoxTextFieldCol,
                          ],
                        ),
                      ],
                    ),
                  ),
                  ksizedBoxTFB,
                  //Go back and Go next button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      navigationButton(
                        onPressed: null,
                        icon: Icons.arrow_back,
                        label: 'Go back',
                        isGoBack: true,
                      ),
                      noButtonIcons(
                        onPressed: () => null,
                        label: 'Create Account',
                        isBorderRequired: false,
                        buttonColor: Color(0xFF1C39BB),
                        textColor: Colors.white,
                        horizontalPadding: 30,
                        verticalPadding: 15,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
