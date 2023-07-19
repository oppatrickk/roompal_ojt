import 'package:flutter/material.dart';
import 'package:roompal_ojt/pages/contact_details.dart';
import 'package:roompal_ojt/pages/room_details.dart';
import '../widgets/const_elements.dart';
import '../widgets/widget_elements.dart';
import 'confirmation.dart';

class PaymentDetails extends StatefulWidget {
  const PaymentDetails({Key? key}) : super(key: key);
  static const String id = 'Payment Details';
  @override
  State<PaymentDetails> createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/img/wmB.png"),
      ),
      endDrawer: buildSideBar(context),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.ideographic,
              children: [
                bookingSteps(
                  label: 'Booking',
                  textColor: Colors.grey,
                  lineColor: Colors.grey,
                  textSize: 12,
                  flex: 1,
                ),
                bookingSteps(
                  label: 'Contacts',
                  textColor: Colors.grey,
                  lineColor: Colors.grey,
                  textSize: 12,
                  flex: 1,
                ),
                bookingSteps(
                  label: 'Payment',
                  textColor: Color(0xFF1C39BB),
                  lineColor: Color(0xFFFEB618),
                  textSize: 18,
                  flex: 1,
                ),
                bookingSteps(
                  label: 'Confirmation',
                  textColor: Colors.grey,
                  lineColor: Colors.grey,
                  textSize: 12,
                  flex: 1,
                ),
              ],
            ),
            kSizedBox,
            Text(
              'Choose your payment options',
              style: textStyleContent(
                size: 16,
                color: Color(0xFF575F6E),
              ),
            ),
            ksizedBoxTextFieldCol,
            ksizedBoxTFB,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                navigationButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, ContactDetails.id),
                    icon: Icons.arrow_back,
                    label: 'Go back',
                    isGoBack: true),
                navigationButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, ConfirmationPage.id),
                    label: 'Go next',
                    icon: Icons.arrow_forward,
                    isGoBack: false)
              ],
            ),
            ksizedBoxTextFieldCol,
            noButtonIcons(
              onPressed: () => Navigator.pushNamed(context, RoomDetails.id),
              label: 'Cancel',
              isBorderRequired: true,
              buttonColor: Colors.white,
              textColor: Color(0xFF242426),
            ),
          ]),
        ),
      ),
    );
  }
}
