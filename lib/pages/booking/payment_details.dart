import 'package:flutter/material.dart';
import 'package:roompal_ojt/pages/booking/confirmation.dart';
import 'package:roompal_ojt/pages/room_details.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/sidebar.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

enum paymentType { PaybyInstallment, Payinfull, Gcash, Paypal }

enum paymentMethod { CreditCard, OnlinePayment }

class PaymentDetails extends StatefulWidget {
  const PaymentDetails({Key? key}) : super(key: key);
  static const String id = 'Payment Details';
  @override
  State<PaymentDetails> createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  paymentType? _pType = paymentType.PaybyInstallment;
  paymentMethod? _pMethod = paymentMethod.CreditCard;

  IconData firstIcon = Icons.control_point_rounded;
  IconData secondIcon = Icons.control_point_rounded;

  bool isActive = true;
  bool isCCVisible = false;
  bool isPCVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      endDrawer: SideBar(
        isLoggedIn: true,
        isRenter: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.ideographic,
              children: <Widget>[
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
                  textColor: const Color(0xFF1C39BB),
                  lineColor: const Color(0xFFFEB618),
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
                color: const Color(0xFF575F6E),
              ),
            ),
            ksizedBoxTextFieldCol,
            Container(
              padding: const EdgeInsets.symmetric(vertical: 2),
              decoration: boxDecoration(),
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    child: paymentTypeSelection(
                      label: 'Credit Card',
                      isFirst: true,
                    ),
                    onTap: () => setState(() {
                      isCCVisible = !isCCVisible;
                      if (isActive == true) {
                        firstIcon = Icons.remove_circle_outline_outlined;
                        isActive = false;
                      } else {
                        firstIcon = Icons.control_point_rounded;
                        isActive = true;
                      }
                      _pMethod = paymentMethod.CreditCard;
                    }),
                  ),
                  Visibility(
                    visible: isCCVisible,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          child: divider,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            paymentSelection(label: 'Pay by Installment', paymentOption: 1),
                            paymentSelection(label: 'Pay in Full', paymentOption: 2),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: [
                              textFieldWithHintText(label: 'Card Number', hint: '0000-####'),
                              ksizedBoxTextFieldCol,
                              Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: textFieldWithHintText(label: 'Expiry Date', hint: 'MM/YY'),
                                  ),
                                  ksizedBoxTextFieldRow,
                                  Expanded(
                                    flex: 2,
                                    child: textFieldWithHintText(label: 'CVV', hint: 'Enter CVV'),
                                  ),
                                ],
                              ),
                              ksizedBoxTextFieldCol,
                              textFieldWithHintText(label: 'Name on Card', hint: 'Enter the name on card'),
                              ksizedBoxTextFieldCol,
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            kSizedBox,
            Container(
              padding: const EdgeInsets.symmetric(vertical: 2),
              decoration: boxDecoration(),
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    child: paymentTypeSelection(
                      label: 'Payment Center / E-Wallet',
                      isFirst: false,
                    ),
                    onTap: () => setState(() {
                      isPCVisible = !isPCVisible;
                      if (isActive == true) {
                        secondIcon = Icons.remove_circle_outline_outlined;
                        isActive = false;
                      } else {
                        secondIcon = Icons.control_point_rounded;
                        isActive = true;
                      }
                      _pMethod = paymentMethod.OnlinePayment;
                    }),
                  ),
                  Visibility(
                    visible: isPCVisible,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          child: divider,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            paymentSelection(
                              label: 'Gcash',
                              paymentOption: 3,
                            ),
                            paymentSelection(
                              label: 'Paypal',
                              paymentOption: 4,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ksizedBoxTFB,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                navigationButton(onPressed: () => Navigator.pop(context), icon: Icons.arrow_back, label: 'Go back', isGoBack: true),
                navigationButton(
                    onPressed: () => Navigator.pushNamed(context, ConfirmationPage.id), label: 'Go next', icon: Icons.arrow_forward, isGoBack: false)
              ],
            ),
            ksizedBoxTextFieldCol,
            noButtonIcons(
              onPressed: () => Navigator.pushNamed(context, RoomDetails.id),
              label: 'Cancel',
              isBorderRequired: true,
              buttonColor: Colors.white,
              textColor: const Color(0xFF242426),
              horizontalPadding: 27,
              verticalPadding: 15,
            ),
          ]),
        ),
      ),
    );
  }

  Row paymentTypeSelection({
    required String label,
    required bool isFirst,
  }) {
    return Row(
      children: <Widget>[
        Radio<paymentMethod>(
          value: isFirst == true ? paymentMethod.CreditCard : paymentMethod.OnlinePayment,
          groupValue: _pMethod,
          onChanged: (paymentMethod? value) {
            setState(() {
              _pMethod = value;
            });
          },
          focusColor: Color(0xFF242426),
          activeColor: Color(0xFF242426),
        ),
        Expanded(
          flex: 5,
          child: Container(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              label,
              style: textStyleContent(size: 16, color: const Color(0xFF242426)),
            ),
          ),
        ),
        Expanded(
          child: isFirst == true
              ? iconStyle(icon: firstIcon, color: const Color(0xFF242426), size: 24)
              : iconStyle(icon: secondIcon, color: const Color(0xFF242426), size: 24),
        ),
      ],
    );
  }

  // paymentOption: 1 = Pay by Installment, 2 = Pay in Full, 3 = Gcash, 4 = Paypal
  Row paymentSelection({required String label, required int paymentOption}) {
    return Row(
      children: [
        Radio<paymentType>(
          value: (paymentOption == 1)
              ? paymentType.PaybyInstallment
              : (paymentOption == 2)
                  ? paymentType.Payinfull
                  : (paymentOption == 3)
                      ? paymentType.Gcash
                      : (paymentOption == 4)
                          ? paymentType.Paypal
                          : null!,
          groupValue: _pType,
          onChanged: (paymentType? value) {
            setState(() {
              _pType = value;
            });
          },
          focusColor: Color(0xFF242426),
          activeColor: Color(0xFF242426),
        ),
        Text(
          label,
          style: textStyleContent(
            size: 14,
            color: Color(0xFF242426),
          ),
        ),
      ],
    );
  }

  Container circleIcon() {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: Color(0xFF242426),
        ),
      ),
    );
  }
}
