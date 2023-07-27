import 'package:flutter/material.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';

class BookedDetails extends StatelessWidget {
  const BookedDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: kPagePadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: const Color(0xFFD7FAE0),
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 5.0,
              ),
              child: const Text(
                'Successfully booked',
                style: TextStyle(
                  color: Color(0xFF007D3A),
                  fontSize: 14.0,
                ),
              ),
            ),
            Card(
              shape: border,
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10),
                      ),
                      color: Color(0xFF1C39BA),
                    ),
                    child: const ListTile(
                      leading: Icon(
                        Icons.house_outlined,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Kwarto De Luna',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'ProximaNovaBold',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const ListData(
                    '1 night',
                    Icons.bedtime_outlined,
                    'Duration',
                  ),
                  const ListData(
                    '2 adults, 1 child',
                    Icons.person_2_outlined,
                    'Guest',
                  ),
                  const ListData(
                    'Wed, 03/07/2022 (15:00-3:00)',
                    Icons.access_time_outlined,
                    'Check-in Time',
                  ),
                  const ListData(
                    'Fri, 07/07/2022 (before 11:00)',
                    Icons.access_time_outlined,
                    'Check-out Time',
                  ),
                ],
              ),
            ),
            Card(
              shape: border,
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 20.0, 4.0, 0.0),
                    child: Text(
                      'Guest Information',
                      style: kCardHeaderStyle,
                    ),
                  ),
                  ListData(
                    'NGUYEN VAN AHN',
                    Icons.person_2_outlined,
                    'Guest name',
                  ),
                ],
              ),
            ),
            Card(
              shape: border,
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Contact Info',
                      style: kCardHeaderStyle,
                    ),
                    InformationDetails('Full Name', 'Pipay Di Pinili'),
                    divider,
                    InformationDetails('Phone', '09423183681'),
                    divider,
                    InformationDetails('Email', 'pipaydp@gmail.com'),
                  ],
                ),
              ),
            ),
            Card(
              shape: border,
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Price Details',
                      style: kCardHeaderStyle,
                    ),
                    PriceDetails('Subtotal', 'P ####.00'),
                    PriceDetails('Discount', 'P ####.00'),
                    PriceDetails('Service Fee', 'P ####.00'),
                    PriceDetails('Booking Fee', 'P ####.00'),
                    divider,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Total:',
                            style: kCardTitleStyle,
                          ),
                          Text(
                            'P ####.00',
                            style: kCardSubtitleStyle,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PriceDetails extends StatelessWidget {
  const PriceDetails(this.title, this.amount, {super.key});
  final String title;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: kCardTitleStyle,
          ),
          Text(
            amount,
            style: kCardAmountStyle,
          ),
        ],
      ),
    );
  }
}

class InformationDetails extends StatelessWidget {
  const InformationDetails(this.title, this.subtitle, {super.key});
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: kCardTitleStyle,
          ),
          Text(
            subtitle,
            style: kCardSubtitleStyle,
          ),
        ],
      ),
    );
  }
}

class ListData extends StatelessWidget {
  const ListData(this.details, this.icons, this.title, {super.key});

  final IconData icons;
  final String title;
  final String details;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icons),
      title: Text(
        title,
        style: kCardTitleStyle,
      ),
      subtitle: Text(
        details,
        style: kCardSubtitleStyle,
      ),
    );
  }
}
