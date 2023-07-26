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
                    return const DialogButton();
                  },
                );
              },
              child: const Text('Sample 1'),
            ),
            ksizedBoxTextFieldCol,
            ElevatedButton(
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (BuildContext context) {
                    return const CustomDialogButton1(
                      'Property Listing',
                      'Submit your Listing?',
                    );
                  },
                );
              },
              child: const Text('Listing'),
            ),
            ksizedBoxTextFieldCol,
            ElevatedButton(
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (BuildContext context) {
                    return const CustomDialogButton1(
                      'Payment',
                      'Confirm your Payment?',
                    );
                  },
                );
              },
              child: const Text('Payment'),
            ),
            ksizedBoxTextFieldCol,
            ElevatedButton(
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (BuildContext context) {
                    return const CustomDialogButton2('Thank You for Trusting Roompal!');
                  },
                );
              },
              child: const Text('Thank You'),
            ),
            ksizedBoxTextFieldCol,
            ElevatedButton(
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (BuildContext context) {
                    return const CustomDialogButton3('Thank You for Trusting Roompal!');
                  },
                );
              },
              child: const Text('Success'),
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
              child: const Text('Sample 3'),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return PendingRequestPrompt();
                  },
                );
              },
              child: Text('Pending Request'),
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
      title: const Text('Alert'),
      content: const Text('something something'),
      actions: <Widget>[
        TextButton(onPressed: () {}, child: const Text('Okay')),
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Cancel')),
      ],
    );
  }
}

