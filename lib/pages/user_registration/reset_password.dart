import 'package:flutter/material.dart';
import 'package:roompal_ojt/pages/user_registration/login_page.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);
  static const String id = 'ResetPassword';

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
                        'Reset Password',
                        style: kRoomName,
                      ),
                    ],
                  ),
                  ksizedBoxTextFieldCol,
                  Text(
                    'Create new password.',
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
                        onPressed: () => Navigator.pop(context),
                        icon: Icons.arrow_back,
                        label: 'Go back',
                        isGoBack: true,
                      ),
                      noButtonIcons(
                          onPressed: () => Navigator.pushNamed(context, LoginPage.id),
                          label: 'Save',
                          isBorderRequired: false,
                          buttonColor: Color(0xFF1C39BA),
                          textColor: Colors.white,
                          horizontalPadding: 30,
                          verticalPadding: 15)
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
