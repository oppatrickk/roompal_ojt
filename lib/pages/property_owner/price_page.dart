import 'package:flutter/material.dart';
import 'package:roompal_ojt/pages/booking/booking.dart';
import 'package:roompal_ojt/pages/booking/payment_details.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

class PricePage extends StatefulWidget {
  const PricePage({Key? key}) : super(key: key);
  static const String id = 'PricePage';

  @override
  State<PricePage> createState() => _PricePageState();
}

class _PricePageState extends State<PricePage> {
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
        title: Image.asset('assets/img/wmB.png'),
      ),
      endDrawer: buildSideBar(context),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                child: Image.asset('assets/img/cl6.png'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  circleIcon(isFillRequired: true, isBorderRequired: false),
                  lineBetweenCI(isTrue: true),
                  circleIcon(isFillRequired: true, isBorderRequired: false),
                  lineBetweenCI(isTrue: true),
                  circleIcon(isFillRequired: true, isBorderRequired: true),
                  lineBetweenCI(isTrue: true),
                  circleIcon(isFillRequired: true, isBorderRequired: true),
                  lineBetweenCI(isTrue: true),
                  circleIcon(isFillRequired: true, isBorderRequired: true),
                  lineBetweenCI(isTrue: true),
                  circleIcon(isFillRequired: true, isBorderRequired: true),
                ],
              ),
              kSizedBox,
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Price',
                      style: kRoomName,
                    ),
                    Text(
                      'Fill the property price for transient and monthly. It will take a couple of minutes. ',
                      style: kRoomNumber,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              kSizedBox,
              //Trtansient Price and Transaction Fee

              Container(
                padding: const EdgeInsets.all(10),
                decoration: boxDecoration(),
                child: Column(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(
                          'Enter Transient (Daily) Price',
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
              ksizedBoxTextFieldCol,
              Center(
                child: Text(
                  'Important Note: A 10% deduction from the price will be applied.',
                  style: kRedText,
                ),
              ),
              ksizedBoxTextFieldCol,
              Container(
                padding: const EdgeInsets.all(10),
                decoration: boxDecoration(),
                child: Column(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        textField(label: 'Enter Details'),
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
                  navigationButton(
                      onPressed: () => Navigator.pushNamed(context, PaymentDetails.id), label: 'Go next', icon: Icons.arrow_forward, isGoBack: false)
                ],
              ),
            ],
          ),
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
