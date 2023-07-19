import 'package:flutter/material.dart';
import 'package:roompal_ojt/pages/room_details.dart';
import '../../widgets/widget_elements.dart';
import '../widgets/const_elements.dart';

class Booking extends StatefulWidget {
  const Booking({Key? key}) : super(key: key);
  static const String id = 'booking_page';

  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/img/wmB.png"),
      ),
      endDrawer: buildSideBar(context),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
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

              kSizedBox,
              Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Room Name",
                          textAlign: TextAlign.start,
                          style: textStyleHeader(color: Color(0xFF242426), size: 32),
                        ),
                        Text(
                          "Room #000",
                          textAlign: TextAlign.start,
                          style: textStyleHeader(color: Color(0xFF242426), size: 16),
                        ),
                      ],
                    ),
                    kSizedBox,
                    Text(
                      "Choose Details",
                      textAlign: TextAlign.start,
                      style: textStyleHeader(
                        size: 16,
                        color: Color(0xFF575F6E),
                      ),
                    ),
                    kSizedBox,

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
                          Padding(
                            padding: EdgeInsets.fromLTRB(2.0, 1.0, 4.0, 5.0),
                            child: Text('Choose your dates'),
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.fromLTRB(5.0, 15.0, 4.0, 0.0),
                                child: Container(
                                  padding: EdgeInsets.all(3.0),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black, width: 1.0),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Icon(Icons.calendar_today, color: Colors.black),
                                ),
                              ),

                              //Spacing
                              SizedBox(
                                width: 20.0,
                              ),
                              //Check in date
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Check-In'),
                                  Row(
                                    children: [
                                      Container(
                                        width: 40,
                                        padding: EdgeInsets.all(4.0),
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.black, width: 1.0),
                                          borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0), bottomLeft: Radius.circular(5.0)),
                                        ),
                                        child: Text('mm', textAlign: TextAlign.center),
                                      ),
                                      Container(
                                        width: 40,
                                        padding: EdgeInsets.all(4.0),
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.black, width: 1.0),
                                        ),
                                        child: Text('dd', textAlign: TextAlign.center),
                                      ),
                                      Container(
                                        width: 40,
                                        padding: EdgeInsets.all(4.0),
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.black, width: 1.0),
                                          borderRadius: BorderRadius.only(topRight: Radius.circular(5.0), bottomRight: Radius.circular(5.0)),
                                        ),
                                        child: Text('yyyy', textAlign: TextAlign.center),
                                      ),
                                    ],
                                  ),
                                ],
                              ),

                              SizedBox(
                                width: 20.0,
                              ),

                              //Check out date
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Check-Out'),
                                  Row(
                                    children: [
                                      Container(
                                        width: 40,
                                        padding: EdgeInsets.all(4.0),
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.black, width: 1.0),
                                          borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0), bottomLeft: Radius.circular(5.0)),
                                        ),
                                        child: Text('mm', textAlign: TextAlign.center),
                                      ),
                                      Container(
                                        width: 40,
                                        padding: EdgeInsets.all(4.0),
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.black, width: 1.0),
                                        ),
                                        child: Text('dd', textAlign: TextAlign.center),
                                      ),
                                      Container(
                                        width: 40,
                                        padding: EdgeInsets.all(4.0),
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.black, width: 1.0),
                                          borderRadius: BorderRadius.only(topRight: Radius.circular(5.0), bottomRight: Radius.circular(5.0)),
                                        ),
                                        child: Text('yyyy', textAlign: TextAlign.center),
                                      ),
                                    ],
                                  ),
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
                                    color: Colors.black,
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              child: Text(
                                '14 days',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    kSizedBox,

                    //Option Category
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: boxDecoration(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          textField(
                            label: 'Choose Option',
                            //suffixIcon: Icon(Icons.arrow_drop_down_outlined),
                          ),
                          ksizedBoxTextFieldCol,
                          Column(
                            children: [
                              Text('Requires 2 months advance payments', style: kRedText),
                            ],
                          ),
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
                                children: [
                                  Text(
                                    'Maximum of 2 guests',
                                    style: kRedText,
                                  ),
                                  SizedBox(width: 195.0),
                                  Icon(Icons.add_circle_outline), // Add icon to the right side of the text
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              kSizedBox,
              //button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      decoration: boxDecoration(),
                      child: Row(
                        children: [
                          iconStyle(icon: Icons.arrow_back, color: Color(0xFF242426), size: 24),
                          ksizedBoxTextFieldRow,
                          Text(
                            'Go Back',
                            style: textStyleHeader(color: Color(0xFF242426), size: 16),
                          )
                        ],
                      ),
                    ),
                    onTap: null,
                  ),
                  GestureDetector(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      decoration: boxDecoration(),
                      child: Row(
                        children: [
                          Text(
                            'Go Next',
                            style: textStyleHeader(color: Color(0xFF242426), size: 16),
                          ),
                          ksizedBoxTextFieldRow,
                          iconStyle(icon: Icons.arrow_forward, color: Color(0xFF242426), size: 24),
                        ],
                      ),
                    ),
                    onTap: null,
                  ),
                ],
              ),
              ksizedBoxTextFieldCol,
              GestureDetector(
                child: Container(
                  decoration: boxDecoration(),
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Center(
                    child: Text(
                      'Cancel',
                      style: textStyleHeader(color: Color(0xFF242426), size: 16),
                    ),
                  ),
                ),
                onTap: null,
              )
            ],
          ),
        ),
      ),
    );
  }
}

const TextStyle kRedText = TextStyle(
  fontSize: 10.0,
  color: Colors.red,
);
