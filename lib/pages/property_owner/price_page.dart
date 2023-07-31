import 'package:flutter/material.dart';
import 'package:roompal_ojt/pages/booking/booking.dart';
import 'package:roompal_ojt/pages/property_owner/listing_ownersView.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';
import 'package:roompal_ojt/widgets/textfield_widget.dart';
import 'package:roompal_ojt/widgets/popup_widgets.dart';

import 'bottom_navigation.dart';

class PricePage extends StatefulWidget {
  const PricePage({Key? key}) : super(key: key);
  static const String id = 'PricePage';

  @override
  State<PricePage> createState() => _PricePageState();
}

class _PricePageState extends State<PricePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      endDrawer: buildSideBar(context),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                child: Image.asset('assets/img/cl6.png'),
              ),
              ksizedBoxTextFieldCol,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  circleIcon(isFillRequired: true, isBorderRequired: false),
                  lineBetweenCI(isTrue: true),
                  circleIcon(isFillRequired: true, isBorderRequired: false),
                  lineBetweenCI(isTrue: true),
                  circleIcon(isFillRequired: true, isBorderRequired: true),
                  lineBetweenCI(isTrue: true),
                  circleIcon(isFillRequired: true, isBorderRequired: true),
                  lineBetweenCI(isTrue: true),
                  circleIcon(isFillRequired: true, isBorderRequired: true),
                  lineBetweenCI(isTrue: true),
                  circleIcon(isFillRequired: true, isBorderRequired: true),
                ],
              ),
              kSizedBox,
              headerSub(
                  pageTitle: 'Price',
                  subContent:
                      'Fill the property price for transient and monthly. It will take a couple of minutes.'),
              kSizedBox,
              //Transient Price and Transaction Fee
              Container(
                padding: const EdgeInsets.all(10),
                decoration: boxDecoration(),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    priceField(label: 'Transient Price', isTFee: false),
                    ksizedBoxTextFieldRow,
                    priceField(label: 'Transaction Fee', isTFee: true),
                  ],
                ),
              ),
              kSizedBox,
              Container(
                padding: const EdgeInsets.all(10),
                decoration: boxDecoration(),
                child: Row(
                  children: [
                    priceField(label: 'Monthly Price', isTFee: false),
                    ksizedBoxTextFieldRow,
                    priceField(label: 'Transaction Fee', isTFee: true),
                  ],
                ),
              ),
              ksizedBoxTextFieldCol,
              Center(
                child: Text(
                  'Important Note: A 10% deduction from the price will be applied.',
                  style: kRedText,
                  textAlign: TextAlign.center,
                ),
              ),
              ksizedBoxTextFieldCol,
              textField1(label: 'Details', hint: 'Enter Details'),
              ksizedBoxTFB,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  navigationButton(
                      onPressed: null,
                      icon: Icons.arrow_back,
                      label: 'Go back',
                      isGoBack: true),
                  navigationButton(
                      onPressed: () => showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (BuildContext context) {
                              return const Confirmation();
                            },
                          ),
                      label: 'Submit',
                      icon: Icons.send_rounded,
                      isGoBack: false)
                ],
              ),
              ksizedBoxTFB,
            ],
          ),
        ),
      ),
    );
  }
}

class Confirmation extends StatelessWidget {
  const Confirmation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            titleDesign(label: 'Property Listing'),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  kSizedBox,
                  Text(
                    'Submit your listing?',
                    style: textStyleContent(
                      size: 16,
                      color: Color(0xFF242426),
                    ),
                  ),
                  ksizedBoxTFB,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      puButton(
                        onPressed: () => Navigator.pop(context),
                        color: Colors.red,
                        label: 'No',
                      ),
                      ksizedBoxTextFieldRow,
                      puButton(
                        onPressed: () => showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (BuildContext context) {
                            return const Message();
                          },
                        ),
                        color: Colors.green,
                        label: 'Yes',
                      ),
                    ],
                  ),
                  kSizedBox,
                ],
              ),
            ),
          ]),
    );
  }
}

class Message extends StatelessWidget {
  const Message({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: SizedBox(
        height: 240,
        child: Stack(
          clipBehavior: Clip.none,
          alignment: AlignmentDirectional.topCenter,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      topLeft: Radius.circular(25),
                    ),
                    color: Color(0xFF1C39BB),
                  ),
                  padding: const EdgeInsets.all(12),
                  height: 50,
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      child: Text(
                        'Your listing has been \n added!',
                        textAlign: TextAlign.center,
                        style: textStyleContent(
                          size: 20,
                          color: Color(0xFF242426),
                        ),
                      ),
                    ),
                    ksizedBoxTFB,
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: divider),
                    ElevatedButton(
                      onPressed: () {
                        // Navigator.pushNamed(context, ListingOwner.id)
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          BottomNavigation.id,
                          (route) => route.isFirst,
                          arguments: 1, //navigation bar index
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        surfaceTintColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      child: const Text(
                        'Ok',
                        style: TextStyle(color: Color(0xFFFEB618)),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Container(
              decoration: const BoxDecoration(),
              padding: const EdgeInsets.all(10),
              child: const CircleAvatar(
                backgroundColor: Color(0xFF6CE679),
                radius: 33,
                child: Icon(
                  Icons.check,
                  size: 50,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
