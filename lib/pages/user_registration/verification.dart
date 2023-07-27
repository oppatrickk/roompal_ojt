import 'package:flutter/material.dart';
import 'package:roompal_ojt/pages/user_registration/reset_password.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});
  static const String id = 'Verification';

  @override
  State<Verification> createState() => _Verification();
}

class _Verification extends State<Verification> {
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
                        'Verification',
                        style: kRoomName,
                      ),
                    ],
                  ),
                  ksizedBoxTextFieldCol,
                  Text(
                    'Enter the verification code sent in your email.',
                    style: kRoomNumber,
                    textAlign: TextAlign.center,
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
                            textField(label: 'Verification Code'),
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
                        onPressed: () => Navigator.pop(context),
                        icon: Icons.arrow_back,
                        label: 'Go back',
                        isGoBack: true,
                      ),
                      noButtonIcons(
                        onPressed: () => Navigator.pushNamed(context, ResetPassword.id),
                        label: 'Continue',
                        isBorderRequired: false,
                        buttonColor: Color(0xFF1C39BB),
                        textColor: Colors.white,
                        horizontalPadding: 27,
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
