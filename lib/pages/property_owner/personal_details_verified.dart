import 'package:flutter/material.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/sidebar.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';
import 'package:roompal_ojt/widgets/textfield_widget.dart';
import 'package:roompal_ojt/widgets/widget_property_owner.dart';

class PersonalDetailsV extends StatefulWidget {
  const PersonalDetailsV({Key? key, required this.isLoggedInStatus, required this.isRenterStatus}) : super(key: key);
  static const String id = 'PersonalDetailsV';
  final bool isLoggedInStatus;
  final bool isRenterStatus;

  @override
  State<PersonalDetailsV> createState() => _PersonalDetailsVState();
}

class _PersonalDetailsVState extends State<PersonalDetailsV> {
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
      appBar: appBar(),
      endDrawer: SideBar(
        isRenter: widget.isRenterStatus,
      ),
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
                          Expanded(
                            flex: 10,
                            child: Text(
                              'Coratson B. Cena Una',
                              style: kPersonName,
                            ),
                          ),
                          Expanded(
                            child: iconStyle(icon: Icons.verified_rounded, color: Color(0xFF1C39BB), size: 24),
                          ),
                        ],
                      ),
                      Text(
                        'Manage your personal details.',
                        style: textStyleContent(size: 14, color: Color(0xFF242426)),
                      ),
                      ksizedBoxTextFieldCol,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ActionButtons(Color(0xFF242426), Icons.edit_square, 'Edit', () {}),
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
              displayUserNameData(),
              kSizedBox,
              displayContent(label: 'Address', details: 'Purok 4, Bagumbayan, Daraga, Albay'),
              kSizedBox,
              displayPhoneNumber(),
              kSizedBox,
              displayContent(label: 'Email', details: 'coratsoncu@gmail.com'),
              kSizedBox,
              displayContent(label: 'Sex', details: 'Female'),
              kSizedBox,
              displayContent(label: 'Date of Birth', details: '11 | 02 | 1786'),
              kSizedBox,
              displayContent(
                  label: 'Description',
                  details:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
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

  Container birthDatePicker() {
    return Container(
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
                  Icons.calendar_month_rounded,
                  color: Color(0xFF242426),
                ),
              ),
            ],
          ),
          divider,
          ksizedBoxTextFieldCol,
        ],
      ),
    );
  }
}

const TextStyle kPersonName = TextStyle(
  fontSize: 28.0,
  fontFamily: 'ProximaNovaAltBold',
);
