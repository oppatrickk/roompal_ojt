import 'package:flutter/material.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

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
      appBar: appBar(),
      endDrawer: buildSideBar(context),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              headerBS(label: 'Booking Summary', size: 32),
              ksizedBoxTextFieldCol,
              divider,
              ksizedBoxTextFieldCol,
              headerBS(label: 'Room #0000', size: 16),
              headerBS(label: 'Studio Type', size: 15),
              ksizedBoxTextFieldCol,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [contentBS(label: 'Check in date'), contentBS(label: 'July 14, 2023')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [contentBS(label: 'Check out date'), contentBS(label: 'July 27, 2023')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [contentBS(label: 'Total days'), contentBS(label: '14 days (2 weeks)')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  contentBS(label: 'Number of Guest'),
                  contentBS(label: '2'),
                ],
              ),
              ksizedBoxTextFieldCol,
              const dashLineSeparator(color: Colors.grey),
              ksizedBoxTextFieldCol,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  contentBS(label: 'Subtotal'),
                  Row(
                    children: [
                      pesoSign(),
                      contentBS(label: '####.00'),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  contentBS(label: 'Discount'),
                  Row(
                    children: [
                      pesoSign(),
                      contentBS(label: '###.00'),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  contentBS(label: 'Serving Fee'),
                  Row(
                    children: [
                      pesoSign(),
                      contentBS(label: '####.00'),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  contentBS(label: 'Booking Fee'),
                  Row(
                    children: [
                      pesoSign(),
                      contentBS(label: '####.00'),
                    ],
                  )
                ],
              ),
              ksizedBoxTextFieldCol,
              divider,
              ksizedBoxTextFieldCol,
              ksizedBoxTextFieldCol,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  contentBS(label: "Total"),
                  Row(
                    children: [
                      pesoSign(),
                      contentBS(label: '####.00'),
                    ],
                  )
                ],
              ),
              kSizedBox,
              noButtonIcons(
                onPressed: null,
                label: 'Finish Payment',
                isBorderRequired: true,
                buttonColor: Colors.white,
                textColor: const Color(0xFF242426),
                horizontalPadding: 27,
                verticalPadding: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Text pesoSign() {
    return const Text(
      '₱ ',
      style: TextStyle(fontSize: 18),
    );
  }

  Text contentBS({required String label}) {
    return Text(
      label,
      style: textStyleContent(
        size: 18,
        color: Color(0xFF242426),
      ),
    );
  }

  Text headerBS({required String label, required double size}) {
    return Text(
      label,
      style: TextStyle(
        fontSize: size,
        fontFamily: 'ProximaNovaAltBold',
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