class CustomDialogButton3 extends StatelessWidget {
  const CustomDialogButton3(this.content, {super.key});
  final String content;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      child: SizedBox(
        height: 180,
        child: Stack(
          clipBehavior: Clip.none,
          alignment: AlignmentDirectional.topCenter,
          children: [
            Column(
              children: <Widget>[
                Container(
                  width: 300,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(4),
                      topLeft: Radius.circular(4),
                    ),
                    color: Color(0xFF1C39BB),
                  ),
                  padding: const EdgeInsets.all(12),
                  height: 50,
                  child: const Column(
                    children: [
                      //sparkle icons/ photo
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 25,
                    bottom: 5,
                  ),
                  child: Text(
                    content,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                ),
                const Divider(
                  indent: 20,
                  endIndent: 20,
                  thickness: 1,
                  color: Color(0xFFF1F1F1),
                ),
                SizedBox(
                  height: 20,
                  width: 70,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      surfaceTintColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Text(
                      'Ok',
                      style: TextStyle(color: Color(0xFFFEB618)),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              decoration: const BoxDecoration(),
              padding: const EdgeInsets.all(10),
              child: const CircleAvatar(
                backgroundColor: Color(0xFF6CE679),
                radius: 33,
                child: Icon(
                  Icons.check,
                  size: 50,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomDialogButton2 extends StatelessWidget {
  const CustomDialogButton2(this.content, {super.key});
  final String content;

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
              width: 300,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(4),
                  topLeft: Radius.circular(4),
                ),
                color: Color(0xFF1C39BB),
              ),
              padding: const EdgeInsets.all(12),
              height: 50,
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
                bottom: 5,
              ),
              child: Text(
                content,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
            ),
            const Divider(
              indent: 20,
              endIndent: 20,
              thickness: 1,
              color: Color(0xFFF1F1F1),
            ),
            SizedBox(
              height: 20,
              width: 70,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  surfaceTintColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text(
                  'Ok',
                  style: TextStyle(color: Color(0xFFFEB618)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomDialogButton1 extends StatelessWidget {
  const CustomDialogButton1(this.title, this.content, {super.key});
  final String title;
  final String content;

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
              child: SizedBox.expand(
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
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
              child: Text(
                content,
                textAlign: TextAlign.center,
                style: const TextStyle(
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
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
                    padding: const EdgeInsets.symmetric(horizontal: 35),
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
                      fontSize: 14,
                      color: Color(0xFF242426),
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
                      fontSize: 14,
                      color: Color(0xFF242426),
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
    );
  }
}

class BookingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Column(
        children: [
          Text(
            'Room No: 001',
            textAlign: TextAlign.center,
            style: textStyleContent(size: 14, color: Color(0xFF242426)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ksizedBoxTextFieldCol,
              Text(
                'Start Date',
                style: textStyleContent(size: 14, color: Color(0xFF242426)),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: const Color(0xFF808080)),
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
                    Text(
                      '07',
                      style: textStyleContent(size: 14, color: Color(0xFF242426)),
                    ),
                    VerticalDivider(
                      thickness: 2,
                      color: Colors.black,
                      width: 10,
                    ),
                    Text(
                      '03',
                      style: textStyleContent(size: 14, color: Color(0xFF242426)),
                    ),
                    VerticalDivider(
                      thickness: 2,
                      color: Colors.black,
                      width: 10,
                    ),
                    Text(
                      '2023',
                      style: textStyleContent(size: 14, color: Color(0xFF242426)),
                    ),
                    VerticalDivider(
                      thickness: 2,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              ksizedBoxTextFieldCol,
              Text(
                'End Date',
                style: textStyleContent(size: 14, color: Color(0xFF242426)),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: const Color(0xFF808080)),
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
                    Text(
                      '07',
                      style: textStyleContent(size: 14, color: Color(0xFF242426)),
                    ),
                    VerticalDivider(
                      thickness: 2,
                      color: Colors.black,
                      width: 10,
                    ),
                    Text(
                      '06',
                      style: textStyleContent(size: 14, color: Color(0xFF242426)),
                    ),
                    VerticalDivider(
                      thickness: 2,
                      color: Colors.black,
                      width: 10,
                    ),
                    Text(
                      '2023',
                      style: textStyleContent(size: 14, color: Color(0xFF242426)),
                    ),
                    VerticalDivider(
                      thickness: 2,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              ksizedBoxTextFieldCol,
              Text(
                'Number of Tenant',
                style: textStyleContent(size: 14, color: Color(0xFF242426)),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: const Color(0xFF808080)),
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xFFF1F1F1),
                ),
                child: Row(
                  children: [
                    ksizedBoxTextFieldRow,
                    Icon(
                      Icons.group,
                      color: Colors.yellow[800],
                    ),
                    ksizedBoxTextFieldRow,
                    ksizedBoxTextFieldRow,
                    Text(
                      '1',
                      style: textStyleContent(size: 14, color: Color(0xFF242426)),
                    ),
                  ],
                ),
              ),
              ksizedBoxTextFieldCol,
              Text(
                'Bill To',
                style: textStyleContent(size: 14, color: Color(0xFF242426)),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: const Color(0xFF808080)),
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
                    Text(
                      'Pipay My Loves',
                      style: textStyleContent(size: 14, color: Color(0xFF242426)),
                    ),
                  ],
                ),
              ),
              ksizedBoxTextFieldCol,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Transient',
                          style: textStyleContent(size: 14, color: Color(0xFF242426)),
                        ),
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
                              Text(
                                '3500.00',
                                style: textStyleContent(size: 14, color: Color(0xFF242426)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  ksizedBoxTextFieldRow,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Transaction Fee',
                          style: textStyleContent(size: 14, color: Color(0xFF1C39BB)),
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
                                '350.00',
                                style: textStyleContent(size: 14, color: Color(0xFF1C39BB)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ksizedBoxTextFieldCol,
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Monthly',
                          style: textStyleContent(size: 14, color: Color(0xFF242426)),
                        ),
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
                              Text(
                                '15,000.00',
                                style: textStyleContent(size: 14, color: Color(0xFF242426)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  ksizedBoxTextFieldRow,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Transaction Fee',
                          style: textStyleContent(size: 14, color: Color(0xFF1C39BB)),
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
                                style: textStyleContent(size: 14, color: Color(0xFF1C39BB)),
                              ),
                            ],
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
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30),
      child: Column(
        children: [
          Text(
            'Room No: 001',
            textAlign: TextAlign.center,
            style: textStyleContent(size: 14, color: Color(0xFF242426)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ksizedBoxTextFieldCol,
              Text(
                'Full Name',
                style: textStyleContent(size: 14, color: Color(0xFF242426)),
              ),
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
                      Icons.person,
                      color: Colors.yellow[800],
                    ),
                    ksizedBoxTextFieldRow,
                    ksizedBoxTextFieldRow,
                    Text(
                      'Pipay My Loves',
                      style: textStyleContent(size: 14, color: Color(0xFF242426)),
                    ),
                  ],
                ),
              ),
              ksizedBoxTextFieldCol,
              Text(
                'Email',
                style: textStyleContent(size: 14, color: Color(0xFF242426)),
              ),
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
                      Icons.email,
                      color: Colors.yellow[800],
                    ),
                    ksizedBoxTextFieldRow,
                    ksizedBoxTextFieldRow,
                    Text(
                      'Pipay My Loves',
                      style: textStyleContent(size: 14, color: Color(0xFF242426)),
                    ),
                  ],
                ),
              ),
              ksizedBoxTextFieldCol,
              Text(
                'Phone Number',
                style: textStyleContent(size: 14, color: Color(0xFF242426)),
              ),
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
                      Icons.phone,
                      color: Colors.yellow[800],
                    ),
                    ksizedBoxTextFieldRow,
                    ksizedBoxTextFieldRow,
                    Text(
                      '(+639) | 942 3183 681',
                      style: textStyleContent(size: 14, color: Color(0xFF242426)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PendingRequestPrompt extends StatefulWidget {
  const PendingRequestPrompt({Key? key}) : super(key: key);

  @override
  State<PendingRequestPrompt> createState() => _PendingRequestPromptState();
}

class _PendingRequestPromptState extends State<PendingRequestPrompt> {
  bool? isVisible;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      surfaceTintColor: Colors.white,
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, mainAxisSize: MainAxisSize.min, children: [
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
              'Pending Request',
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
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              pendingRequestContent(tenantName: 'Cardo Dalisay'),
              ksizedBoxTextFieldCol,
              pendingRequestContent(tenantName: 'Alden Ritsards'),
            ],
          ),
        )
      ]),
    );
  }

  Container pendingRequestContent({required String tenantName}) {
    return Container(
      child: Column(
        children: [
          Container(),
          ListTile(
            title: Text(
              tenantName,
              style: textStyleContent(size: 18, color: Colors.black),
            ),
            trailing: iconStyle(
              icon: Icons.keyboard_arrow_down_rounded,
              color: Colors.yellow[800]!,
              size: 24,
            ),
          ),
          divider,
        ],
      ),
    );
  }
}
