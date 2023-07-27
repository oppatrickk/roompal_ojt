import 'package:flutter/material.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

class RenterPage extends StatelessWidget {
  RenterPage({super.key});
  static const String id = 'RenterPage';
  List<BookedRoomDetails> items = <BookedRoomDetails>[
    BookedRoomDetails('July 3, 2023', 'Kwarto De Luna', 'P ####.00', 'Processing'),
    BookedRoomDetails('July 3, 2023', 'Kwarto De Luna', 'P ####.00', 'Booked'),
    BookedRoomDetails('July 3, 2023', 'Kwarto De Luna', 'P ####.00', 'Failed'),
    BookedRoomDetails('July 3, 2023', 'Kwarto De Luna', 'P ####.00', 'Cancelled'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      endDrawer: buildSideBar(context),
      body: buildRenterPage(),
    );
  }

  Widget buildRenterPage() {
    if (items.isEmpty) {
      // If the list is empty, display this widget
      return const NoBookingData();
    } else {
      // If the list is not empty, build the list of containers
      return Container(
        padding: kPagePadding,
        child: BookingManagement(items: items),
      );
    }
  }
}

//class initialization
class BookedRoomDetails {
  BookedRoomDetails(this.date, this.name, this.price, this.status);
  String date;
  String name;
  String price;
  String status;
}

//if there is no data available
class NoBookingData extends StatelessWidget {
  const NoBookingData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20.0, 70.0, 20.0, 20.0),
      child: Column(
        children: <Widget>[
          const Image(
            width: 160.0,
            height: 160.0,
            image: AssetImage('assets/img/mb.png'),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            "You currently don't have a booking",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'ProximaNovaBold',
              fontSize: 24.0,
            ),
          ),
          const Text(
            'Check out hundereds of other destinations on our app',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'ProximaNovaRegular',
              fontSize: 15.0,
              color: Color(0xFF838383),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: const Color(0xFF1C39BB),
              padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 80.0),
            ),
            onPressed: null,
            child: const Text(
              'Continue',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

//if there is data available
class BookingManagement extends StatelessWidget {
  const BookingManagement({
    required this.items,
    super.key,
  });
  //list of data
  final List<BookedRoomDetails> items;

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

//builds the list of cards
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
      height: MediaQuery.of(context).size.height * 0.7,
      child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {},
              child: Card(
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
                          buildStatusContainer(items[index].status),
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
              ),
            );
          }),
    );
  }

//build status boxes
  Widget buildStatusContainer(String status) {
    Color containerColor;
    String statusText;
    Color textColor;

    if (status == "Booked") {
      containerColor = Color(0xFFD7FAE0);
      statusText = "Successfully Booked";
      textColor = Color(0xFF007D3A);
    } else if (status == "Processing") {
      containerColor = const Color(0xFFFFF5C7);
      statusText = "Processing";
      textColor = Color(0xFFCC8100);
    } else if (status == "Failed") {
      containerColor = Color(0xFFFFF0F1);
      statusText = "Failed";
      textColor = Color(0xFFFF424F);
    } else if (status == "Cancelled") {
      containerColor = Color(0xFFEBEBF0);
      statusText = "Cancelled";
      textColor = Color(0xFF808089);
    } else {
      // Default case if the status doesn't match any of the above conditions
      containerColor = Colors.white;
      statusText = "Unknown Status";
      textColor = Colors.black;
    }

    return Container(
      color: containerColor,
      padding: const EdgeInsets.symmetric(
        horizontal: 30.0,
        vertical: 5.0,
      ),
      child: Text(
        statusText,
        style: TextStyle(
          color: textColor,
          fontSize: 14.0,
        ),
      ),
    );
  }
}
