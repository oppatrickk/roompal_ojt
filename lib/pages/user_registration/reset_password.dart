import 'package:flutter/material.dart';
import 'package:roompal_ojt/pages/user_registration/login_page.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/textfield_widget.dart';
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
                  headerSub(pageTitle: 'Reset Password', subContent: 'Create new password.'),
                  kSizedBox,
                  textField1(label: 'Password', hint: 'Enter Password'),
                  kSizedBox,
                  textField1(label: 'Confirm Password', hint: 'Re-enter Password'),
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
