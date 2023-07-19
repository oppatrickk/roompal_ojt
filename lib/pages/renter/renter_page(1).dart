import 'package:flutter/material.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

class RenterPage1 extends StatelessWidget {
  const RenterPage1({super.key});
  static const String id = 'RenterPage1';

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
      body: const SingleChildScrollView(
        child: Padding(
          padding: kPagePadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Booking Management',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontFamily: 'ProximaNovaBold',
                ),
              ),
              Divider(
                height: 10.0,
                color: Colors.grey,
                thickness: 1.0,
              ),
              BookDetails(Color(0xFFFFF5C7), 'Processing', Color(0xFFCC8100)),
              BookDetails(Color(0xFFD7FAE0), 'Successfully booked', Color(0xFF007D3A)),
              BookDetails(Color(0xFFFFF0F1), 'Failed', Color(0xFFFF424F)),
              BookDetails(Color(0xFFEBEBF0), 'Cancelled', Color(0xFF808089)),
            ],
          ),
        ),
      ),
    );
  }
}

class BookDetails extends StatelessWidget {
  const BookDetails(this.status, this.condition, this.textColor, {super.key});

  final Color status;
  final Color textColor;
  final String condition;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    'July 3, 2023',
                    style: TextStyle(
                      fontSize: 10.0,
                      color: Color(0xFF808080),
                    ),
                  ),
                  Container(
                    color: status,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30.0,
                      vertical: 5.0,
                    ),
                    child: Text(
                      condition,
                      style: TextStyle(
                        color: textColor,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ],
              ),
              const ListTile(
                leading: Icon(Icons.other_houses_rounded),
                title: Text(
                  'Kwarto de Luna',
                  style: TextStyle(
                    fontFamily: 'ProximaNovaLight',
                    fontSize: 18.0,
                  ),
                ),
              ),
              const Divider(
                height: 1.0,
                color: Colors.grey,
                thickness: 1.0,
              ),
              const Text(
                'P ####.00',
                style: TextStyle(
                  fontSize: 18.0,
                  fontFamily: 'ProximaNovaBold',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
