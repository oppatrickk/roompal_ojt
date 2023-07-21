import 'package:flutter/material.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
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
      appBar: AppBar(
        title: Image.asset('assets/img/wmB.png'),
      ),
      endDrawer: buildSideBar(context),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
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
                          SizedBox(
                            width: 20,
                            height: 20,
                            child: Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color(0xFFFEB618),
                              ),
                              child: Text(
                                '2',
                                style: textStyleHeader(color: Colors.white, size: 12),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Container(),
                          Container(),
                          Container(),
                        ]),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
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
