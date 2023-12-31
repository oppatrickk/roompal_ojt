import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roompal_ojt/Renter_State.dart';
import 'package:roompal_ojt/pages/booking/contact_details.dart';
import 'package:roompal_ojt/pages/room_details.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/textfield_widget.dart';
import 'package:roompal_ojt/widgets/sidebar.dart';
import '../../../widgets/widget_elements.dart';

class Booking extends StatefulWidget {
  const Booking({Key? key}) : super(key: key);
  static const String id = 'booking_page';

  @override
  BookingState createState() => BookingState();
}

class BookingState extends State<Booking> {
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
    RenterState renterState = Provider.of<RenterState>(context);
    bool isRenterStatus = renterState.isRenter;
    return Scaffold(
      appBar: appBar(),
      endDrawer: SideBar(
        isRenter: isRenterStatus, //
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.ideographic,
                children: <Widget>[
                  bookingSteps(
                    label: 'Booking',
                    textColor: const Color(0xFF1C39BB),
                    lineColor: const Color(0xFFFEB618),
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

              headerTextStyle(label: 'Room Name', style: kRoomName),
              headerTextStyle(label: 'Room #0000', style: kRoomNumber),
              kSizedBox,
              headerTextStyle(
                label: 'Choose your booking details',
                style: textStyleContent(
                  size: 16,
                  color: const Color(0xFF575F6E),
                ),
              ),
              ksizedBoxTextFieldCol,

              //Room Category
              textField1(label: 'Room Category', hint: 'Enter Room Category'),
              kSizedBox,

              //Choose Date
              Container(
                padding: const EdgeInsets.all(10),
                decoration: boxDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      'Choose your dates',
                      style: textStyleContent(
                        size: 14,
                        color: const Color(0xFF242426),
                      ),
                    ),
                    ksizedBoxTextFieldCol,
                    Row(
                      children: <Widget>[
                        Expanded(child: calendarIcon()),
                        Expanded(
                          flex: 2,
                          child: dateDisplay(label: 'Check-In', month: 07, day: 03, year: 2023),
                        ),
                        ksizedBoxTextFieldRow,
                        Expanded(
                          flex: 2,
                          child: dateDisplay(label: 'Check-Out', month: 07, day: 17, year: 2023),
                        ),
                      ],
                    ),
                    ksizedBoxTextFieldCol,
                    SizedBox(
                      width: 50,
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              const Text(
                                '14 days',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF242426),
                                ),
                              ),
                              Container(
                                height: 1,
                                width: 100,
                                color: const Color(0xFF242426),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    ksizedBoxTextFieldCol,
                  ],
                ),
              ),

              kSizedBox,

              //Choose option: transient / monthly
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
                        color: const Color(0xFF575F6E),
                      ),
                    ),
                    DropdownButton<String>(
                      isExpanded: true,
                      value: dropdownValue,
                      icon: const Icon(Icons.arrow_drop_down),
                      elevation: 16,
                      style: const TextStyle(
                        color: Color(0xFF242426),
                        fontSize: 18,
                        fontFamily: 'ProximaNovaRegular',
                        fontWeight: FontWeight.w600,
                      ),
                      underline: Container(
                        height: 1,
                        color: const Color(0xFF575F6E),
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
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
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
                padding: const EdgeInsets.all(10),
                decoration: boxDecoration(),
                child: Column(
                  children: <Widget>[
                    textFieldWithHintText(label: 'Number of Guest', hint: 'Enter the number of guest'),
                    ksizedBoxTextFieldCol,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
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

  Text headerTextStyle({required String label, required TextStyle style}) {
    return Text(
      label,
      textAlign: TextAlign.start,
      style: style,
    );
  }

  Column dateDisplay({required String label, required int month, required int day, required int year}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: textStyleContent(
            size: 14,
            color: const Color(0xFF242426),
          ),
        ),
        Table(
          border: TableBorder.all(
            color: Colors.grey,
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          columnWidths: const <int, TableColumnWidth>{
            0: FlexColumnWidth(1),
            1: FlexColumnWidth(1),
            2: FlexColumnWidth(2),
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: <TableRow>[
            TableRow(children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  month.toString(),
                  style: textStyleContent(
                    size: 16,
                    color: const Color(0xFF242426),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  day.toString(),
                  style: textStyleContent(
                    size: 16,
                    color: const Color(0xFF242426),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  year.toString(),
                  style: textStyleContent(
                    size: 16,
                    color: const Color(0xFF242426),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ]),
          ],
        ),
      ],
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
              color: const Color(0xFF242426),
            ),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: const Icon(
            Icons.calendar_today_outlined,
            color: Color(0xFF242426),
          ),
        ),
      ),
    );
  }
}

const TextStyle kRedText = TextStyle(
  fontSize: 12.0,
  color: Colors.red,
  fontFamily: 'ProximaNovaRegular',
);
