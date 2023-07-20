import 'package:flutter/material.dart';
import '../../widgets/const_elements.dart';
import '../../widgets/widget_elements.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});
  static const String id = 'Detailpage';

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  //DropDown
  static const List<Icon> list = <Icon>[
    Icon(Icons.house),
    Icon(Icons.park),
    Icon(Icons.streetview),
  ];
  Icon dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/img/wmB.png'),
      ),
      endDrawer: buildSideBar(context),
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
              Text(
                'Details',
                style: textStyleHeader(color: Color(0xFF242731), size: 32),
                textAlign: TextAlign.center,
              ),
              ksizedBoxTextFieldCol,
              Text(
                'Fill in the property details. It will take a couple of minutes. ',
                style: textStyleContent(
                  size: 16,
                  color: Color(0xFF575F6E),
                ),
                textAlign: TextAlign.center,
              ),
              kSizedBox,
              detailFields(
                label: 'Enter Room Amenities',
                hintText1: '~Icon~',
                hintText2: 'Amenity Modal',
                labelDesc: 'Amenity description',
              ),
              kSizedBox,
              detailFields(
                label: 'Enter Room Inclusion',
                hintText1: '~Icon~',
                hintText2: 'Inclusion Modal',
                labelDesc: 'Inclusion description',
              ),
              kSizedBox,
              Container(
                padding: const EdgeInsets.all(10),
                decoration: boxDecoration(),
                child: Column(
                  children: <Widget>[
                    textField(label: 'Enter Number of Guest to Accomodate'),
                    ksizedBoxTextFieldCol,
                  ],
                ),
              ),
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
                          'Enter House Rules',
                          style: textStyleContent(
                            size: 14,
                            color: Color(0xFF575F6E),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: textFieldWithHintTextButNoLabel(
                            hint: '1',
                          ),
                        ),
                        ksizedBoxTextFieldRow,
                        Flexible(
                          flex: 2,
                          child: textFieldWithHintTextButNoLabel(
                            hint: 'Rule Number 1',
                          ),
                        ),
                      ],
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
                  navigationButton(onPressed: null, icon: Icons.arrow_back, label: 'Go back', isGoBack: true),
                  navigationButton(onPressed: null, label: 'Go next', icon: Icons.arrow_forward, isGoBack: false)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container detailFields({required String label, required String hintText1, required String hintText2, required String labelDesc}) {
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
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Flexible(
                flex: 1,
                child: textFieldWithHintTextButNoLabel(
                  hint: hintText1,
                ),
              ),
              ksizedBoxTextFieldRow,
              Flexible(
                flex: 2,
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
