import 'package:flutter/material.dart';
import 'package:roompal_ojt/pages/booking/contact_details.dart';
import 'package:roompal_ojt/pages/room_details.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import '../../../widgets/widget_elements.dart';

class Booking extends StatefulWidget {
  const Booking({Key? key}) : super(key: key);
  static const String id = 'booking_page';

  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  //DropDown
  static const List<String> list = <String>['Transient', 'Monthly'];

  //calendar
  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2024),
    );
  }

  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/img/wmB.png"),
      ),
      endDrawer: buildSideBar(context),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.ideographic,
                children: [
                  bookingSteps(
                    label: 'Booking',
                    textColor: Color(0xFF1C39BB),
                    lineColor: Color(0xFFFEB618),
                    textSize: 18,
                    flex: 1,
                  ),
                  bookingSteps(
                    label: 'Contacts',
                    textColor: Colors.grey,
                    lineColor: Colors.grey,
                    textSize: 12,
                    flex: 1,
                  ),
                  bookingSteps(
                    label: 'Payment',
                    textColor: Colors.grey,
                    lineColor: Colors.grey,
                    textSize: 12,
                    flex: 1,
                  ),
                  bookingSteps(
                    label: 'Confirmation',
                    textColor: Colors.grey,
                    lineColor: Colors.grey,
                    textSize: 12,
                    flex: 1,
                  ),
                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Room Name",
                    textAlign: TextAlign.start,
                    style: kRoomName,
                  ),
                  Text(
                    "Room #0000",
                    textAlign: TextAlign.start,
                    style: kRoomNumber,
                  ),
                ],
              ),
              kSizedBox,
              Text(
                "Choose your booking details",
                textAlign: TextAlign.start,
                style: textStyleContent(
                  size: 16,
                  color: const Color(0xFF575F6E),
                ),
              ),
              ksizedBoxTextFieldCol,

              //Room Category
              Container(
                padding: EdgeInsets.all(10),
                decoration: boxDecoration(),
                child: Column(
                  children: [
                    textField(label: 'Room Category'),
                    ksizedBoxTextFieldCol,
                  ],
                ),
              ),
              kSizedBox,

              //Choose Date
              Container(
                padding: EdgeInsets.all(10),
                decoration: boxDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Choose your dates',
                      style: textStyleContent(
                        size: 14,
                        color: const Color(0xFF242426),
                      ),
                    ),
                    ksizedBoxTextFieldCol,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        calendarIcon(),

                        //Check in date
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Check-In',
                              style: textStyleContent(
                                size: 14,
                                color: const Color(0xFF242426),
                              ),
                            ),
                            displayDate()
                          ],
                        ),

                        SizedBox(
                          width: 20.0,
                        ),

                        //Check out date
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Check-Out',
                              style: textStyleContent(
                                size: 14,
                                color: const Color(0xFF242426),
                              ),
                            ),
                            displayDate(),
                          ],
                        ),
                      ],
                    ),

                    //Days
                    Padding(
                      padding: EdgeInsets.fromLTRB(2.0, 5.0, 4.0, 5.0),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color(0xFF242426),
                              width: 1.0,
                            ),
                          ),
                        ),
                        child: Text(
                          '14 days',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF242426),
                          ),
                        ),
                      ),
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
                      'Choose Option',
                      style: textStyleContent(
                        size: 14,
                        color: Color(0xFF575F6E),
                      ),
                    ),
                    DropdownButton<String>(
                      isExpanded: true,
                      value: dropdownValue,
                      icon: const Icon(Icons.arrow_drop_down),
                      elevation: 16,
                      style: textStyleContent(size: 16, color: Color(0xFF575F6E)),
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Requires 2 months advance payments', style: kRedText),
                      ],
                    ),
                    ksizedBoxTextFieldCol,
                  ],
                ),
              ),

              kSizedBox,

              //Number of Guest
              Container(
                padding: EdgeInsets.all(10),
                decoration: boxDecoration(),
                child: Column(
                  children: [
                    textField(label: 'Number of Guest'),
                    ksizedBoxTextFieldCol,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Maximum of 2 guests',
                              style: kRedText,
                            ),
                            addButton(), // Add icon to the right side of the text
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              ksizedBoxTFB,
              //button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  noButtonIcons(
                    onPressed: () => Navigator.pushNamed(context, RoomDetails.id),
                    label: 'Cancel',
                    isBorderRequired: true,
                    buttonColor: Colors.white,
                    textColor: const Color(0xFF242426),
                    horizontalPadding: 27,
                    verticalPadding: 15,
                  ),
                  navigationButton(
                      onPressed: () => Navigator.pushNamed(context, ContactDetails.id), label: 'Go next', icon: Icons.arrow_forward, isGoBack: false)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding calendarIcon() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: TextButton(
        onPressed: _showDatePicker,
        child: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFF242426),
            ),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Icon(
            Icons.calendar_today_outlined,
            color: Color(0xFF242426),
          ),
        ),
      ),
    );
  }
}

const TextStyle kRedText = TextStyle(
  fontSize: 10.0,
  color: Colors.red,
  fontFamily: 'ProximaNovaRegular',
);
