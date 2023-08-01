import 'package:flutter/material.dart';
import 'package:roompal_ojt/pages/user_registration/chooserole_page.dart';
import 'package:roompal_ojt/pages/user_registration/forgot_password.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

import '../../widgets/textfield_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static const String id = 'loginPage';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                  const Text(
                    'Login',
                    style: kRoomName,
                    textAlign: TextAlign.center,
                  ),
                  kSizedBox,
                  textField1(label: 'Email', hint: ''),
                  kSizedBox,
                  passwordTextField(label: 'Password'),
                  ksizedBoxTFB,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      noButtonIcons(
                          onPressed: null,
                          label: 'Login',
                          isBorderRequired: true,
                          buttonColor: Color(0xFF1C39BB),
                          textColor: Colors.white,
                          horizontalPadding: 100,
                          verticalPadding: 15),
                    ],
                  ),
                  kSizedBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Forgot Password?',
                        style: kRoomNumber,
                      ),
                      TextButton(
                        onPressed: () => Navigator.pushNamed(context, ForgotPassword.id),
                        child: const Text(
                          'Click here',
                          style: blueText,
                        ),
                      ),
                    ],
                  ),
                  kSizedBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const SizedBox(
                        width: 150,
                        child: Divider(
                          color: Color(0xFF242731),
                        ),
                      ),
                      Text(
                        'or',
                        style: textStyleHeader(color: const Color(0xFF242731), size: 16),
                      ),
                      const SizedBox(
                        width: 150,
                        child: Divider(
                          color: Color(0xFF242731),
                        ),
                      ),
                    ],
                  ),
                  kSizedBox,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        signUpButton(
                          onPressed: null,
                          label: 'Continue with Facebook',
                          icon: Icons.facebook_rounded,
                          iconColor: Color(0xFF1C39BB),
                        ),
                        ksizedBoxTextFieldCol,
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: boxDecoration(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 25,
                                width: 25,
                                child: Image.asset('assets/img/google.png'),
                              ),
                              const SizedBox(
                                width: 7,
                              ),
                              const Text(
                                'Continue with Google',
                                style: TextStyle(color: Color(0xFF242426), fontSize: 14.0, fontFamily: 'ProximaNovaBold'),
                              ),
                            ],
                          ),
                        ),
                        ksizedBoxTextFieldCol,
                        signUpButton(
                          onPressed: null,
                          label: 'Continue with Apple',
                          icon: Icons.apple_rounded,
                          iconColor: Color(0xFF242426),
                        ),
                      ],
                    ),
                  ),
                  kSizedBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: kRoomNumber,
                      ),
                      TextButton(
                        onPressed: () => Navigator.pushNamed(context, ChooseRole.id),
                        child: const Text(
                          'Sign up',
                          style: blueText,
                        ),
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

//click here and sign up blueText style
const TextStyle blueText = TextStyle(
  color: Color(0xFF1C39BB),
  fontSize: 15,
  fontWeight: FontWeight.normal,
);

//other authentication
TextButton signUpButton({
  required void Function()? onPressed,
  required IconData icon,
  required String label,
  required Color iconColor,
}) {
  return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          const EdgeInsetsDirectional.symmetric(horizontal: 27, vertical: 15),
        ),
        side: MaterialStateProperty.all(
          const BorderSide(
            color: Color(0xFFBBBFC1),
          ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          iconStyle(icon: icon, color: iconColor, size: 20),
          ksizedBoxTextFieldRow,
          Text(
            label,
            style: const TextStyle(color: Color(0xFF242426), fontSize: 14.0, fontFamily: 'ProximaNovaBold'),
          )
        ],
      ));
}
