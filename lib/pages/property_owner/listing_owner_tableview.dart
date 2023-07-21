import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';
import 'package:roompal_ojt/widgets/widget_property_owner.dart';
import '../../widgets/const_elements.dart';

class ListingOwnerTV extends StatefulWidget {
  const ListingOwnerTV({super.key});
  static const String id = 'ListingOwnerID';

  @override
  State<ListingOwnerTV> createState() => _ListingOwnerTVState();
}

class _ListingOwnerTVState extends State<ListingOwnerTV> {
  int? viewValue = 0; //part of view changer option
  int? iconValue = 0; //part of showcase option
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
              kSizedBox,
              Row(
                children: <Widget>[
                  //View button
                  Container(
                    alignment: Alignment.topLeft,
                    child: CupertinoSegmentedControl<int>(
                      padding: const EdgeInsets.all(4),
                      groupValue: viewValue,
                      selectedColor: const Color(0xFF1C39BB),
                      borderColor: const Color(0xFF808080),
                      children: const <int, Widget>{
                        0: BuildSegment("Owner's View"),
                        1: BuildSegment("Renter's View"),
                      },
                      onValueChanged: (int? groupValue) {
                        setState(() => this.viewValue = groupValue);
                        //for future use
                        //   if (groupValue == 0) {
                        //     setState(() {
                        //       this.groupValue = groupValue;
                        //       Navigator.pushNamed(context, ContactOverview.id);
                        //     });
                        //   } else {
                        //     setState(() {
                        //       this.groupValue = groupValue;
                        //     });
                        //   }
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  //Add Button
                  Container(
                    height: 31,
                    child: FloatingActionButton.extended(
                      isExtended: true,
                      elevation: 0,
                      onPressed: () {},
                      label: const Text('Add New'),
                      icon: const Icon(Icons.add),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Color(0xFF808080),
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      backgroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
              ksizedBoxTextFieldCol,
              Container(
                alignment: Alignment.topRight,
                child: CupertinoSegmentedControl<int>(
                  padding: const EdgeInsets.all(4),
                  groupValue: iconValue,
                  selectedColor: const Color(0xFF1C39BB),
                  borderColor: const Color(0xFF808080),
                  children: const <int, Widget>{
                    0: BuildSegment1(Icons.list),
                    1: BuildSegment1(Icons.window_outlined),
                  },
                  onValueChanged: (int? groupValue) {
                    setState(() => this.iconValue = groupValue);
                    //for future use
                    //   if (groupValue == 0) {
                    //     setState(() {
                    //       this.groupValue = groupValue;
                    //       Navigator.pushNamed(context, ContactOverview.id);
                    //     });
                    //   } else {
                    //     setState(() {
                    //       this.groupValue = groupValue;
                    //     });
                    //   }
                  },
                ),
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
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  TableRow(
                      decoration: BoxDecoration(
                          color: Color(0xFF1C39BB), borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16))),
                      children: [
                        tableContent(content: 'Room#', color: Colors.white),
                        tableContent(content: 'Property Details', color: Colors.white),
                        tableContent(content: 'Actions', color: Colors.white),
                      ]),
                  tableRowContents(
                    roomNumber: '001',
                    imageAsset: AssetImage('assets/img/rental.jpg'),
                    roomName: 'Kwarto De Luna',
                    roomCity: 'Legazpi City',
                    roomProvince: 'Albay',
                    roomPrice: 1000,
                    roomType: 'Studio',
                    roomStatus: 'Occupied',
                    colorBasedOnRoomStatus: Color(0xFF5C8BE1),
                  ),
                  tableRowContents(
                    roomNumber: '002',
                    imageAsset: AssetImage('assets/img/rental.jpg'),
                    roomName: 'Kwarto De Luna',
                    roomCity: 'Legazpi City',
                    roomProvince: 'Albay',
                    roomPrice: 1000,
                    roomType: 'Apartment',
                    roomStatus: 'Occupied',
                    colorBasedOnRoomStatus: Color(0xFF5C8BE1),
                  ),
                  tableRowContents(
                    roomNumber: '003',
                    imageAsset: AssetImage('assets/img/rental.jpg'),
                    roomName: 'Kwarto De Luna',
                    roomCity: 'Legazpi City',
                    roomProvince: 'Albay',
                    roomPrice: 1000,
                    roomType: 'Bedspace',
                    roomStatus: 'Available',
                    colorBasedOnRoomStatus: Colors.green[500]!,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Table Contents
  TableRow tableRowContents({
    required String roomNumber,
    required ImageProvider imageAsset,
    required String roomName,
    required String roomCity,
    required String roomProvince,
    required double roomPrice,
    required String roomType,
    required String roomStatus,
    required Color colorBasedOnRoomStatus,
  }) {
    return TableRow(children: [
      tableContent(content: roomNumber, color: Color(0xFF242731)),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: imageAsset,
                ),
              ),
            ),
            Text(
              roomName,
              style: textStyleHeader(color: Color(0xFF242731), size: 16),
            ),
            Text(
              '$roomCity, $roomProvince',
              style: textStyleContent(color: Color(0xFF242731), size: 12),
            ),
            Text(
              'Starting at P $roomPrice',
              style: textStyleContent(color: Color(0xFF242731), size: 12),
            ),
            ksizedBoxTextFieldCol,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                label(buttonColor: Color(0xFFFEB618), label: roomType, textColor: Colors.black),
                ksizedBoxTextFieldRow,
                label(buttonColor: colorBasedOnRoomStatus, label: roomStatus, textColor: Colors.white),
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
    ]);
  }

  // Room Type & Room Status
  Container label({required String label, required Color textColor, required Color buttonColor}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
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

  // Table title and Room# Content
  Center tableContent({required String content, required Color color}) => Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            content,
            style: textStyleHeader(color: color, size: 14),
          ),
        ),
      );
}
