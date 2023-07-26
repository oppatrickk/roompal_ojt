import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';
import 'package:roompal_ojt/widgets/widget_property_owner.dart';

class ListingOwner extends StatefulWidget {
  const ListingOwner({super.key});

  static const String id = 'ListingOwner';

  @override
  State<ListingOwner> createState() => _ListingOwnerState();
}

class _ListingOwnerState extends State<ListingOwner> {
  int? viewValue = 0; //part of view changer option
  int? iconValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      endDrawer: buildSideBar(context),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
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
              //buttons
              Row(
                children: <Widget>[
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
                      //viewValue == 0 ? const OwnerView() : const RenterView();
                      onValueChanged: (int? groupValue) {
                        setState(() => viewValue = groupValue);
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  //Add Button
                  SizedBox(
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
              viewValue == 0 ? const OwnerView() : const RenterView(),
            ],
          ),
        ),
      ),
    );
  }
}

class OwnerView extends StatefulWidget {
  const OwnerView({super.key});

  @override
  State<OwnerView> createState() => _OwnerViewState();
}

class _OwnerViewState extends State<OwnerView> {
  int iconValue = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
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
            onValueChanged: (int groupValue) {
              setState(() => iconValue = groupValue);
            },
          ),
        ),
        iconValue == 0
            ? const OwnerViewGridView()
            : const OwnerViewTableFormat(),
      ],
    );
  }
}

class OwnerViewGridView extends StatelessWidget {
  const OwnerViewGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ksizedBoxTextFieldCol,
        propertyCardOwnerView(
          propertyImage: 'rental.jpg',
          propertyStatus: 'AVAILABLE',
          propertyName: 'ROOM NAME',
          propertyNumber: 1,
          propertyPrice: 0000.00,
          propertyCity: 'Legazpi City',
          propertyProvince: 'Albay',
          propertyIcon: Icons.hotel,
          propertyType: 'Bedspace',
          propertyAccommodation: '4-18 people',
          propertyStatusColor: const Color(0xFF00B400),
        ),
        ksizedBoxTextFieldCol,
        propertyCardOwnerView(
          propertyImage: 'rental.jpg',
          propertyStatus: 'AVAILABLE',
          propertyName: 'ROOM NAME',
          propertyNumber: 1,
          propertyPrice: 0000.00,
          propertyCity: 'Legazpi City',
          propertyProvince: 'Albay',
          propertyIcon: Icons.hotel,
          propertyType: 'Bedspace',
          propertyAccommodation: '4-18 people',
          propertyStatusColor: const Color(0xFF00B400),
        ),
      ],
    );
  }
}

class RenterView extends StatelessWidget {
  const RenterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ksizedBoxTextFieldCol,
        propertyCardView(
          propertyImage: 'rental.jpg',
          propertyStatus: 'AVAILABLE',
          propertyName: 'ROOM NAME',
          propertyNumber: 1,
          propertyPrice: 0000.00,
          propertyCity: 'Legazpi City',
          propertyProvince: 'Albay',
          propertyIcon: Icons.hotel,
          propertyType: 'Bedspace',
          propertyAccommodation: '4-18 people',
          propertyStatusColor: const Color(0xFF00B400),
        ),
        ksizedBoxTextFieldCol,
        propertyCardView(
          propertyImage: 'rental.jpg',
          propertyStatus: 'AVAILABLE',
          propertyName: 'ROOM NAME',
          propertyNumber: 1,
          propertyPrice: 0000.00,
          propertyCity: 'Legazpi City',
          propertyProvince: 'Albay',
          propertyIcon: Icons.hotel,
          propertyType: 'Bedspace',
          propertyAccommodation: '4-18 people',
          propertyStatusColor: const Color(0xFF00B400),
        ),
      ],
    );
  }
}

class OwnerViewTableFormat extends StatelessWidget {
  const OwnerViewTableFormat({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                    color: Color(0xFF1C39BB),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16))),
                children: [
                  tableContent(content: 'Room#', color: Colors.white),
                  tableContent(
                      content: 'Property Details', color: Colors.white),
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
    );
  }
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
              label(
                  buttonColor: Color(0xFFFEB618),
                  label: roomType,
                  textColor: Colors.black),
              ksizedBoxTextFieldRow,
              label(
                  buttonColor: colorBasedOnRoomStatus,
                  label: roomStatus,
                  textColor: Colors.white),
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
Container label(
    {required String label,
    required Color textColor,
    required Color buttonColor}) {
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
