import 'package:flutter/material.dart';
import 'package:roompal_ojt/pages/room_details.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/img/wmB.png"),
      ),
      endDrawer: buildSideBar(context),
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(children: [
                Icon(
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
                    color: Color(0xFF575F6E),
                  ),
                ),
                kSizedBox,
                GestureDetector(
                  child: Container(
                    decoration: fillBoxDecoration(),
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Center(
                      child: Text(
                        'Try Again',
                        style: textStyleHeader(color: Colors.white, size: 16),
                      ),
                    ),
                  ),
                  onTap: null,
                ),
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
      color: Color(0xFF1C39BB),
    ),
  );
}

BoxDecoration fillBoxDecoration() {
  return BoxDecoration(
    color: Color(0xFF1C39BB),
    borderRadius: BorderRadius.circular(16),
    border: Border.all(
      color: Color(0xFF1C39BB),
    ),
  );
}
