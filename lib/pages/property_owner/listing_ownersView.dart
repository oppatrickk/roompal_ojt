import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roompal_ojt/pages/property_owner/contact_overview.dart';
import 'package:roompal_ojt/pages/property_owner/location_page.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

class ListingOwner extends StatefulWidget {
  const ListingOwner({super.key});

  static const String id = "ListingOwner";

  @override
  State<ListingOwner> createState() => _ListingOwnerState();
}

class _ListingOwnerState extends State<ListingOwner> {
  int? groupValue = 0;

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
              Container(
                alignment: Alignment.topLeft,
                child: CupertinoSegmentedControl<int>(
                  padding: const EdgeInsets.all(4),
                  groupValue: groupValue,
                  selectedColor: Color(0xFF1C39BB),
                  borderColor: Color(0xFF808080),
                  children: <int, Widget>{
                    0: BuildSegment("Owner's View"),
                    1: BuildSegment("Renter's View"),
                  },
                  onValueChanged: (int? groupValue) {
                    setState(() => this.groupValue = groupValue);
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

class BuildSegment extends StatelessWidget {
  BuildSegment(
    this.text, {
    super.key,
  });
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    );
  }
}

class PropertyCount extends StatelessWidget {
  PropertyCount(
    this.title,
    this.count, {
    super.key,
  });
  String title;
  String count;

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: Colors.white,
      shape: border,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ksizedBoxTextFieldCol,
          Text(
            title,
            style: const TextStyle(
              fontSize: 10,
              fontFamily: 'ProximaNovaAltBold',
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            count,
            style: const TextStyle(
              fontSize: 40,
              color: Color(0xFF1C39BB),
              fontFamily: 'ProximaNovaAltBold',
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
