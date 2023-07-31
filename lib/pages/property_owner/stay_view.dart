import 'package:flutter/material.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';
import 'package:roompal_ojt/widgets/widget_property_owner.dart';
import 'package:roompal_ojt/widgets/popup_widgets.dart';

class StayView extends StatefulWidget {
  const StayView({super.key});
  static const String id = 'StayView';

  @override
  State<StayView> createState() => _StayViewState();
}

class _StayViewState extends State<StayView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      endDrawer: buildSideBar(context),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: StayViewSection(),
      ),
    );
  }
}

class StayViewSection extends StatefulWidget {
  const StayViewSection({super.key});

  @override
  State<StayViewSection> createState() => _StayViewSectionState();
}

class _StayViewSectionState extends State<StayViewSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          //search bar and filter box
          Row(
            children: <Widget>[
              Expanded(
                flex: 4,
                child: searchBar(),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: null,
                  child: const FilterBox(),
                ),
              ),
            ],
          ),
          ksizedBoxTextFieldCol,
          //Property Count
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: PropertyCount('Total Property', '25'),
              ),
              Flexible(
                child: PropertyCount('Total Guest', '30'),
              ),
            ],
          ),
          kSizedBox,
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: boxDecoration(),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Stay View',
                      style:
                          textStyleHeader(color: Color(0xFF242731), size: 32),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: null,
                          icon: Icon(Icons.arrow_back_ios),
                        ),
                        IconButton(
                          onPressed: null,
                          icon: Icon(Icons.arrow_forward_ios),
                        ),
                      ],
                    )
                  ],
                ),
                ksizedBoxTextFieldCol,
                Row(
                  children: [
                    legend(
                      label: 'Transient',
                      color: Color(0xFF5C8BE1),
                    ),
                    ksizedBoxTextFieldRow,
                    legend(
                      label: 'Monthly',
                      color: Colors.green,
                    ),
                  ],
                ),
                Row(
                  children: [
                    stats(label: 'Occupied', number: 10),
                    stats(label: 'Pending', number: 5),
                    stats(label: 'Vacant', number: 15),
                  ],
                ),
                ksizedBoxTextFieldCol,
                Table(
                  border: TableBorder.all(
                    color: Colors.grey,
                  ),
                  columnWidths: {
                    0: FlexColumnWidth(2),
                    1: FlexColumnWidth(1),
                    2: FlexColumnWidth(1),
                    3: FlexColumnWidth(1),
                    4: FlexColumnWidth(1),
                  },
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: [
                    TableRow(children: [
                      tableHeader(label: 'Room'),
                      tableHeader(label: '3 Jul Mon'),
                      tableHeader(label: '4 Jul Tue'),
                      tableHeader(label: '5 Jul Wed'),
                      tableHeader(label: '6 Jul Thu'),
                    ]),
                    TableRow(children: [
                      tableHeader(label: 'Bedspace'),
                      pendingRequest(
                        totalRequest: 2,
                        onTap: () => showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (BuildContext context) {
                            return PendingRequestPrompt();
                          },
                        ),
                      ),
                      Container(),
                      pendingRequest(totalRequest: 3, onTap: () {}),
                      Container(),
                    ]),
                  ],
                ),
                Table(
                  border: TableBorder.all(
                    color: Colors.grey,
                  ),
                  columnWidths: {
                    0: FlexColumnWidth(2),
                    1: FlexColumnWidth(4),
                  },
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: [
                    TableRow(children: [
                      tableHeader(label: '#001'),
                      Column(
                        children: [
                          guestTracker(
                            guestName: 'Anonymous',
                            trackerColor: Color(0xFF5C8BE1),
                            margin: EdgeInsets.only(
                              right: 45,
                              top: 5,
                              bottom: 5,
                            ),
                            onPressed: () => showDialog(
                              barrierDismissible: false,
                              context: context,
                              builder: (BuildContext context) {
                                return DialogButtonDetails();
                              },
                            ),
                          ),
                          guestTracker(
                            guestName: 'Anonymous',
                            trackerColor: Colors.green,
                            margin: EdgeInsets.only(
                              right: 45,
                              bottom: 5,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      tableHeader(label: '#002'),
                      Column(),
                    ]),
                    TableRow(children: [
                      tableHeader(label: '#003'),
                      guestTracker(
                        guestName: 'Anonymous',
                        trackerColor: Color(0xFF5C8BE1),
                        margin: EdgeInsets.only(
                          right: 20,
                          left: 20,
                          top: 5,
                          bottom: 5,
                        ),
                        onPressed: () {},
                      ),
                    ]),
                    TableRow(children: [
                      tableHeader(label: '#004'),
                      Column(),
                    ]),
                    TableRow(children: [
                      tableHeader(label: '#005'),
                      guestTracker(
                        guestName: 'Anonymous',
                        trackerColor: Color(0xFF5C8BE1),
                        margin: EdgeInsets.only(
                          right: 20,
                          left: 20,
                          top: 5,
                          bottom: 5,
                        ),
                        onPressed: () {},
                      ),
                    ]),
                    TableRow(children: [
                      tableHeader(label: '#006'),
                      Column(),
                    ]),
                    TableRow(children: [
                      tableHeader(label: '#007'),
                      Column(),
                    ]),
                    TableRow(children: [
                      tableHeader(label: '#008'),
                      Column(),
                    ]),
                  ],
                ),
                kSizedBox,
              ],
            ),
          ),
        ],
      ),
    );
  }

  GestureDetector guestTracker(
      {required Color trackerColor,
      required String guestName,
      required EdgeInsets margin,
      required void Function()? onPressed}) {
    return GestureDetector(
      child: Container(
        margin: margin,
        padding: EdgeInsets.only(left: 15),
        decoration: BoxDecoration(
          color: trackerColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              guestName,
              style: textStyleHeader(color: Colors.white, size: 12),
            ),
            IconButton(
              icon: Icon(Icons.cancel_outlined),
              color: Colors.white,
              onPressed: onPressed,
            ),
          ],
        ),
      ),
      onTap: null,
    );
  }

  GestureDetector pendingRequest(
      {required int totalRequest, required void Function()? onTap}) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 14, vertical: 5),
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(150),
          color: Color(0xFFFEB618),
        ),
        child: Text(
          totalRequest.toString(),
          style: textStyleHeader(color: Colors.white, size: 12),
          textAlign: TextAlign.center,
        ),
      ),
      onTap: onTap,
    );
  }

  Text tableHeader({required String label}) {
    return Text(
      label,
      style: textStyleHeader(color: Color(0xFF242731), size: 12),
      textAlign: TextAlign.center,
    );
  }

  Row stats({required String label, required int number}) {
    return Row(
      children: [
        Text(
          '$label:',
          style: textStyleContent(
            size: 16,
            color: Color(0xFF242731),
          ),
        ),
        Text(
          number.toString(),
          style: textStyleContent(
            size: 16,
            color: Color(0xFF242731),
          ),
        ),
        ksizedBoxTextFieldRow,
      ],
    );
  }

  Row legend({required String label, required Color color}) {
    return Row(
      children: [
        Text(
          label,
          style: textStyleContent(
            size: 18,
            color: Color(0xFF242731),
          ),
        ),
        ksizedBoxTextFieldRow,
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(5),
          ),
        )
      ],
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
                child: selectedButton == 'Booking'
                    ? BookingWidget()
                    : TenantWidget(),
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
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
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
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
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
