import 'package:flutter/material.dart';
import 'package:roompal_ojt/pages/renter/renter_page(2).dart';
import 'package:roompal_ojt/pages/room_details.dart';
import '../widgets/widget_elements.dart';

class BookingSummary extends StatefulWidget {
  const BookingSummary({super.key});
  static const String id = 'booking_summary';

  @override
  State<BookingSummary> createState() => _BookingSummaryState();
}

class _BookingSummaryState extends State<BookingSummary> {
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Booking Summary',
                style: textStyleHeader(
                  size: 24,
                  color: Colors.black,
                ),
              ),
              divider,
              Text(
                'Room #000',
                style: textStyleHeader(
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Text(
                'Studio Type',
                style: textStyleHeader(
                  size: 15,
                  color: Colors.black,
                ),
              ),
              ksizedBoxTextFieldCol,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Check in date',
                    style: textStyleContent(
                      size: 18,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'July 14, 2023',
                    style: textStyleContent(
                      size: 18,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Check out date',
                    style: textStyleContent(
                      size: 18,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'July 27, 2023',
                    style: textStyleContent(
                      size: 18,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total days',
                    style: textStyleContent(
                      size: 18,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '14 days (2 weeks)',
                    style: textStyleContent(
                      size: 18,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Number of Guest',
                    style: textStyleContent(
                      size: 18,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '2',
                    style: textStyleContent(
                      size: 18,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              ksizedBoxTextFieldCol,
              const dashLineSeparator(color: Colors.grey),
              ksizedBoxTextFieldCol,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Subtotal',
                    style: textStyleContent(
                      size: 18,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Php. ####.00',
                    style: textStyleContent(
                      size: 18,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Discount',
                    style: textStyleContent(
                      size: 18,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Php. ###.00',
                    style: textStyleContent(
                      size: 18,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Serving Fee',
                    style: textStyleContent(
                      size: 18,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Php. ####.00',
                    style: textStyleContent(
                      size: 18,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Booking Fee',
                    style: textStyleContent(
                      size: 18,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Php. ####.00',
                    style: textStyleContent(
                      size: 18,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              ksizedBoxTextFieldCol,
              divider,
              ksizedBoxTextFieldCol,
              ksizedBoxTextFieldCol,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: textStyleContent(
                      size: 18,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Php. ####.00',
                    style: textStyleHeader(
                      size: 18,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              kSizedBox,
              GestureDetector(
                child: Container(
                  decoration: boxDecoration(),
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Center(
                    child: Text(
                      'Finish Payment',
                      style: textStyleHeader(color: Color(0xFF242426), size: 16),
                    ),
                  ),
                ),
                onTap: null,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class dashLineSeparator extends StatelessWidget {
  const dashLineSeparator({Key? key, this.height = 1, this.color = Colors.black}) : super(key: key);
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        const dashWidth = 10.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
        );
      },
    );
  }
}
