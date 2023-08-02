import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roompal_ojt/Log_In_State.dart';
import 'package:roompal_ojt/Renter_State.dart';
import 'package:roompal_ojt/pages/landing_page.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/pop_up.dart';
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
    LogInState logInState = Provider.of<LogInState>(context);
    RenterState renterState = Provider.of<RenterState>(context);
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
                  const Text(
                    'Fill in the data require to sign up. It will take a couple of minutes.',
                    style: kRoomNumber,
                    textAlign: TextAlign.center,
                  ),
                  kSizedBox,
                  userName(),
                  kSizedBox,
                  textField1(label: 'Phone Number', hint: 'Enter Phone Number'),
                  kSizedBox,
                  textField1(label: 'Email', hint: 'Enter Email'),
                  kSizedBox,
                  textField1(label: 'Complete Address', hint: 'Enter Complete Address'),
                  kSizedBox,
                  passwordTextField(label: 'Password', hint: 'Enter Password'),
                  kSizedBox,
                  passwordTextField(label: 'Confirm Password', hint: 'Re-enter Password'),
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
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return CustomDialogButton3(
                                  content: 'You\'ve successfully created an account!',
                                  onPressed: () {
                                    logInState.setTrue();
                                    renterState.setTrue();
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (BuildContext context) => LandingPage(),
                                      ),
                                    );
                                  },
                                );
                              });
                        },
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
