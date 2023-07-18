import 'package:flutter/material.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

class BookedDetails extends StatelessWidget {
  const BookedDetails({super.key});
  static const String id = 'BookedDetails';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: Colors.white,
        title: Image.asset('assets/img/wmB.png'),
        elevation: 5.0,
      ),
      endDrawer: buildSideBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
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
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        'Price Details',
                        style: kCardHeaderStyle,
                      ),
                      PriceDetails('Subtotal', 'P ####.00'),
                      PriceDetails('Discount', 'P ####.00'),
                      PriceDetails('Service Fee', 'P ####.00'),
                      PriceDetails('Booking Fee', 'P ####.00'),
                      divider,
                      const Padding(
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
      ),
      // bottomNavigationBar: Container(
      //   height: 50.0,
      //   color: Color(0xFF1C39BA),
      // ),
    );
  }
}

RoundedRectangleBorder border = RoundedRectangleBorder(
  side: const BorderSide(
    color: Color(0xFF808080),
  ),
  borderRadius: BorderRadius.circular(10.0),
);

const Divider divider = Divider(
  height: 1.0,
  color: Colors.grey,
  thickness: 1.0,
);
const TextStyle kCardHeaderStyle = TextStyle(
  fontFamily: 'ProximaNovaBold',
  fontSize: 16.0,
);
const TextStyle kCardSubtitleStyle = TextStyle(
  fontSize: 14.0,
  fontFamily: 'ProximaNovaBlack',
);
const TextStyle kCardTitleStyle = TextStyle(
  fontSize: 14.0,
  fontFamily: 'ProximaNovaRegular',
);
const TextStyle kCardAmountStyle = TextStyle(
  fontSize: 14.0,
);

class PriceDetails extends StatelessWidget {
  PriceDetails(this.title, this.amount);
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
  InformationDetails(this.title, this.subtitle);
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
  const ListData(this.details, this.icons, this.title);

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
