import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/filter.dart';
import 'package:roompal_ojt/widgets/propertylistingsgridview.dart';
import 'package:roompal_ojt/widgets/propertylistingstableview.dart';
import 'package:roompal_ojt/widgets/sidebar.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';
import 'package:roompal_ojt/widgets/widget_property_owner.dart';

import 'overview_page.dart';

class ListingOwner extends StatefulWidget {
  const ListingOwner({super.key});

  static const String id = 'ListingOwner';

  @override
  State<ListingOwner> createState() => _ListingOwnerState();
}

class _ListingOwnerState extends State<ListingOwner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      endDrawer: SideBar(
        isLoggedIn: true,
        isRenter: false,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: OwnersViewSection(),
      ),
    );
  }
}

class OwnersViewSection extends StatefulWidget {
  const OwnersViewSection({super.key});

  @override
  State<OwnersViewSection> createState() => _OwnersViewSectionState();
}

class _OwnersViewSectionState extends State<OwnersViewSection> {
  int? viewValue = 0; //part of view changer option
  int? iconValue = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
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
              const Expanded(
                child: Filter(),
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
                  onPressed: () => Navigator.pushNamed(context, OverviewPage.id),
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
    );
  }
}

//Main Owner View
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
              0: BuildSegment1(Icons.window_outlined),
              1: BuildSegment1(Icons.list),
            },
            onValueChanged: (int groupValue) {
              setState(() => iconValue = groupValue);
            },
          ),
        ),
        iconValue == 0 ? const OwnerViewGridView() : const OwnerViewTableFormat()
      ],
    );
  }
}

//grid view of owner listing
class OwnerViewGridView extends StatelessWidget {
  const OwnerViewGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyListingsGridView(
      isRenter: false,
      needEditDeleteButton: true,
    );
  }
}

//Renter's view
class RenterView extends StatelessWidget {
  const RenterView({super.key});

  @override
  Widget build(BuildContext context) {
    return PropertyListingsGridView(
      isRenter: false,
      needEditDeleteButton: false,
    );
  }
}

//table view of ownwer listing
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
                ),
                children: [
                  tableContent(content: 'Room#', color: Colors.white),
                  tableContent(content: 'Property Details', color: Colors.white),
                  tableContent(content: 'Actions', color: Colors.white),
                ]),
          ],
        ),
        PropertyListingsTableView(),
      ],
    );
  }
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
