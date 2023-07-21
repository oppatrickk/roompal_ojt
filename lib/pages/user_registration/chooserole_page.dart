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
        child: Container(
          child: Column(
            children: [
              Container(
                color: Color(0xFF1C39BB),
                child: Center(
                  child: Column(children: [
                    Image.asset(
                      'assets/img/logo2.png',
                      height: 100,
                      width: 100,
                    ),
                    Image.asset(
                      'assets/img/bW.png',
                      height: 100,
                      width: 400,
                    ),
                  ]),
                ),
              ),
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
                    kSizedBox,
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: boxDecoration(),
                      child: Column(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              textField(label: 'Description'),
                              ksizedBoxTextFieldCol,
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
