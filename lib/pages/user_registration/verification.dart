import 'package:flutter/material.dart';
import 'package:roompal_ojt/pages/user_registration/reset_password.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/textfield_widget.dart';
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
          children: <Widget>[
            branding(),
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  headerSub(pageTitle: 'Verification', subContent: 'Enter the verification code sent in your email.'),
                  kSizedBox,
                  textField1(label: 'Verification Code', hint: 'Enter Verification Code'),
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
                        buttonColor: const Color(0xFF1C39BB),
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
