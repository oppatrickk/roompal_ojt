import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roompal_ojt/Log_In_State.dart';
import 'package:roompal_ojt/pages/property_owner/bottom_navigation.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/pop_up.dart';
import 'package:roompal_ojt/widgets/textfield_widget.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

class AsPropertyOwner extends StatefulWidget {
  const AsPropertyOwner({super.key});
  static const String id = 'AsPropertyOwner';

  @override
  State<AsPropertyOwner> createState() => _AsPropertyOwnerState();
}

class _AsPropertyOwnerState extends State<AsPropertyOwner> {
  @override
  Widget build(BuildContext context) {
    LogInState logInState = Provider.of<LogInState>(context);
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
                        'Property Owner',
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
                      navigationButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return CustomDialogButton3(
                                  content: 'You\'ve successfully created an account!',
                                  onPressed: () {
                                    Navigator.pushNamed(context, BottomNavigation.id);
                                    logInState.setTrue();
                                  },
                                );
                              });
                        },
                        label: 'Go next',
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
