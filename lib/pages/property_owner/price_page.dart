import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roompal_ojt/Renter_State.dart';
import 'package:roompal_ojt/pages/booking/booking.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/pop_up.dart';
import 'package:roompal_ojt/widgets/sidebar.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';
import 'package:roompal_ojt/widgets/textfield_widget.dart';

class PricePage extends StatefulWidget {
  const PricePage({Key? key}) : super(key: key);
  static const String id = 'PricePage';

  @override
  State<PricePage> createState() => _PricePageState();
}

class _PricePageState extends State<PricePage> {
  @override
  Widget build(BuildContext context) {
    RenterState renterState = Provider.of<RenterState>(context);
    return Scaffold(
      appBar: appBar(),
      endDrawer: SideBar(
        isRenter: renterState.isRenter,
      ),
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
                children: <Widget>[
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
              headerSub(pageTitle: 'Price', subContent: 'Fill the property price for transient and monthly. It will take a couple of minutes.'),
              kSizedBox,
              //Transient Price and Transaction Fee
              Container(
                padding: const EdgeInsets.all(10),
                decoration: boxDecoration(),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
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
                  children: <Widget>[
                    priceField(label: 'Monthly Price', isTFee: false),
                    ksizedBoxTextFieldRow,
                    priceField(label: 'Transaction Fee', isTFee: true),
                  ],
                ),
              ),
              ksizedBoxTextFieldCol,
              const Center(
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
                  navigationButton(onPressed: null, icon: Icons.arrow_back, label: 'Go back', isGoBack: true),
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
                    isGoBack: false,
                  ),
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
