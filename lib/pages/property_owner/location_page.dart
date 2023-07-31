import 'package:flutter/material.dart';
import 'package:roompal_ojt/pages/property_owner/contact_overview.dart';
import 'package:roompal_ojt/pages/property_owner/detail_page.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/sidebar.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';
import 'package:roompal_ojt/widgets/textfield_widget.dart';

class LocationPage extends StatefulWidget {
  LocationPage({super.key});
  static const String id = "LocationPage";

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  //DropDown
  static const List<Icon> list = <Icon>[
    Icon(Icons.house),
    Icon(Icons.park),
    Icon(Icons.streetview),
  ];
  Icon dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      endDrawer: SideBar(
        isLoggedIn: true,
        isRenter: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              //image
              Center(
                child: Image.asset('assets/img/cl3.png'),
              ),
              ksizedBoxTextFieldCol,
              //circle bar
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  circleIcon(isFillRequired: true, isBorderRequired: false),
                  lineBetweenCI(isTrue: true),
                  circleIcon(isFillRequired: true, isBorderRequired: false),
                  lineBetweenCI(isTrue: true),
                  circleIcon(isFillRequired: true, isBorderRequired: false),
                  lineBetweenCI(isTrue: false),
                  circleIcon(isFillRequired: false, isBorderRequired: true),
                  lineBetweenCI(isTrue: false),
                  circleIcon(isFillRequired: false, isBorderRequired: true),
                  lineBetweenCI(isTrue: false),
                  circleIcon(isFillRequired: false, isBorderRequired: true),
                ],
              ),
              ksizedBoxTextFieldCol,
              headerSub(pageTitle: 'Location', subContent: 'Fill in the property location data. It will take a couple of minutes.'),
              ksizedBoxTextFieldCol,
              //region and province
              Container(
                padding: const EdgeInsets.all(10),
                decoration: boxDecoration(),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Flexible(
                      flex: 4,
                      child: textFieldWithHintText(
                        label: 'Enter Region',
                        hint: '~Region~',
                      ),
                    ),
                    ksizedBoxTextFieldRow,
                    Flexible(
                      flex: 4,
                      child: textFieldWithHintText(
                        label: 'Enter Province',
                        hint: '~Province~',
                      ),
                    ),
                  ],
                ),
              ),
              ksizedBoxTextFieldCol,
              //City and barangay
              Container(
                padding: const EdgeInsets.all(10),
                decoration: boxDecoration(),
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 4,
                      child: textFieldWithHintText(
                        label: 'Enter City',
                        hint: '~City~',
                      ),
                    ),
                    ksizedBoxTextFieldRow,
                    Flexible(
                      flex: 4,
                      child: textFieldWithHintText(
                        label: 'Enter Barangay',
                        hint: '~Barangay~',
                      ),
                    ),
                  ],
                ),
              ),
              ksizedBoxTextFieldCol,
              //postal code
              Container(
                padding: const EdgeInsets.all(10),
                decoration: boxDecoration(),
                child: Column(
                  children: <Widget>[
                    textField(label: 'Postal Code'),
                    ksizedBoxTextFieldCol,
                  ],
                ),
              ),
              ksizedBoxTextFieldCol,
              //address
              textField1(label: 'Street Name, Building, House No.', hint: 'Enter Residence'),
              ksizedBoxTextFieldCol,
              //Icon dropdown and landmark
              Container(
                padding: const EdgeInsets.all(10),
                decoration: boxDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Text(
                                'Icons',
                                style: textStyleContent(
                                  size: 14,
                                  color: const Color(0xFF242426),
                                ),
                              ),
                              DropdownButtonFormField<Icon>(
                                isExpanded: true,
                                value: dropdownValue,
                                icon: const Icon(Icons.arrow_drop_down),
                                elevation: 16,
                                style: textStyleContent(size: 16, color: Color(0xFF575F6E)),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(0),
                                ),
                                onChanged: (Icon? value) {
                                  setState(
                                    () {
                                      dropdownValue = value!;
                                    },
                                  );
                                },
                                items: list.map<DropdownMenuItem<Icon>>((Icon value) {
                                  return DropdownMenuItem<Icon>(
                                    value: value,
                                    child: value,
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                        ),
                        ksizedBoxTextFieldRow,
                        Flexible(
                          flex: 4,
                          child: textFieldWithHintText(
                            label: 'Landmarks',
                            hint: 'Enter nearby landmark',
                          ),
                        ),
                      ],
                    ),
                    ksizedBoxTextFieldCol,
                    addButton(),
                  ],
                ),
              ),
              ksizedBoxTFB,
              //Go back and Go next button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  navigationButton(
                    onPressed: () => Navigator.pushNamed(context, ContactOverview.id),
                    icon: Icons.arrow_back,
                    label: 'Go back',
                    isGoBack: true,
                  ),
                  navigationButton(
                    onPressed: () => Navigator.pushNamed(context, DetailPage.id),
                    label: 'Go next',
                    icon: Icons.arrow_forward,
                    isGoBack: false,
                  )
                ],
              ),
              ksizedBoxTFB,
            ],
          ),
        ),
      ),
    );
  }
}
