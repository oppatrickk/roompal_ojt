import 'package:flutter/material.dart';
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
          padding: EdgeInsets.all(20.0),
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
              BookDetails(),
              BookDetails(),
              BookDetails(),
              BookDetails(),
            ],
          ),
        ),
      ),
    );
  }
}

class BookDetails extends StatelessWidget {
  const BookDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
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
                  color: const Color(0xFFFFF5C7),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30.0,
                    vertical: 5.0,
                  ),
                  child: const Text(
                    'Processing',
                    style: TextStyle(
                      color: Color(0xFFCC8100),
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
    );
  }
}
