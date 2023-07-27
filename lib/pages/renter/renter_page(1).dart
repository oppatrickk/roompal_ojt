import 'package:flutter/material.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

class RenterPage1 extends StatelessWidget {
  const RenterPage1({super.key});
  static const String id = 'RenterPage1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      endDrawer: buildSideBar(context),
      body: Container(
        padding: kPagePadding,
        child: BookingManagement(),
      ),
    );
  }
}
/* ------------------------------------------------------------- */

class BookingManagement extends StatelessWidget {
  BookingManagement({
    super.key,
  });

  //list of data
  final List<BookedRoomDetails> items = <BookedRoomDetails>[
    BookedRoomDetails('July 3, 2023', 'Kwarto De Luna', 'P ####.00', 'Processing'),
    BookedRoomDetails('July 3, 2023', 'Kwarto De Luna', 'P ####.00', 'Booked'),
    BookedRoomDetails('July 3, 2023', 'Kwarto De Luna', 'P ####.00', 'Failed'),
    BookedRoomDetails('July 3, 2023', 'Kwarto De Luna', 'P ####.00', 'Canceled'),
    BookedRoomDetails('July 3, 2023', 'Kwarto De Luna', 'P ####.00', 'Canceled'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Booking Management',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontFamily: 'ProximaNovaBold',
              ),
            ),
            const Divider(
              height: 10.0,
              color: Colors.grey,
              thickness: 1.0,
            ),
            ListViewBuilder(items: items),
          ],
        ),
      ),
    );
  }
}

class BookedRoomDetails {
  BookedRoomDetails(this.date, this.name, this.price, this.status);
  String date;
  String name;
  String price;
  String status;
}

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({
    super.key,
    required this.items,
  });
  final List<BookedRoomDetails> items;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.9,
      child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              surfaceTintColor: Colors.white,
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          items[index].date,
                          style: TextStyle(
                            fontSize: 10.0,
                            color: Color(0xFF808080),
                          ),
                        ),
                        //status boxes
                        //data.status == 'Booked' ? kBooked : kProcessing,
                      ],
                    ),
                    ListTile(
                      leading: Icon(Icons.other_houses_rounded),
                      title: Text(
                        items[index].name,
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
                    Text(
                      items[index].price,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'ProximaNovaBold',
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}

class BookDetails extends StatelessWidget {
  const BookDetails(this.data, {super.key});
  final BookedRoomDetails data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        surfaceTintColor: Colors.white,
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    data.date,
                    style: TextStyle(
                      fontSize: 10.0,
                      color: Color(0xFF808080),
                    ),
                  ),
                  //status boxes
                  data.status == 'Booked' ? kBooked : kProcessing,
                ],
              ),
              ListTile(
                leading: Icon(Icons.other_houses_rounded),
                title: Text(
                  data.name,
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
              Text(
                data.price,
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

Container kBooked = Container(
  color: const Color(0xFFFFF5C7),
  padding: const EdgeInsets.symmetric(
    horizontal: 30.0,
    vertical: 5.0,
  ),
  child: const Text(
    'Successfully Booked',
    style: TextStyle(
      color: Color(0xFF007D3A),
      fontSize: 14.0,
    ),
  ),
);

Container kProcessing = Container(
  color: const Color(0xFFD7FAE0),
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
);

Container kFailed = Container(
  color: const Color(0xFFFFF0F1),
  padding: const EdgeInsets.symmetric(
    horizontal: 30.0,
    vertical: 5.0,
  ),
  child: const Text(
    'Failed',
    style: TextStyle(
      color: Color(0xFFFF424F),
      fontSize: 14.0,
    ),
  ),
);

Container kCancelled = Container(
  color: const Color(0xFFEBEBF0),
  padding: const EdgeInsets.symmetric(
    horizontal: 30.0,
    vertical: 5.0,
  ),
  child: const Text(
    'Cancelled',
    style: TextStyle(
      color: Color(0xFF808089),
      fontSize: 14.0,
    ),
  ),
);
