import 'package:flutter/material.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/filter.dart';
import 'package:roompal_ojt/widgets/pop_up.dart';
import 'package:roompal_ojt/widgets/sidebar.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';
import 'package:roompal_ojt/widgets/widget_property_owner.dart';

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
      endDrawer: SideBar(
        isLoggedIn: true,
        isRenter: false,
      ),
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
                child: Filter(),
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
                      style: textStyleHeader(color: Color(0xFF242731), size: 32),
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
      {required Color trackerColor, required String guestName, required EdgeInsets margin, required void Function()? onPressed}) {
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

  GestureDetector pendingRequest({required int totalRequest, required void Function()? onTap}) {
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
