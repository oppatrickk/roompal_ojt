import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';
import 'package:roompal_ojt/widgets/widget_property_owner.dart';

class ListingRenter extends StatefulWidget {
  const ListingRenter({super.key});
  static const String id = "ListingRenter";

  @override
  State<ListingRenter> createState() => _ListingRenterState();
}

class _ListingRenterState extends State<ListingRenter> {
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
          ),
        ),
      ),
    );
  }
}
