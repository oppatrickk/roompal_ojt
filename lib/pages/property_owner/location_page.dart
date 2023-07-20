import 'package:flutter/material.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

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
      appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: Colors.white,
        title: Image.asset('assets/img/wmB.png'),
      ),
      endDrawer: buildSideBar(context),
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
              //status bar
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
              //Title and subtitle
              const Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Location',
                      style: kRoomName,
                    ),
                    Text(
                      'Fill in the property location data. It will take a couple of minutes. ',
                      style: kRoomNumber,
                    ),
                  ],
                ),
              ),
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
                    textField(label: 'Enter Postal Code'),
                    ksizedBoxTextFieldCol,
                  ],
                ),
              ),
              ksizedBoxTextFieldCol,
              //address
              Container(
                padding: const EdgeInsets.all(10),
                decoration: boxDecoration(),
                child: Column(
                  children: <Widget>[
                    textField(label: 'Enter Street Name, Building, House No.'),
                    ksizedBoxTextFieldCol,
                  ],
                ),
              ),
              ksizedBoxTextFieldCol,
              //Icon dropdown and landmark
              Container(
                padding: const EdgeInsets.all(10),
                decoration: boxDecoration(),
                child: Column(
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
                              DropdownButton<Icon>(
                                isExpanded: true,
                                value: dropdownValue,
                                icon: const Icon(Icons.arrow_drop_down),
                                elevation: 16,
                                style: textStyleContent(size: 16, color: Color(0xFF575F6E)),
                                underline: Container(),
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
                          flex: 3,
                          child: textFieldWithHintText(
                            label: 'Enter Landmark/s',
                            hint: 'Parks nearby',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 10),
                          child: IconButton.outlined(
                            onPressed: () {},
                            icon: const Icon(Icons.add),
                            hoverColor: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                    ksizedBoxTextFieldCol,
                  ],
                ),
              ),
              ksizedBoxTFB,
              //Go back and Go next button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  navigationButton(
                    onPressed: () => null,
                    icon: Icons.arrow_back,
                    label: 'Go back',
                    isGoBack: true,
                  ),
                  navigationButton(
                    onPressed: null,
                    label: 'Go next',
                    icon: Icons.arrow_forward,
                    isGoBack: false,
                  )
                ],
              ),
              ksizedBoxTextFieldCol,
              //cancel button
              noButtonIcons(
                onPressed: () => null,
                label: 'Cancel',
                isBorderRequired: true,
                buttonColor: Colors.white,
                textColor: const Color(0xFF242426),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//drop down button in progress
// const List<String> list = <String>['Icon', '1', '2', '3'];

// class DropdownButtonExample extends StatefulWidget {
//   const DropdownButtonExample({super.key});

//   @override
//   State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
// }

// class _DropdownButtonExampleState extends State<DropdownButtonExample> {
//   String dropdownValue = list.first;

//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton<String>(
//       value: dropdownValue,
//       icon: const Icon(Icons.arrow_downward_outlined),
//       elevation: 16,
//       style: const TextStyle(color: Colors.black),
//       underline: Container(height: 1, color: Colors.black),
//       onChanged: (String? value) {
//         // This is called when the user selects an item.
//         setState(() {
//           dropdownValue = value!;
//         });
//       },
//       items: list.map<DropdownMenuItem<String>>((String value) {
//         return DropdownMenuItem<String>(
//           value: value,
//           child: Text(value),
//         );
//       }).toList(),
//     );
//   }
// }
