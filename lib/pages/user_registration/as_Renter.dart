import 'package:flutter/material.dart';
import 'package:roompal_ojt/pages/landing_page.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/textfield_widget.dart';
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
                  const Column(
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
                  userName(),
                  kSizedBox,
                  phoneNumber(),
                  kSizedBox,
                  textField1(label: 'Email', hint: ''),
                  kSizedBox,
                  textField1(label: 'Complete Address', hint: ''),
                  kSizedBox,
                  textField1(label: 'Password', hint: ''),
                  kSizedBox,
                  textField1(label: 'Confirm Password', hint: ''),
                  ksizedBoxTFB,
                  //Go back and Go next button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      navigationButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icons.arrow_back,
                        label: 'Go back',
                        isGoBack: true,
                      ),
                      noButtonIcons(
                        onPressed: () => Navigator.pushNamed(context, LandingPage.id),
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
