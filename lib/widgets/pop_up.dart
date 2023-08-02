import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roompal_ojt/Renter_State.dart';
import 'package:roompal_ojt/pages/landing_page.dart';
import 'package:roompal_ojt/pages/property_owner/bottom_navigation.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/popup_widgets.dart';
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
            ksizedBoxTextFieldCol,
            ElevatedButton(
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (BuildContext context) {
                    return const CustomDialogButton4();
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
                    return CustomDialogButton3(
                      content: 'Thank You for Trusting Roompal!',
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    );
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
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return RoomAssignment();
                  },
                );
              },
              child: Text('Room Assignment'),
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
  CustomDialogButton3({super.key, required this.content, required this.onPressed});
  final String content;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: SizedBox(
        height: 240,
        child: Stack(
          clipBehavior: Clip.none,
          alignment: AlignmentDirectional.topCenter,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      topLeft: Radius.circular(25),
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
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      child: Text(
                        content,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ksizedBoxTFB,
                    Container(padding: EdgeInsets.symmetric(horizontal: 15), child: divider),
                    ElevatedButton(
                      onPressed: onPressed,
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
                  ],
                )
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

class CustomDialogButton4 extends StatelessWidget {
  const CustomDialogButton4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, mainAxisSize: MainAxisSize.min, children: [
        titleDesign(label: 'Payment'),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kSizedBox,
              Text(
                'Confirm your payment?',
                style: textStyleContent(
                  size: 16,
                  color: Color(0xFF242426),
                ),
              ),
              ksizedBoxTFB,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  puButton(
                    onPressed: () => Navigator.pop(context),
                    color: Colors.red,
                    label: 'No',
                  ),
                  ksizedBoxTextFieldRow,
                  puButton(
                    onPressed: null,
                    color: Colors.green,
                    label: 'Yes',
                  ),
                ],
              ),
              kSizedBox,
            ],
          ),
        ),
      ]),
    );
  }
}

class Confirmation extends StatelessWidget {
  const Confirmation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, mainAxisSize: MainAxisSize.min, children: [
        titleDesign(label: 'Property Listing'),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kSizedBox,
              Text(
                'Submit your listing?',
                style: textStyleContent(
                  size: 16,
                  color: Color(0xFF242426),
                ),
              ),
              ksizedBoxTFB,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  puButton(
                    onPressed: () => Navigator.pop(context),
                    color: Colors.red,
                    label: 'No',
                  ),
                  ksizedBoxTextFieldRow,
                  puButton(
                    onPressed: () => showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (BuildContext context) {
                        return const Message();
                      },
                    ),
                    color: Colors.green,
                    label: 'Yes',
                  ),
                ],
              ),
              kSizedBox,
            ],
          ),
        ),
      ]),
    );
  }
}

