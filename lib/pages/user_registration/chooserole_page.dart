import 'package:flutter/material.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

class ChooseRole extends StatefulWidget {
  const ChooseRole({super.key});
  static const String id = 'ChooseRole';

  @override
  State<ChooseRole> createState() => _ChooseRoleState();
}

class _ChooseRoleState extends State<ChooseRole> {
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
                    'Sign up',
                    style: kRoomName,
                    textAlign: TextAlign.center,
                  ),
                  ksizedBoxTextFieldCol,
                  Text(
                    'Ready to get started? Please choose whether you want to sign up as a property owner or a renter.',
                    style: kRoomNumber,
                    textAlign: TextAlign.center,
                  ),
                  ksizedBoxTFB,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      noButtonIcons(
                        onPressed: null,
                        label: 'Property Owner',
                        isBorderRequired: false,
                        buttonColor: Color(0xFF1C39BB),
                        textColor: Colors.white,
                        horizontalPadding: 80,
                        verticalPadding: 15,
                      ),
                    ],
                  ),
                  ksizedBoxTextFieldCol,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      noButtonIcons(
                        onPressed: null,
                        label: 'Renter',
                        isBorderRequired: false,
                        buttonColor: Color(0xFF1C39BB),
                        textColor: Colors.white,
                        horizontalPadding: 108,
                        verticalPadding: 15,
                      ),
                    ],
                  ),
                  ksizedBoxTFB,
                  Text(
                    'You can later change your status in your account.',
                    style: textStyleContent(size: 16, color: Colors.red[800]!),
                    textAlign: TextAlign.center,
                  ),
                  ksizedBoxTFB,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      navigationButton(
                        onPressed: null,
                        label: 'Go back',
                        icon: Icons.arrow_back,
                        isGoBack: true,
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
