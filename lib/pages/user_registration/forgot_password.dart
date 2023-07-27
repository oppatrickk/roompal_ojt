import 'package:flutter/material.dart';
import 'package:roompal_ojt/pages/user_registration/verification.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/textfield_widget.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  static const String id = 'ForgorPassword';

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
                  headerSub(
                      pageTitle: 'Forgot Password',
                      subContent: "Enter your account's email address. A verification code will be sent in your email."),
                  kSizedBox,
                  //email
                  textField1(label: 'Email', hint: ''),
                  ksizedBoxTextFieldCol,
                  //instructions
                  const Text(
                    'Didn’t get a verification code? ',
                    style: kRoomNumber,
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    'Resend Code',
                    style: TextStyle(
                      color: Color(0xFF1C39BB),
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  ksizedBoxTFB,
                  //Go back and Go next button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      navigationButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icons.arrow_back,
                        label: 'Cancel',
                        isGoBack: true,
                      ),
                      navigationButton(
                        onPressed: () => Navigator.pushNamed(context, Verification.id),
                        label: 'Continue',
                        icon: Icons.arrow_forward,
                        isGoBack: false,
                      )
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
