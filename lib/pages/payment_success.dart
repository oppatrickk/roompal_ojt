import 'package:flutter/material.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

class PaymentSuccess extends StatefulWidget {
  const PaymentSuccess({super.key});
  static const String id = 'PaymentSuccess';

  @override
  State<PaymentSuccess> createState() => _PaymentSuccessState();
}

class _PaymentSuccessState extends State<PaymentSuccess> {
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
              child: Center(
                child: Column(children: [
                  Icon(
                    Icons.check_circle_outline_sharp,
                    color: Colors.green,
                    size: 130,
                  ),
                  Text(
                    'Success',
                    style: textStyleHeader(
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                  kSizedBox,
                  Text(
                    'You have completed your payment',
                    style: textStyleContent(
                      size: 14,
                      color: Color(0xFF575F6E),
                    ),
                  ),
                  kSizedBox,
                  GestureDetector(
                    child: Container(
                      decoration: outlineBoxDecoration(),
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Center(
                        child: Text(
                          'View Details',
                          style: textStyleHeader(color: Color(0xFF1C39BB), size: 16),
                        ),
                      ),
                    ),
                    onTap: null,
                  ),
                  ksizedBoxTextFieldCol,
                  GestureDetector(
                    child: Container(
                      decoration: fillBoxDecoration(),
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Center(
                        child: Text(
                          'Home',
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
