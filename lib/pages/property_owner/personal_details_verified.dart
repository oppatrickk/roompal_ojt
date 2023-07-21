import 'package:flutter/material.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

class PersonalDetailsV extends StatefulWidget {
  const PersonalDetailsV({Key? key}) : super(key: key);
  static const String id = 'PersonalDetailsV';

  @override
  State<PersonalDetailsV> createState() => _PersonalDetailsVState();
}

class _PersonalDetailsVState extends State<PersonalDetailsV> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/img/wmB.png'),
      ),
      endDrawer: buildSideBar(context),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(10),
                child: Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/img/r.png'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Coratson B. Cena Una',
                            style: kPersonName,
                          ),
                          Icon(
                            Icons.verified_rounded,
                            color: Color(0xFF1C39BB),
                          ),
                        ],
                      ),
                      Text('Manage your personal details.'),
                      ksizedBoxTextFieldCol,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 31,
                            child: FloatingActionButton.extended(
                              isExtended: true,
                              elevation: 0,
                              onPressed: () {},
                              label: const Text('Edit'),
                              icon: const Icon(Icons.edit_square),
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  color: Color(0xFF808080),
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              backgroundColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                'Personal Information',
                style: kHeaderTextStyle,
              ),
              kSizedBox,
              Container(
                padding: const EdgeInsets.all(10),
                decoration: boxDecoration(),
                child: Column(
                  children: <Widget>[
                    textField(label: 'Last Name'),
                    ksizedBoxTextFieldCol,
                    textField(label: 'First Name'),
                    ksizedBoxTextFieldCol,
                    textField(label: 'Middle Name'),
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
                    textField(label: 'Address'),
                    ksizedBoxTextFieldCol,
                  ],
                ),
              ),
              ksizedBoxTFB,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  navigationButton(onPressed: null, icon: Icons.arrow_back, label: 'Go back', isGoBack: true),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const TextStyle kPersonName = TextStyle(
  fontSize: 30.0,
  fontFamily: 'ProximaNovaAltBold',
);
