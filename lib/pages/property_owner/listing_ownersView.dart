import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

class ListingOwner extends StatefulWidget {
  const ListingOwner({super.key});

  static const String id = "ListingOwner";

  @override
  State<ListingOwner> createState() => _ListingOwnerState();
}

class _ListingOwnerState extends State<ListingOwner> {
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
                  //View button
                  Container(
                    alignment: Alignment.topLeft,
                    child: CupertinoSegmentedControl<int>(
                      padding: const EdgeInsets.all(4),
                      groupValue: viewValue,
                      pressedColor: Colors.grey,
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
          ),
        ),
      ),
    );
  }
}

//Card View of Listing
Container propertyCardOwnerView({
  required String propertyImage,
  required String propertyStatus,
  required String propertyName,
  required int propertyNumber,
  required double propertyPrice,
  required String propertyCity,
  required String propertyProvince,
  required IconData propertyIcon,
  required String propertyType,
  required String propertyAccommodation,
  required Color propertyStatusColor,
}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      border: Border.all(
        color: const Color(0xFFBBBFC1),
      ),
    ),
    child: Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16),
              topLeft: Radius.circular(16),
            ),
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: AssetImage('assets/img/$propertyImage'),
            ),
          ),
          height: 160,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: propertyStatusColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    propertyStatus,
                    style: textStyleHeader(color: propertyStatusColor, size: 12),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    propertyName,
                    style: textStyleHeader(color: const Color(0xFF242731), size: 20),
                  ),
                  Text(
                    'Starting at',
                    style: textStyleContent(color: const Color(0xFF242731), size: 14),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Room #00$propertyNumber',
                    style: textStyleContent(color: const Color(0xFF242731), size: 20),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        '\$ ',
                        style: textStyleHeader(color: const Color(0xFF1C39BB), size: 20),
                      ),
                      Text(
                        '$propertyPrice',
                        style: textStyleHeader(color: const Color(0xFF242731), size: 20),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '$propertyCity, $propertyProvince',
                    style: textStyleHeader(color: const Color(0xFF242731), size: 12),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        propertyIcon,
                        color: const Color(0xFF1C39BB),
                      ),
                      Text(
                        ' $propertyType',
                        style: textStyleHeader(color: const Color(0xFF242731), size: 12),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      ActionButtons(
                        Colors.green,
                        Icons.edit_document,
                        'Edit',
                        () {/*onPress*/},
                      ),
                      ksizedBoxTextFieldRow,
                      ActionButtons(
                        Colors.red,
                        Icons.delete_outline,
                        'Delete',
                        () {/*onPress*/},
                      ),
                    ],
                  ),
                  Text(
                    propertyAccommodation,
                    style: textStyleContent(color: const Color(0xFF242731), size: 12),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    ),
  );
}

class ActionButtons extends StatelessWidget {
  const ActionButtons(
    this.color,
    this.icon,
    this.label,
    this.onPressed, {
    super.key,
  });
  final Color color;
  final IconData icon;
  final String label;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      width: 70,
      child: FloatingActionButton.extended(
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: color,
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        backgroundColor: Colors.white,
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: color,
          size: 20,
        ),
        label: Text(
          label,
          style: TextStyle(
            color: color,
            fontSize: 11,
          ),
        ),
      ),
    );
  }
}
