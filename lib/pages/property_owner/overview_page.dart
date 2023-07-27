import 'package:flutter/material.dart';
import 'package:roompal_ojt/pages/property_owner/contact_overview.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/textfield_widget.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

class OverviewPage extends StatefulWidget {
  const OverviewPage({Key? key}) : super(key: key);
  static const String id = 'OverviewPage';

  @override
  State<OverviewPage> createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
  // BottoNavigationBar
  int selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> widgetOptions = <Widget>[
    Text(
      'Index 0: Create Listing',
      style: optionStyle,
    ),
    Text(
      'Index 1: Manage Listing',
      style: optionStyle,
    ),
    Text(
      'Index 2: Stay View',
      style: optionStyle,
    ),
    Text(
      'Index 3: Review',
      style: optionStyle,
    ),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  //DropDown
  static const List<String> list = <String>['Apartment', 'Studio', 'Bedspace'];

  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      endDrawer: buildSideBar(context),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Container(
              child: Center(
                child: Image.asset('assets/img/cl1.png'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                circleIcon(isFillRequired: true, isBorderRequired: false),
                lineBetweenCI(isTrue: false),
                circleIcon(isFillRequired: false, isBorderRequired: true),
                lineBetweenCI(isTrue: false),
                circleIcon(isFillRequired: false, isBorderRequired: true),
                lineBetweenCI(isTrue: false),
                circleIcon(isFillRequired: false, isBorderRequired: true),
                lineBetweenCI(isTrue: false),
                circleIcon(isFillRequired: false, isBorderRequired: true),
                lineBetweenCI(isTrue: false),
                circleIcon(isFillRequired: false, isBorderRequired: true),
              ],
            ),
            kSizedBox,
            headerSub(
                pageTitle: 'Overview',
                subContent:
                    'Fill in the property overview data. It will take a couple of minutes.'),
            kSizedBox,
            textField1(label: 'Room Title', hint: 'Enter Room Title'),
            kSizedBox,
            textField1(
                label: 'Room Description', hint: 'Enter Room Description'),
            kSizedBox,
            Container(
              padding: const EdgeInsets.all(10),
              decoration: boxDecoration(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'Select Category',
                    style: textStyleContent(
                      size: 14,
                      color: Color(0xFF575F6E),
                    ),
                  ),
                  DropdownButton<String>(
                    isExpanded: true,
                    value: dropdownValue,
                    icon: const Icon(Icons.arrow_drop_down),
                    style: textStyleContent(
                      size: 16,
                      color: Color(0xFF575F6E),
                    ),
                    underline: Container(
                      height: 1,
                      color: Color(0xFF575F6E),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        dropdownValue = value!;
                      });
                    },
                    items: list.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  ksizedBoxTextFieldCol,
                ],
              ),
            ),
            ksizedBoxTFB,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                navigationButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, ContactOverview.id),
                  label: 'Go next',
                  icon: Icons.arrow_forward,
                  isGoBack: false,
                ),
              ],
            ),
            ksizedBoxTFB,
          ]),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_rounded),
            label: 'Create Listing',
            backgroundColor: Color(0xFF1C39BB),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit_note_rounded),
            label: 'Manage Listing',
            backgroundColor: Color(0xFF1C39BB),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_rounded),
            label: 'Stay View',
            backgroundColor: Color(0xFF1C39BB),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grade_outlined),
            label: 'Review',
            backgroundColor: Color(0xFF1C39BB),
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.white,
        onTap: onItemTapped,
      ),
    );
  }
}