class Message extends StatelessWidget {
  const Message({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: SizedBox(
        height: 240,
        child: Stack(
          clipBehavior: Clip.none,
          alignment: AlignmentDirectional.topCenter,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      topLeft: Radius.circular(25),
                    ),
                    color: Color(0xFF1C39BB),
                  ),
                  padding: const EdgeInsets.all(12),
                  height: 50,
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      child: Text(
                        'Your listing has been \n added!',
                        textAlign: TextAlign.center,
                        style: textStyleContent(
                          size: 20,
                          color: Color(0xFF242426),
                        ),
                      ),
                    ),
                    ksizedBoxTFB,
                    Container(padding: EdgeInsets.symmetric(horizontal: 15), child: divider),
                    ElevatedButton(
                      onPressed: () {
                        // Navigator.pushNamed(context, ListingOwner.id)
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          BottomNavigation.id,
                          (route) => route.isFirst,
                          arguments: 1, //navigation bar index
                        );
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
                  ],
                )
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
        borderRadius: BorderRadius.circular(25),
      ),
      surfaceTintColor: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          titleDesign(label: 'Details'),
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
                  child: selectedButton == 'Booking'
                      ? const Text(
                          'Booking',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Color(0xFF242426),
                          ),
                        )
                      : const Text(
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
                  child: selectedButton == 'Tenant'
                      ? const Text(
                          'Tenant',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Color(0xFF242426),
                          ),
                        )
                      : const Text(
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
      padding: const EdgeInsets.only(left: 22, right: 22),
      child: ListView(
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
              popupTextFieldContent(
                label: 'Start Date',
                icon: Icons.calendar_month_outlined,
                content: '07 | 03 | 2023',
              ),
              ksizedBoxTextFieldCol,
              popupTextFieldContent(
                label: 'End Date',
                icon: Icons.calendar_month_outlined,
                content: '07 | 06 | 2023',
              ),
              ksizedBoxTextFieldCol,
              popupTextFieldContent(
                label: 'Number of Tenant',
                icon: Icons.group,
                content: '1',
              ),
              ksizedBoxTextFieldCol,
              popupTextFieldContent(
                label: 'Bill To',
                icon: Icons.payment_outlined,
                content: 'Pipay My Loves',
              ),
              ksizedBoxTextFieldCol,
              priceTextField(
                label: 'Transient',
                value: 3500.00,
                textColor: Color(0xFF242426),
                leadingColor: Color(0xFFFEB618),
                borderColor: Color(0xFF808080),
              ),
              ksizedBoxTextFieldCol,
              priceTextField(
                label: 'Transaction Fee',
                value: 350.00,
                textColor: Color(0xFF1C39BB),
                leadingColor: Color(0xFF1C39BB),
                borderColor: Color(0xFF1C39BB),
              ),
              ksizedBoxTextFieldCol,
              priceTextField(
                label: 'Monthly',
                value: 15000.00,
                textColor: Color(0xFF242426),
                leadingColor: Color(0xFFFEB618),
                borderColor: Color(0xFF808080),
              ),
              ksizedBoxTextFieldCol,
              priceTextField(
                label: 'Transaction Fee',
                value: 1500.00,
                textColor: Color(0xFF1C39BB),
                leadingColor: Color(0xFF1C39BB),
                borderColor: Color(0xFF1C39BB),
              ),
              ksizedBoxTextFieldCol,
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
      padding: EdgeInsets.only(left: 22, right: 22),
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
              popupTextFieldContent(
                label: 'Full Name',
                icon: Icons.person,
                content: 'Pipay My Loves',
              ),
              ksizedBoxTextFieldCol,
              popupTextFieldContent(
                label: 'Email',
                icon: Icons.email,
                content: 'pipay@gmail.com',
              ),
              ksizedBoxTextFieldCol,
              popupTextFieldContent(
                label: 'Phone Number',
                icon: Icons.phone,
                content: '(+63) | 942 3183 681',
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
  bool isCDVisible = false;
  bool isARVisible = false;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      surfaceTintColor: Colors.white,
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, mainAxisSize: MainAxisSize.min, children: [
        titleDesign(label: 'Pending Request'),
        SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              GestureDetector(
                child: pendingRequestContent(tenantName: 'Cardo Dalisay'),
                onTap: () => setState(() {
                  isCDVisible = !isCDVisible;
                }),
              ),
              ksizedBoxTextFieldCol,
              Visibility(
                visible: isCDVisible,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      popupTextFieldContent(
                        label: 'Room Number',
                        icon: Icons.meeting_room,
                        content: '002',
                      ),
                      ksizedBoxTextFieldCol,
                      popupTextFieldContent(
                        label: 'Start Date',
                        icon: Icons.calendar_month_outlined,
                        content: '07 | 03 | 2023',
                      ),
                      ksizedBoxTextFieldCol,
                      popupTextFieldContent(
                        label: 'End Date',
                        icon: Icons.calendar_month_outlined,
                        content: '07 | 06 | 2023',
                      ),
                      ksizedBoxTextFieldCol,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          puButton(
                            onPressed: () => Navigator.canPop(context),
                            color: Colors.red,
                            label: 'Decline',
                          ),
                          ksizedBoxTextFieldRow,
                          puButton(
                            onPressed: () => showDialog(
                              barrierDismissible: false,
                              context: context,
                              builder: (BuildContext context) {
                                return RoomAssignment();
                              },
                            ),
                            color: Colors.green,
                            label: 'Assign',
                          ),
                        ],
                      ),
                      kSizedBox,
                    ],
                  ),
                ),
              ),
              GestureDetector(
                child: pendingRequestContent(tenantName: 'Alden Ritsards'),
                onTap: () => setState(() {
                  isARVisible = !isARVisible;
                }),
              ),
              ksizedBoxTextFieldCol,
              Visibility(
                visible: isARVisible,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      popupTextFieldContent(
                        label: 'Room Number',
                        icon: Icons.meeting_room,
                        content: '002',
                      ),
                      ksizedBoxTextFieldCol,
                      popupTextFieldContent(
                        label: 'Start Date',
                        icon: Icons.calendar_month_outlined,
                        content: '07 | 03 | 2023',
                      ),
                      ksizedBoxTextFieldCol,
                      popupTextFieldContent(
                        label: 'End Date',
                        icon: Icons.calendar_month_outlined,
                        content: '07 | 06 | 2023',
                      ),
                      ksizedBoxTextFieldCol,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          puButton(
                            onPressed: () => Navigator.pop(context),
                            color: Colors.red,
                            label: 'Decline',
                          ),
                          ksizedBoxTextFieldRow,
                          puButton(
                            onPressed: () => showDialog(
                              barrierDismissible: false,
                              context: context,
                              builder: (BuildContext context) {
                                return RoomAssignment();
                              },
                            ),
                            color: Colors.green,
                            label: 'Assign',
                          ),
                        ],
                      ),
                      kSizedBox,
                    ],
                  ),
                ),
              ),
              ksizedBoxTextFieldCol,
            ],
          ),
        ),
      ]),
    );
  }
}

