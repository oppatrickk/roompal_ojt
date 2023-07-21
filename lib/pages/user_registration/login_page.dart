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
                        style: TextStyle(
                          fontFamily: 'ProximaNovaRegular',
                          fontSize: 15,
                          color: Color(0xFF242731),
                        ),
                      ),
                      TextButton(
                        onPressed: null,
                        child: Text(
                          'Click here',
                          style: TextStyle(
                            fontFamily: 'ProximaNovaRegular',
                            fontSize: 15,
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
                        style: textStyleHeader(color: const Color(0xFF242731), size: 15),
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
                        navigationButton(
                          onPressed: null,
                          label: 'Continue with Facebook',
                          icon: Icons.facebook_rounded,
                          isGoBack: true,
                        ),
                        ksizedBoxTextFieldCol,
                        navigationButton(
                          onPressed: null,
                          label: 'Continue with Google',
                          icon: Icons.local_grocery_store_outlined,
                          isGoBack: true,
                        ),
                        ksizedBoxTextFieldCol,
                        navigationButton(
                          onPressed: null,
                          label: 'Continue with Apple',
                          icon: Icons.apple_rounded,
                          isGoBack: true,
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
                        style: TextStyle(
                          fontFamily: 'ProximaNovaRegular',
                          fontSize: 15,
                          color: Color(0xFF242731),
                        ),
                      ),
                      TextButton(
                        onPressed: null,
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            fontFamily: 'ProximaNovaRegular',
                            fontSize: 15,
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

const TextStyle kTextButton = TextStyle(
  fontFamily: 'ProximaNovaRegular',
  fontSize: 15,
);
