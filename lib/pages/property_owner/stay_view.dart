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
        isRenter: false,
      ),
      body: const SingleChildScrollView(
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
              const Expanded(
                child: Filter(),
              ),
            ],
          ),
          ksizedBoxTextFieldCol,
          //Property Count
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
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
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: boxDecoration(),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Stay View',
                      style: textStyleHeader(color: const Color(0xFF242731), size: 32),
                    ),
                    const Row(
                      children: <Widget>[
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
                  children: <Widget>[
                    legend(
                      label: 'Transient',
                      color: const Color(0xFF5C8BE1),
                    ),
                    ksizedBoxTextFieldRow,
                    legend(
                      label: 'Monthly',
                      color: Colors.green,
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
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
                  columnWidths: const <int, TableColumnWidth>{
                    0: FlexColumnWidth(2),
                    1: FlexColumnWidth(1),
                    2: FlexColumnWidth(1),
                    3: FlexColumnWidth(1),
                    4: FlexColumnWidth(1),
                  },
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: <TableRow>[
                    TableRow(children: <Widget>[
                      tableHeader(label: 'Room'),
                      tableHeader(label: '3 Jul Mon'),
                      tableHeader(label: '4 Jul Tue'),
                      tableHeader(label: '5 Jul Wed'),
                      tableHeader(label: '6 Jul Thu'),
                    ]),
                    TableRow(children: <Widget>[
                      tableHeader(label: 'Bedspace'),
                      pendingRequest(
                        totalRequest: 2,
                        onTap: () => showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (BuildContext context) {
                            return const PendingRequestPrompt();
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
                  columnWidths: const <int, TableColumnWidth>{
                    0: FlexColumnWidth(2),
                    1: FlexColumnWidth(4),
                  },
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: <TableRow>[
                    TableRow(children: <Widget>[
                      tableHeader(label: '#001'),
                      Column(
                        children: <Widget>[
                          guestTracker(
                            guestName: 'Anonymous',
                            trackerColor: const Color(0xFF5C8BE1),
                            margin: const EdgeInsets.only(
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
                            margin: const EdgeInsets.only(
                              right: 45,
                              bottom: 5,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: <Widget>[
                      tableHeader(label: '#002'),
                      const Column(),
                    ]),
                    TableRow(children: <Widget>[
                      tableHeader(label: '#003'),
                      guestTracker(
                        guestName: 'Anonymous',
                        trackerColor: const Color(0xFF5C8BE1),
                        margin: const EdgeInsets.only(
                          right: 20,
                          left: 20,
                          top: 5,
                          bottom: 5,
                        ),
                        onPressed: () {},
                      ),
                    ]),
                    TableRow(children: <Widget>[
                      tableHeader(label: '#004'),
                      const Column(),
                    ]),
                    TableRow(children: <Widget>[
                      tableHeader(label: '#005'),
                      guestTracker(
                        guestName: 'Anonymous',
                        trackerColor: const Color(0xFF5C8BE1),
                        margin: const EdgeInsets.only(
                          right: 20,
                          left: 20,
                          top: 5,
                          bottom: 5,
                        ),
                        onPressed: () {},
                      ),
                    ]),
                    TableRow(children: <Widget>[
                      tableHeader(label: '#006'),
                      const Column(),
                    ]),
                    TableRow(children: <Widget>[
                      tableHeader(label: '#007'),
                      const Column(),
                    ]),
                    TableRow(children: <Widget>[
                      tableHeader(label: '#008'),
                      const Column(),
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
      onTap: null,
      child: Container(
        margin: margin,
        padding: const EdgeInsets.only(left: 15),
        decoration: BoxDecoration(
          color: trackerColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              guestName,
              style: textStyleHeader(color: Colors.white, size: 12),
            ),
            IconButton(
              icon: const Icon(Icons.cancel_outlined),
              color: Colors.white,
              onPressed: onPressed,
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector pendingRequest({required int totalRequest, required void Function()? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(150),
          color: const Color(0xFFFEB618),
        ),
        child: Text(
          totalRequest.toString(),
          style: textStyleHeader(color: Colors.white, size: 12),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Text tableHeader({required String label}) {
    return Text(
      label,
      style: textStyleHeader(color: const Color(0xFF242731), size: 12),
      textAlign: TextAlign.center,
    );
  }

  Row stats({required String label, required int number}) {
    return Row(
      children: <Widget>[
        Text(
          '$label:',
          style: textStyleContent(
            size: 16,
            color: const Color(0xFF242731),
          ),
        ),
        Text(
          number.toString(),
          style: textStyleContent(
            size: 16,
            color: const Color(0xFF242731),
          ),
        ),
        ksizedBoxTextFieldRow,
      ],
    );
  }

  Row legend({required String label, required Color color}) {
    return Row(
      children: <Widget>[
        Text(
          label,
          style: textStyleContent(
            size: 18,
            color: const Color(0xFF242731),
          ),
        ),
        ksizedBoxTextFieldRow,
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(5),
          ),
        )
      ],
    );
  }
}
