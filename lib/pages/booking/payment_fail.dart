import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roompal_ojt/Renter_State.dart';
import 'package:roompal_ojt/pages/booking/booking.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/sidebar.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

class PaymentFail extends StatefulWidget {
  const PaymentFail({super.key});
  static const String id = 'payment_fail';

  @override
  State<PaymentFail> createState() => _PaymentFailState();
}

class _PaymentFailState extends State<PaymentFail> {
  @override
  Widget build(BuildContext context) {
    RenterState renterState = Provider.of<RenterState>(context);
    return Scaffold(
      appBar: appBar(),
      endDrawer: SideBar(
        isRenter: renterState.isRenter,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(children: <Widget>[
                const Icon(
                  Icons.highlight_off_sharp,
                  color: Colors.red,
                  size: 130,
                ),
                Text(
                  'Failed',
                  style: textStyleHeader(
                    size: 20,
                    color: Colors.black,
                  ),
                ),
                kSizedBox,
                Text(
                  'Payment Failed',
                  style: textStyleContent(
                    size: 14,
                    color: const Color(0xFF575F6E),
                  ),
                ),
                kSizedBox,
                noButtonIcons(
                    onPressed: () => Navigator.pushNamed(context, Booking.id),
                    label: 'Try Again',
                    isBorderRequired: true,
                    buttonColor: const Color(0xFF1C39BB),
                    textColor: Colors.white,
                    horizontalPadding: 27,
                    verticalPadding: 15),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}

BoxDecoration outlineBoxDecoration() {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(16),
    border: Border.all(
      color: const Color(0xFF1C39BB),
    ),
  );
}

BoxDecoration fillBoxDecoration() {
  return BoxDecoration(
    color: const Color(0xFF1C39BB),
    borderRadius: BorderRadius.circular(16),
    border: Border.all(
      color: const Color(0xFF1C39BB),
    ),
  );
}
