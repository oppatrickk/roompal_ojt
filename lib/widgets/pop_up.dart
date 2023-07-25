import 'package:flutter/material.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

class PopUpTemporary extends StatelessWidget {
  const PopUpTemporary({super.key});
  static const String id = 'PopUpTemporary';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return DialogButton();
                  },
                );
              },
              child: Text('Sample 1'),
            ),
            ksizedBoxTextFieldCol,
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return CustomDialogButton();
                  },
                );
              },
              child: Text('Sample 2'),
            ),
            ksizedBoxTextFieldCol,
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return DialogButtonDetails();
                  },
                );
              },
              child: Text('Sample 3'),
            ),
          ],
        ),
      ),
    );
  }
}

class DialogButton extends StatelessWidget {
  const DialogButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Alert'),
      content: Text('something something'),
      actions: <Widget>[
        TextButton(onPressed: () {}, child: Text('Okay')),
        TextButton(onPressed: () {}, child: Text('Cancel')),
      ],
    );
  }
}

class CustomDialogButton extends StatelessWidget {
  const CustomDialogButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      child: SizedBox(
        height: 180,
        child: Column(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(4),
                  topLeft: Radius.circular(4),
                ),
                color: Color(0xFF1C39BB),
              ),
              padding: const EdgeInsets.all(12),
              height: 50,
              child: const SizedBox.expand(
                child: Text(
                  'Property Listing',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
                top: 20,
                bottom: 2,
              ),
              child: const Text(
                'Submit your Listing?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
            ksizedBoxTextFieldCol,
            const Divider(
              indent: 20,
              endIndent: 20,
              thickness: 1,
              color: Color(0xFFF1F1F1),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    surfaceTintColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Color(0xFFFEB618),
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: const Text(
                    'No',
                    style: TextStyle(color: Color(0xFFFEB618)),
                  ),
                ),
                ksizedBoxTextFieldRow,
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    surfaceTintColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Color(0xFFFEB618),
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: const Text(
                    'Yes',
                    style: TextStyle(color: Color(0xFFFEB618)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DialogButtonDetails extends StatefulWidget {
  DialogButtonDetails({Key? key}) : super(key: key);

  @override
  _DialogButtonDetailsState createState() => _DialogButtonDetailsState();
}

class _DialogButtonDetailsState extends State<DialogButtonDetails> {
  String selectedButton = 'Booking';

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      child: SizedBox(
        height: 550,
        child: Column(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(4),
                  topLeft: Radius.circular(4),
                ),
                color: Color(0xFF1C39BB),
              ),
              padding: const EdgeInsets.all(12),
              height: 50,
              child: const SizedBox.expand(
                child: const Text(
                  'Details',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF96A9CC),
              ),
              padding: const EdgeInsets.all(12),
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        selectedButton = 'Booking';
                      });
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                      padding: EdgeInsets.zero,
                    ),
                    child: const Text(
                      'Booking',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        selectedButton = 'Tenant';
                      });
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                      padding: EdgeInsets.zero,
                    ),
                    child: const Text(
                      'Tenant',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: selectedButton == 'Booking' ? BookingWidget() : TenantWidget(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BookingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Room No: 001',
            textAlign: TextAlign.center,
          ),
          ksizedBoxTextFieldCol,
          Text('Start Date'),
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Color(0xFF808080)),
              borderRadius: BorderRadius.circular(5),
              color: const Color(0xFFF1F1F1),
            ),
            child: Row(
              children: [
                ksizedBoxTextFieldRow,
                Icon(
                  Icons.calendar_today_outlined,
                  color: Colors.yellow[800],
                ),
                ksizedBoxTextFieldRow,
                ksizedBoxTextFieldRow,
                Text('07'),
                VerticalDivider(
                  thickness: 2,
                  color: Colors.black,
                  width: 10,
                ),
                Text('03'),
                VerticalDivider(
                  thickness: 2,
                  color: Colors.black,
                  width: 10,
                ),
                Text('2023'),
                VerticalDivider(
                  thickness: 2,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          ksizedBoxTextFieldCol,
          Text('End Date'),
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Color(0xFF808080)),
              borderRadius: BorderRadius.circular(5),
              color: const Color(0xFFF1F1F1),
            ),
            child: Row(
              children: [
                ksizedBoxTextFieldRow,
                Icon(
                  Icons.calendar_today_outlined,
                  color: Colors.yellow[800],
                ),
                ksizedBoxTextFieldRow,
                ksizedBoxTextFieldRow,
                Text('07'),
                VerticalDivider(
                  thickness: 2,
                  color: Colors.black,
                  width: 10,
                ),
                Text('06'),
                VerticalDivider(
                  thickness: 2,
                  color: Colors.black,
                  width: 10,
                ),
                Text('2023'),
                VerticalDivider(
                  thickness: 2,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          ksizedBoxTextFieldCol,
          Text('Number of Tenant'),
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Color(0xFF808080)),
              borderRadius: BorderRadius.circular(5),
              color: const Color(0xFFF1F1F1),
            ),
            child: Row(
              children: [
                ksizedBoxTextFieldRow,
                Icon(
                  Icons.person_outline,
                  color: Colors.yellow[800],
                ),
                ksizedBoxTextFieldRow,
                ksizedBoxTextFieldRow,
                Text('1'),
              ],
            ),
          ),
          ksizedBoxTextFieldCol,
          Text('Bill To'),
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Color(0xFF808080)),
              borderRadius: BorderRadius.circular(5),
              color: const Color(0xFFF1F1F1),
            ),
            child: Row(
              children: [
                ksizedBoxTextFieldRow,
                Icon(
                  Icons.payment_outlined,
                  color: Colors.yellow[800],
                ),
                ksizedBoxTextFieldRow,
                ksizedBoxTextFieldRow,
                Text('Pipay My Loves'),
              ],
            ),
          ),
          ksizedBoxTextFieldCol,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text('Transient'),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Color(0xFF808080)),
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xFFF1F1F1),
                    ),
                    child: Row(
                      children: [
                        ksizedBoxTextFieldRow,
                        Text(
                          '₱ ',
                          style: TextStyle(color: Colors.yellow[800]),
                        ),
                        ksizedBoxTextFieldRow,
                        ksizedBoxTextFieldRow,
                        Text('3500.00'),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Transaction Fee',
                    style: TextStyle(
                      color: Color(0xFF1C39BB),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Color(0xFF1C39BB),
                      ),
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xFFF1F1F1),
                    ),
                    child: Row(
                      children: [
                        ksizedBoxTextFieldRow,
                        Text(
                          '₱ ',
                          style: TextStyle(
                            color: Color(0xFF1C39BB),
                          ),
                        ),
                        ksizedBoxTextFieldRow,
                        ksizedBoxTextFieldRow,
                        Text(
                          '3,500.00',
                          style: TextStyle(
                            color: Color(0xFF1C39BB),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          ksizedBoxTextFieldCol,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text('Monthly'),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Color(0xFF808080)),
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xFFF1F1F1),
                    ),
                    child: Row(
                      children: [
                        ksizedBoxTextFieldRow,
                        Text(
                          '₱ ',
                          style: TextStyle(color: Colors.yellow[800]),
                        ),
                        ksizedBoxTextFieldRow,
                        ksizedBoxTextFieldRow,
                        Text('15,000.00'),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Transaction Fee',
                    style: TextStyle(
                      color: Color(0xFF1C39BB),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Color(0xFF1C39BB),
                      ),
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xFFF1F1F1),
                    ),
                    child: Row(
                      children: [
                        ksizedBoxTextFieldRow,
                        Text(
                          '₱ ',
                          style: TextStyle(
                            color: Color(0xFF1C39BB),
                          ),
                        ),
                        ksizedBoxTextFieldRow,
                        ksizedBoxTextFieldRow,
                        Text(
                          '1,500.00',
                          style: TextStyle(
                            color: Color(0xFF1C39BB),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TenantWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Tenant Information',
        style: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 16,
          color: Colors.black,
        ),
      ),
    );
  }
}
