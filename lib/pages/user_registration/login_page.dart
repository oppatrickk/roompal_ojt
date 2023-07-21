import 'package:flutter/material.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

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
                  Text(
                    'Login',
                    style: kRoomName,
                    textAlign: TextAlign.center,
                  ),
                  kSizedBox,
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: boxDecoration(),
                    child: Column(
                      children: <Widget>[
                        textField(label: 'Email'),
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
                      Text(
                        'Forgot Password?',
                        style: kRoomNumber,
                      ),
                      TextButton(
                        onPressed: null,
                        child: Text(
                          'Click here',
                          style: TextStyle(
                            fontFamily: 'ProximaNovaRegular',
                            fontSize: 16,
                            color: Color(0xFF1C39BB),
                          ),
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
                    padding: const EdgeInsets.only(left: 50, right: 50),
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
                                child: Image.asset('assets/img/google.png'),
                                height: 25,
                                width: 25,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
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
                      Text(
                        "Don't have an account?",
                        style: kRoomNumber,
                      ),
                      TextButton(
                        onPressed: null,
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            fontFamily: 'ProximaNovaRegular',
                            fontSize: 16,
                            color: Color(0xFF1C39BB),
                          ),
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

//Button for go back and go next
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
            style: TextStyle(color: Color(0xFF242426), fontSize: 14.0, fontFamily: 'ProximaNovaBold'),
          )
        ],
      ));
}
