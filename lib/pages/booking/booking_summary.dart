import 'package:flutter/material.dart';
import 'package:roompal_ojt/pages/renter/main_renter_page.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/sidebar.dart';
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
      endDrawer: SideBar(
        isRenter: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              headerBS(label: 'Booking Summary', size: 32),
              ksizedBoxTextFieldCol,
              divider,
              ksizedBoxTextFieldCol,
              headerBS(label: 'Room #0000', size: 16),
              headerBS(label: 'Studio Type', size: 15),
              ksizedBoxTextFieldCol,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[contentBS(label: 'Check in date'), contentBS(label: 'July 14, 2023')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[contentBS(label: 'Check out date'), contentBS(label: 'July 27, 2023')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[contentBS(label: 'Total days'), contentBS(label: '14 days (2 weeks)')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  contentBS(label: 'Number of Guest'),
                  contentBS(label: '2'),
                ],
              ),
              ksizedBoxTextFieldCol,
              const DashLineSeparator(color: Colors.grey),
              ksizedBoxTextFieldCol,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  contentBS(label: 'Subtotal'),
                  Row(
                    children: <Widget>[
                      pesoSign(),
                      contentBS(label: '####.00'),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  contentBS(label: 'Discount'),
                  Row(
                    children: <Widget>[
                      pesoSign(),
                      contentBS(label: '###.00'),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  contentBS(label: 'Serving Fee'),
                  Row(
                    children: <Widget>[
                      pesoSign(),
                      contentBS(label: '####.00'),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  contentBS(label: 'Booking Fee'),
                  Row(
                    children: <Widget>[
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
                children: <Widget>[
                  contentBS(label: 'Total'),
                  Row(
                    children: <Widget>[
                      pesoSign(),
                      contentBS(label: '####.00'),
                    ],
                  )
                ],
              ),
              kSizedBox,
              noButtonIcons(
                onPressed: () => Navigator.pushNamed(context, RenterPage.id),
                label: 'Proceed to Booking Management',
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
        color: const Color(0xFF242426),
      ),
    );
  }

  Text headerBS({required String label, required double size}) {
    return Text(
      label,
      style: textStyleHeader(
        size: size,
        color: const Color(0xFF242426),
      ),
    );
  }
}

class DashLineSeparator extends StatelessWidget {
  const DashLineSeparator({Key? key, this.height = 1, this.color = Colors.black}) : super(key: key);
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final double boxWidth = constraints.constrainWidth();
        const double dashWidth = 10.0;
        final double dashHeight = height;
        final int dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List<Widget>.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
        );
      },
    );
  }
}
