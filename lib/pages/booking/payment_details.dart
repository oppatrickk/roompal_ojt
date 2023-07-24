import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

class PaymentDetails extends StatefulWidget {
  const PaymentDetails({Key? key}) : super(key: key);
  static const String id = 'Payment Details';
  @override
  State<PaymentDetails> createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  String? _selected;
  List<Map> _onlinePayment = [
    {
      'id': '1',
      'image': 'assets/svg/paypal.svg',
      'label': 'Paypal',
    },
    {
      'id': '2',
      'image': 'assets/svg/gcash.svg',
      'label': 'Gcash',
    },
  ];

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
                  padding: const EdgeInsets.all(10),
                  decoration: boxDecoration(),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Color(0xFF242731),
                              ),
                            ),
                          ),
                          ksizedBoxTextFieldRow,
                          Expanded(
                            flex: 5,
                            child: Text(
                              'CREDIT CARD',
                              style: textStyleContent(
                                  size: 16, color: const Color(0xFF242426)),
                            ),
                          ),
                          Expanded(
                            child: iconStyle(
                                icon: Icons.control_point_rounded,
                                color: const Color(0xFF242426),
                                size: 24),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                ksizedBoxTextFieldCol,
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: boxDecoration(),
                  child: DropdownButtonHideUnderline(
                    child: ButtonTheme(
                      alignedDropdown: true,
                      child: DropdownButton(
                        hint: Text(
                          'Payment Center / E-Wallet',
                          style: textStyleContent(
                            size: 16,
                            color: Color(0xFF242426),
                          ),
                        ),
                        icon: iconStyle(
                          icon: Icons.control_point_rounded,
                          color: Color(0xFF242426),
                          size: 24,
                        ),
                        value: _selected,
                        items: _onlinePayment.map((opItem) {
                          return DropdownMenuItem(
                            value: opItem['id'].toString(),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  opItem['image'],
                                  height: 24,
                                  width: 24,
                                ),
                                ksizedBoxTextFieldRow,
                                Text(
                                  opItem['label'],
                                  style: textStyleContent(
                                    size: 14,
                                    color: Color(0xFF242426),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                        onChanged: (newValue) {
                          setState(() {
                            _selected = newValue;
                          });
                        },
                      ),
                    ),
                  ),
                ),
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
                        onPressed: null,
                        label: 'Go next',
                        icon: Icons.arrow_forward,
                        isGoBack: false)
                  ],
                ),
                ksizedBoxTextFieldCol,
                noButtonIcons(
                  onPressed: null,
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
