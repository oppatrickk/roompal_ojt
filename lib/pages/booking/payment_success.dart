import 'package:flutter/material.dart';
import 'package:roompal_ojt/pages/booking/booking_summary.dart';
import 'package:roompal_ojt/pages/landing_page.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/sidebar.dart';
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
      appBar: appBar(),
      endDrawer: SideBar(
        isRenter: true,
      ),
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
                  customButton(
                      onPressed: () => Navigator.pushNamed(context, BookingSummary.id),
                      label: 'View Details',
                      isBorderRequired: true,
                      buttonColor: Colors.white,
                      textColor: Color(0xFF1C39BB),
                      horizontalPadding: 27,
                      verticalPadding: 15,
                      colorBorder: Color(0xFF1C39BB)),
                  ksizedBoxTextFieldCol,
                  noButtonIcons(
                      onPressed: () => Navigator.pushNamed(context, LandingPage.id),
                      label: 'Home',
                      isBorderRequired: true,
                      buttonColor: Color(0xFF1C39BB),
                      textColor: Colors.white,
                      horizontalPadding: 27,
                      verticalPadding: 15),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

TextButton customButton({
  required void Function()? onPressed,
  required String label,
  required bool? isBorderRequired,
  required Color buttonColor,
  required Color textColor,
  required double horizontalPadding,
  required double verticalPadding,
  required Color colorBorder,
}) {
  return TextButton(
    onPressed: onPressed,
    style: ButtonStyle(
      padding: MaterialStateProperty.all(
        EdgeInsetsDirectional.symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
      ),
      side: isBorderRequired == true
          ? MaterialStateProperty.all(
              BorderSide(
                color: colorBorder,
              ),
            )
          : null,
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      backgroundColor: MaterialStatePropertyAll(buttonColor),
    ),
    child: Center(
      child: Text(
        label,
        style: TextStyle(color: textColor, fontSize: 14.0, fontFamily: 'ProximaNovaBold'),
      ),
    ),
  );
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
