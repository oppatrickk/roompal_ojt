import 'package:flutter/material.dart';
import 'package:roompal_ojt/pages/property_owner/location_page.dart';
import 'package:roompal_ojt/pages/property_owner/photo_page.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/sidebar.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';
import 'package:roompal_ojt/widgets/textfield_widget.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});
  static const String id = 'Detailpage';

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  //DropDown for Amenities
  static const List<Icon> amenityList = <Icon>[
    Icon(Icons.wifi),
    Icon(Icons.water_drop),
    Icon(Icons.flash_on),
    Icon(Icons.hotel),
    Icon(Icons.kitchen),
  ];
  Icon ddValAL = amenityList.first;

  //Dropdown for Inclusion
  static const List<Icon> inclusionList = <Icon>[
    Icon(Icons.wifi),
    Icon(Icons.water_drop),
    Icon(Icons.flash_on),
    Icon(Icons.hotel),
    Icon(Icons.kitchen),
  ];
  Icon ddValIL = inclusionList.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      endDrawer: SideBar(
        isRenter: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                child: Center(
                  child: Image.asset('assets/img/cl4.png'),
                ),
              ),
              kSizedBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  circleIcon(isFillRequired: true, isBorderRequired: false),
                  lineBetweenCI(isTrue: true),
                  circleIcon(isFillRequired: true, isBorderRequired: false),
                  lineBetweenCI(isTrue: true),
                  circleIcon(isFillRequired: true, isBorderRequired: false),
                  lineBetweenCI(isTrue: true),
                  circleIcon(isFillRequired: true, isBorderRequired: false),
                  lineBetweenCI(isTrue: false),
                  circleIcon(isFillRequired: false, isBorderRequired: true),
                  lineBetweenCI(isTrue: false),
                  circleIcon(isFillRequired: false, isBorderRequired: true),
                ],
              ),
              kSizedBox,
              headerSub(pageTitle: 'Details', subContent: 'Fill in the property details. It will take a couple of minutes.'),
              kSizedBox,
              detailFields(
                label: 'Room Amenities',
                hintText2: 'Enter Amenity Modal',
                labelDesc: 'Enter Amenity description',
                isAmenity: true,
              ),
              kSizedBox,
              detailFields(
                label: 'Room Inclusion',
                hintText2: 'Enter Inclusion Modal',
                labelDesc: 'Enter Inclusion description',
                isAmenity: false,
              ),
              kSizedBox,
              textField1(label: 'Number of Guest to Accomodate', hint: 'Enter Number of Guest to Accomodate'),
              kSizedBox,
              Container(
                padding: const EdgeInsets.all(10),
                decoration: boxDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'House Rules',
                          style: textStyleContent(
                            size: 14,
                            color: Color(0xFF575F6E),
                          ),
                        ),
                      ],
                    ),
                    ksizedBoxTextFieldRow,
                    textFieldWithHintTextButNoLabel(
                      hint: 'Enter House Rule',
                    ),
                    ksizedBoxTextFieldCol,
                    addButton(),
                  ],
                ),
              ),
              ksizedBoxTFB,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  navigationButton(
                      onPressed: () => Navigator.pushNamed(context, LocationPage.id), icon: Icons.arrow_back, label: 'Go back', isGoBack: true),
                  navigationButton(
                      onPressed: () => Navigator.pushNamed(context, PhotoPage.id), label: 'Go next', icon: Icons.arrow_forward, isGoBack: false)
                ],
              ),
              ksizedBoxTFB,
            ],
          ),
        ),
      ),
    );
  }

//Dropdown Button for Amenity and Inclusion
  Container detailFields({required String label, required bool? isAmenity, required String hintText2, required String labelDesc}) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: boxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                label,
                style: textStyleContent(
                  size: 14,
                  color: Color(0xFF575F6E),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Flexible(
                flex: 1,
                child: DropdownButtonFormField<Icon>(
                  isExpanded: true,
                  icon: const Icon(Icons.arrow_drop_down),
                  elevation: 16,
                  style: textStyleContent(size: 16, color: Color(0xFF575F6E)),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(0),
                  ),
                  value: isAmenity == true ? ddValAL : ddValIL,
                  onChanged: (Icon? value) {
                    setState(
                      () {
                        isAmenity == true ? ddValAL = value! : ddValIL == value!;
                      },
                    );
                  },
                  items: isAmenity == true
                      ? amenityList.map<DropdownMenuItem<Icon>>((Icon value) {
                          return DropdownMenuItem<Icon>(
                            value: value,
                            child: value,
                          );
                        }).toList()
                      : inclusionList.map<DropdownMenuItem<Icon>>((Icon value) {
                          return DropdownMenuItem<Icon>(
                            value: value,
                            child: value,
                          );
                        }).toList(),
                ),
              ),
              ksizedBoxTextFieldRow,
              Flexible(
                flex: 4,
                child: textFieldWithHintTextButNoLabel(
                  hint: hintText2,
                ),
              ),
            ],
          ),
          ksizedBoxTextFieldCol,
          textFieldWithHintTextButNoLabel(hint: labelDesc),
          ksizedBoxTextFieldCol,
          addButton(),
        ],
      ),
    );
  }
}
