import 'package:flutter/material.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/sidebar.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

//(0) class initialization
class BookedRoomDetails {
  BookedRoomDetails(this.date, this.name, this.price, this.status);
  String date;
  String name;
  String price;
  String status;
}

//(1) if there is no data available
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

//(2) if there is data available
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
            LVBuilder(items),
          ],
        ),
      ),
    );
  }
}

//(2.1) builds the list of cards
class LVBuilder extends StatelessWidget {
  const LVBuilder(this.items, {super.key});
  final List<BookedRoomDetails> items;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.7,
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return CardBuild(
            items: items,
            index: index,
          );
        },
      ),
    );
  }
}

//(2.2) card template
class CardBuild extends StatelessWidget {
  const CardBuild({
    super.key,
    required this.items,
    required this.index,
  });
  final int index;
  final List<BookedRoomDetails> items;

  void _onCardPress(BuildContext context) {
    // Navigate to the new page when the card is pressed
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BuildBookedRoomDetails(items[index].name, items[index].status, items[index].price),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _onCardPress(context),
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
                    style: const TextStyle(
                      fontSize: 10.0,
                      color: Color(0xFF808080),
                    ),
                  ),
                  //status boxes
                  StatusContainers(status: items[index].status),
                ],
              ),
              ListTile(
                leading: const Icon(Icons.other_houses_rounded),
                title: Text(
                  items[index].name,
                  style: const TextStyle(
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
                style: const TextStyle(
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

//(2.2.1) build status boxes
class StatusContainers extends StatelessWidget {
  const StatusContainers({
    super.key,
    required this.status,
  });

  final String status;

  @override
  Widget build(BuildContext context) {
    Color containerColor;
    String statusText;
    Color textColor;

    if (status == "Booked") {
      containerColor = const Color(0xFFD7FAE0);
      statusText = "Successfully Booked";
      textColor = const Color(0xFF007D3A);
    } else if (status == "Processing") {
      containerColor = const Color(0xFFFFF5C7);
      statusText = "Processing";
      textColor = const Color(0xFFCC8100);
    } else if (status == "Failed") {
      containerColor = const Color(0xFFFFF0F1);
      statusText = "Failed";
      textColor = const Color(0xFFFF424F);
    } else if (status == "Cancelled") {
      containerColor = const Color(0xFFEBEBF0);
      statusText = "Cancelled";
      textColor = const Color(0xFF808089);
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

//(3) build new page
class BuildBookedRoomDetails extends StatelessWidget {
  const BuildBookedRoomDetails(
    this.name,
    this.status,
    this.price, {
    super.key,
  });
  final String status;
  final String name;
  final String price;

  static const String id = 'BuildBookedRoomDetails';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      endDrawer: SideBar(
        isRenter: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: kPagePadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              StatusContainers(status: status),
              //room details
              Card(
                surfaceTintColor: Colors.white,
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
                      child: ListTile(
                        leading: const Icon(
                          Icons.house_outlined,
                          color: Colors.white,
                        ),
                        title: Text(
                          name,
                          style: const TextStyle(
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
              //guest info
              Card(
                surfaceTintColor: Colors.white,
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
                      'Pipay Di Pinili',
                      Icons.person_2_outlined,
                      'Guest name',
                    ),
                  ],
                ),
              ),
              //contact info
              Card(
                surfaceTintColor: Colors.white,
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
              //price details
              Card(
                surfaceTintColor: Colors.white,
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
                      const PriceDetails('Subtotal', 'P ####.00'),
                      const PriceDetails('Discount', 'P ####.00'),
                      const PriceDetails('Service Fee', 'P ####.00'),
                      const PriceDetails('Booking Fee', 'P ####.00'),
                      divider,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            const Text(
                              'Total:',
                              style: kCardTitleStyle,
                            ),
                            Text(
                              price,
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