class RoomAssignment extends StatefulWidget {
  const RoomAssignment({Key? key}) : super(key: key);

  @override
  State<RoomAssignment> createState() => _RoomAssignmentState();
}

class _RoomAssignmentState extends State<RoomAssignment> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      surfaceTintColor: Colors.white,
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, mainAxisSize: MainAxisSize.min, children: [
        titleDesign(label: 'Room Assignment'),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kSizedBox,
              Text(
                'Assign to Room #002?',
                style: textStyleContent(
                  size: 16,
                  color: Color(0xFF242426),
                ),
              ),
              ksizedBoxTFB,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  puButton(
                    onPressed: () => Navigator.pop(context),
                    color: Colors.red,
                    label: 'Cancel',
                  ),
                  ksizedBoxTextFieldRow,
                  puButton(
                    onPressed: () => Navigator.pop(context),
                    color: Colors.green,
                    label: 'Assign',
                  ),
                ],
              ),
              kSizedBox,
            ],
          ),
        ),
      ]),
    );
  }
}

class PropertyOwner extends StatelessWidget {
  const PropertyOwner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RenterState renterState = Provider.of<RenterState>(context);
    return Dialog(
      surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, mainAxisSize: MainAxisSize.min, children: [
        titleDesign(label: 'Switch Role'),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kSizedBox,
              Text(
                'Switch to Property Owner?',
                style: textStyleContent(
                  size: 16,
                  color: Color(0xFF242426),
                ),
              ),
              ksizedBoxTFB,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  puButton(
                    onPressed: () => Navigator.pop(context),
                    color: Colors.red,
                    label: 'No',
                  ),
                  ksizedBoxTextFieldRow,
                  puButton(
                    onPressed: () {
                      Navigator.pushNamed(context, LandingPage.id);
                      renterState.setFalse();
                    },
                    color: Colors.green,
                    label: 'Yes',
                  ),
                ],
              ),
              kSizedBox,
            ],
          ),
        ),
      ]),
    );
  }
}

class Renter extends StatelessWidget {
  const Renter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RenterState renterState = Provider.of<RenterState>(context);
    return Dialog(
      surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, mainAxisSize: MainAxisSize.min, children: [
        titleDesign(label: 'Switch Role'),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kSizedBox,
              Text(
                'Switch to Renter?',
                style: textStyleContent(
                  size: 16,
                  color: Color(0xFF242426),
                ),
              ),
              ksizedBoxTFB,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  puButton(
                    onPressed: () => Navigator.pop(context),
                    color: Colors.red,
                    label: 'No',
                  ),
                  ksizedBoxTextFieldRow,
                  puButton(
                    onPressed: () {
                      Navigator.pushNamed(context, LandingPage.id);
                      renterState.setTrue();
                    },
                    color: Colors.green,
                    label: 'Yes',
                  ),
                ],
              ),
              kSizedBox,
            ],
          ),
        ),
      ]),
    );
  }
}
