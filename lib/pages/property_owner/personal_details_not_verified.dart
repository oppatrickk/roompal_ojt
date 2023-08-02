import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roompal_ojt/Renter_State.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/sidebar.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';
import 'package:roompal_ojt/widgets/textfield_widget.dart';
import 'package:roompal_ojt/widgets/widget_property_owner.dart';

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
    RenterState renterState = Provider.of<RenterState>(context);
    return Scaffold(
      appBar: appBar(),
      endDrawer: SideBar(
        isRenter: renterState.isRenter,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                child: Column(
                  children: <Widget>[
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/img/r.png'),
                    ),
                    const Text(
                      'Coratson B. Cena Una',
                      style: kPersonName,
                    ),
                    Text(
                      'Manage your personal details.',
                      style: textStyleContent(size: 14, color: const Color(0xFF242426)),
                    ),
                    ksizedBoxTextFieldCol,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        TextButton(
                          onPressed: null,
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                              const EdgeInsetsDirectional.symmetric(horizontal: 10, vertical: 3.5),
                            ),
                            side: MaterialStateProperty.all(
                              const BorderSide(
                                color: Color(0xFF242426),
                              ),
                            ),
                            shape: MaterialStatePropertyAll<OutlinedBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                          ),
                          child: const Center(
                            child: Text(
                              'Verify Account',
                              style: TextStyle(color: Color(0xFF242426), fontSize: 14.0, fontFamily: 'ProximaNovaBold'),
                            ),
                          ),
                        ),
                        ActionButtons(const Color(0xFF242426), Icons.edit_square, 'Edit', () {}),
                      ],
                    ),
                  ],
                ),
              ),
              const Text(
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
              color: const Color(0xFF575F6E),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                onPressed: _showDatePicker,
                child: const Icon(
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
