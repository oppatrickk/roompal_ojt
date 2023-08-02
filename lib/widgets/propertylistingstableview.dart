import 'package:flutter/material.dart';
import 'package:roompal_ojt/model/property_listings.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';
import 'package:roompal_ojt/widgets/widget_property_owner.dart';

class PropertyListingsTableView extends StatefulWidget {
  const PropertyListingsTableView({super.key});

  @override
  State<PropertyListingsTableView> createState() => _PropertyListingsTableViewState();
}

class _PropertyListingsTableViewState extends State<PropertyListingsTableView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: PropertyList.listings.length,
        itemBuilder: (BuildContext context, int index) {
          PropertyList list = PropertyList.listings[index];
          return Table(
              border: TableBorder.all(
                color: Colors.grey,
              ),
              columnWidths: const <int, TableColumnWidth>{
                0: FlexColumnWidth(1.5),
                1: FlexColumnWidth(4),
                2: FlexColumnWidth(2),
              },
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                TableRow(children: [
                  tableContent(content: list.propertyNumber.toString().padLeft(3, '0'), color: const Color(0xFF242731)),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8),
                            ),
                            image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: AssetImage(list.propertyImage!),
                            ),
                          ),
                        ),
                        Text(
                          list.propertyName!,
                          style: textStyleHeader(color: const Color(0xFF242731), size: 16),
                        ),
                        Text(
                          '${list.propertyCity}, ${list.propertyProvince}',
                          style: textStyleContent(color: const Color(0xFF242731), size: 12),
                        ),
                        Row(
                          children: <Widget>[
                            Text('Starting at ', style: textStyleContent(color: const Color(0xFF242731), size: 12)),
                            const Text(
                              '₱ ',
                              style: TextStyle(
                                color: Color(0xFF242731),
                                fontSize: 12,
                              ),
                            ),
                            Text(list.propertyPrice!.toStringAsFixed(2), style: textStyleContent(color: const Color(0xFF242731), size: 12)),
                          ],
                        ),
                        ksizedBoxTextFieldCol,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            label(buttonColor: const Color(0xFFFEB618), label: list.propertyType!, textColor: Colors.black),
                            ksizedBoxTextFieldRow,
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(5),
                                ),
                                color: list.propertyStatus == 'Available' ? Colors.green : const Color(0xFF5C8BE1),
                              ),
                              child: Center(
                                child: Text(
                                  list.propertyStatus!,
                                  style: textStyleContent(size: 12, color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        ActionButtons(
                          Colors.green,
                          Icons.edit_square,
                          'Edit',
                          () {},
                        ),
                        ksizedBoxTextFieldCol,
                        ActionButtons(
                          Colors.red,
                          Icons.delete_outline,
                          'Delete',
                          () {},
                        ),
                      ],
                    ),
                  ),
                ]),
              ]);
        });
  }
}

// Room Type & Room Status
Container label({required String label, required Color textColor, required Color buttonColor}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(
        Radius.circular(5),
      ),
      color: buttonColor,
    ),
    child: Center(
      child: Text(
        label,
        style: textStyleContent(size: 12, color: textColor),
      ),
    ),
  );
}

// Table title and Room# Content
Center tableContent({required String content, required Color color}) => Center(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Text(
          content,
          style: textStyleHeader(color: color, size: 14),
        ),
      ),
    );
