import 'package:flutter/material.dart';
import 'package:roompal_ojt/pages/property_owner/listing_ownersView.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';
import '../../widgets/const_elements.dart';

class ListingOwnerTV extends StatefulWidget {
  const ListingOwnerTV({super.key});
  static const String id = 'ListingOwnerID';

  @override
  State<ListingOwnerTV> createState() => _ListingOwnerTVState();
}

class _ListingOwnerTVState extends State<ListingOwnerTV> {
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
                    child: PropertyCount('Total Views', '109'),
                  ),
                ],
              ),
              ksizedBoxTextFieldCol,
              Table(
                border: TableBorder.all(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                columnWidths: {
                  0: FlexColumnWidth(1.5),
                  1: FlexColumnWidth(4),
                  2: FlexColumnWidth(2),
                },
                children: [
                  TableRow(
                      decoration: BoxDecoration(
                          color: Color(0xFF1C39BB), borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16))),
                      children: [
                        tableContent(content: 'Room#', color: Colors.white),
                        tableContent(content: 'Property Details', color: Colors.white),
                        tableContent(content: 'Actions', color: Colors.white),
                      ]),
                  TableRow(children: [
                    tableContent(content: '001', color: Color(0xFF242731)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            height: 100,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              image: DecorationImage(
                                fit: BoxFit.fitWidth,
                                image: AssetImage('assets/img/rental.jpg'),
                              ),
                            ),
                          ),
                          Text(
                            'Kwarto De Luna',
                            style: textStyleHeader(color: Color(0xFF242731), size: 16),
                          ),
                          Text(
                            'City Name, Region',
                            style: textStyleContent(color: Color(0xFF242731), size: 12),
                          ),
                          Text(
                            'Starting at P 1, ###.00',
                            style: textStyleContent(color: Color(0xFF242731), size: 12),
                          ),
                          ksizedBoxTextFieldCol,
                          Row(
                            children: [roomType(buttonColor: Color(0xFFFEB618), label: 'Room Type', textColor: Colors.black)],
                          )
                        ],
                      ),
                    ),
                    tableContent(content: 'Actions', color: Colors.white),
                  ]),
                  TableRow(children: [
                    Column(children: [Text('Javatpoint')]),
                    Column(children: [Text('MySQL')]),
                    Column(children: [Text('5*')]),
                  ]),
                  TableRow(children: [
                    Column(children: [Text('Javatpoint')]),
                    Column(children: [Text('ReactJS')]),
                    Column(children: [Text('5*')]),
                  ]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container roomType({required String label, required Color textColor, required Color buttonColor}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
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

  Column tableContent({required String content, required Color color}) => Column(children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Center(
            child: Text(
              content,
              style: textStyleHeader(color: color, size: 12),
            ),
          ),
        ),
      ]);
}
