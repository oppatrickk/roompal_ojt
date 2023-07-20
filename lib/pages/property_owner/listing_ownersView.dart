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
            ],
          ),
        ),
      ),
    );
  }
}
