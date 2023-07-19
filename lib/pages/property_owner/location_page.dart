import 'package:flutter/material.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});
  static const String id = "LocationPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: Colors.white,
        title: Image.asset('assets/img/wmB.png'),
        elevation: 5.0,
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
              Container(
                padding: const EdgeInsets.all(10),
                decoration: boxDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'Select Region',
                          style: textStyleContent(
                            size: 14,
                            color: const Color(0xFF242426),
                          ),
                        ),
                        const SizedBox(
                          width: 66,
                        ),
                        Text(
                          'Select Province',
                          style: textStyleContent(
                            size: 14,
                            color: const Color(0xFF242426),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        displayDetails(
                          label: '',
                          details: '~Region~',
                          flex: 4,
                        ),
                        ksizedBoxTextFieldRow,
                        displayDetails(
                          label: '',
                          details: '~Province~',
                          flex: 4,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ksizedBoxTextFieldCol,
              Container(
                padding: const EdgeInsets.all(10),
                decoration: boxDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'Select City',
                          style: textStyleContent(
                            size: 14,
                            color: const Color(0xFF242426),
                          ),
                        ),
                        const SizedBox(
                          width: 66,
                        ),
                        Text(
                          'Select Barangay',
                          style: textStyleContent(
                            size: 14,
                            color: const Color(0xFF242426),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        displayDetails(
                          label: '',
                          details: '~City~',
                          flex: 4,
                        ),
                        ksizedBoxTextFieldRow,
                        displayDetails(
                          label: '',
                          details: '~Barangay~',
                          flex: 4,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ksizedBoxTextFieldCol,
              Container(
                padding: const EdgeInsets.all(10),
                decoration: boxDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Enter Postal Code',
                      style: textStyleContent(
                        size: 14,
                        color: const Color(0xFF242426),
                      ),
                    ),
                    ksizedBoxTextFieldCol,
                    confirmationDetails(details: '4501'),
                    ksizedBoxTextFieldCol,
                    divider,
                    ksizedBoxTextFieldCol,
                  ],
                ),
              ),
              ksizedBoxTextFieldCol,
              Container(
                padding: const EdgeInsets.all(10),
                decoration: boxDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Enter Street Name, Building, House No.',
                      style: textStyleContent(
                        size: 14,
                        color: const Color(0xFF242426),
                      ),
                    ),
                    ksizedBoxTextFieldCol,
                    confirmationDetails(details: 'Purok 4, Building, House No.'),
                    ksizedBoxTextFieldCol,
                    divider,
                    ksizedBoxTextFieldCol,
                  ],
                ),
              ),
              ksizedBoxTextFieldCol,
              Container(
                padding: const EdgeInsets.all(10),
                decoration: boxDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Enter Nearby Landmark',
                      style: textStyleContent(
                        size: 14,
                        color: const Color(0xFF242426),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        //DropdownButtonExample(),
                        ksizedBoxTextFieldRow,
                        displayDetails(
                          label: '',
                          details: 'Sawangan Park',
                          flex: 4,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ksizedBoxTFB,
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
