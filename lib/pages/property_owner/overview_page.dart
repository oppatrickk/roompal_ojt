import 'package:flutter/material.dart';
import '../../widgets/const_elements.dart';
import '../../widgets/widget_elements.dart';
import '../room_details.dart';

class OverviewPage extends StatefulWidget {
  const OverviewPage({Key? key}) : super(key: key);
  static const String id = 'OverviewPage';

  @override
  State<OverviewPage> createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
  // BottoNavigationBar
  int selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/img/wmB.png"),
      ),
      endDrawer: buildSideBar(context),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
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
            Text(
              'Overview',
              style: textStyleHeader(color: Color(0xFF242731), size: 32),
              textAlign: TextAlign.center,
            ),
            kSizedBox,
            Text(
              'Fill in the property overview data. It will take a couple of minutes. ',
              style: textStyleContent(
                size: 16,
                color: Color(0xFF575F6E),
              ),
              textAlign: TextAlign.center,
            ),
            kSizedBox,
            Container(
              padding: const EdgeInsets.all(10),
              decoration: boxDecoration(),
              child: Column(
                children: <Widget>[
                  textField(label: 'Enter Room Title'),
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
                  textField(label: 'Enter Room Description'),
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
                  ksizedBoxTextFieldCol,
                ],
              ),
            ),
            ksizedBoxTFB,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                navigationButton(onPressed: null, icon: Icons.arrow_back, label: 'Go back', isGoBack: true),
                navigationButton(onPressed: null, label: 'Go next', icon: Icons.arrow_forward, isGoBack: false)
              ],
            ),
            ksizedBoxTextFieldCol,
            noButtonIcons(
              onPressed: () => Navigator.pushNamed(context, RoomDetails.id),
              label: 'Cancel',
              isBorderRequired: true,
              buttonColor: Colors.white,
              textColor: const Color(0xFF242426),
            ),
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
