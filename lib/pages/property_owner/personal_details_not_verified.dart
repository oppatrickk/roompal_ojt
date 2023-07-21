import 'package:flutter/material.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

class PersonalDetailsNV extends StatefulWidget {
  const PersonalDetailsNV({Key? key}) : super(key: key);
  static const String id = 'PersonalDetailsNV';

  @override
  State<PersonalDetailsNV> createState() => _PersonalDetailsNVState();
}

class _PersonalDetailsNVState extends State<PersonalDetailsNV> {
  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2024),
    );
  }

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
                        ],
                      ),
                      Text('Manage your personal details.'),
                      ksizedBoxTextFieldCol,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 31,
                            child: FloatingActionButton.extended(
                              isExtended: true,
                              elevation: 0,
                              onPressed: () {},
                              label: const Text('Verify Account'),
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  color: Color(0xFF808080),
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              backgroundColor: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 31,
                            child: FloatingActionButton.extended(
                              isExtended: true,
                              elevation: 0,
                              onPressed: () {},
                              label: const Text('Edit'),
                              icon: const Icon(
                                Icons.edit_square,
                                size: 15,
                              ),
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
              kSizedBox,
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
              kSizedBox,
              Container(
                padding: const EdgeInsets.all(10),
                decoration: boxDecoration(),
                child: Column(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(
                          'Phone Number',
                          style: textStyleContent(
                            size: 14,
                            color: const Color(0xFF242426),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: TextField(
                                decoration: const InputDecoration(
                                  border: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFBBBFC1),
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF242426),
                                    ),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(horizontal: 30),
                                  labelText: '+63',
                                ),
                                style: textStyleHeader(
                                  size: 18,
                                  color: const Color(0xFF242426),
                                ),
                              ),
                            ),
                            ksizedBoxTextFieldRow,
                            Expanded(
                              flex: 2,
                              child: textFieldDecoration(),
                            ),
                          ],
                        ),
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
                        textField(label: 'Email'),
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
                        textField(label: 'Sex'),
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
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      'Date of Birth',
                      style: textStyleContent(
                        size: 14,
                        color: Color(0xFF575F6E),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: _showDatePicker,
                          child: Icon(
                            Icons.calendar_today_outlined,
                            color: Color(0xFF242426),
                          ),
                        ),
                      ],
                    ),
                    divider,
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
                        textField(label: 'Description'),
                        ksizedBoxTextFieldCol,
                      ],
                    ),
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
