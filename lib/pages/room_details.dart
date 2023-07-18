import 'package:flutter/material.dart';
import 'package:roompal_ojt/pages/renter/renter_page(2).dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

class RoomDetails extends StatelessWidget {
  const RoomDetails({super.key});
  static const String id = 'RoomDetails';

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
          padding: kPagePadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Kwarto De Luna',
                style: kRoomName,
              ),
              const Text(
                'Room #0000',
                style: kRoomNumber,
              ),
              const Row(
                children: <Widget>[
                  RoomDetailsDisplay(Icons.star, '4.5'),
                  RoomDetailsDisplay(Icons.person, '125 reviews'),
                  RoomDetailsDisplay(Icons.table_restaurant, 'Studio'),
                  RoomDetailsDisplay(Icons.pin_drop, 'Legazpi City, Bicol'),
                ],
              ),
              const Row(
                children: <Widget>[
                  Text(
                    'Nearby Landmarks:',
                    style: TextStyle(
                      fontSize: 10.0,
                      fontFamily: 'ProximaNovaAltBold',
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  RoomDetailsDisplay(Icons.church, 'Albay Cathedral'),
                  RoomDetailsDisplay(Icons.park, 'Albay Park'),
                ],
              ),
              kSizedBox,
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xFF1C39BB),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 70.0),
                ),
                onPressed: null,
                child: const Text(
                  'Book This Property',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InteractiveIconsDisplay(Icons.favorite_border_outlined, 'Save'),
                  SizedBox(
                    width: 10.0,
                  ),
                  InteractiveIconsDisplay(Icons.share, 'Share'),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/img/rental.jpg',
                    height: 162,
                    width: 200,
                  ),
                  const SizedBox(width: 10),
                  Column(
                    children: <Widget>[
                      Container(
                        color: Colors.black12,
                        height: 65,
                        width: 100,
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Stack(
                        children: <Widget>[
                          Positioned(
                            top: 38,
                            bottom: 5,
                            left: 15,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.black38,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                ),
                              ),
                              onPressed: null,
                              child: const Text(
                                'Show all Photos',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 7.0,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.black12,
                            height: 65,
                            width: 100,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              kSizedBox,
              divider,
              kSizedBox,
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Room Details',
                    style: kHeaderTextStyle,
                  ),
                  Text(
                      'Located in -----, a 4-minute walk from ------ and 1.5 miles from ----- Public Beach, Seascape Room#0000 offers free WiFi and air conditioning.'),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                      'The vacation home is fitted with 2 bedrooms, 2 bathrooms, bed linen, towels, a flat-screen TV with satellite channels, a dining area, a fully equipped kitchen, and a balcony with sea views. For added convenience, the property can provide towels and bed linen for an extra charge.'),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                      'History and Fishing Museum is 8.9 miles from the vacation home, while Bluewater Bay Resort is 11 miles from the property. The nearest airport is ---- Executive Airport, 6.2 miles from Room#0000.'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const SizedBox kSizedBox = SizedBox(
  height: 20.0,
);
const TextStyle kHeaderTextStyle = TextStyle(
  fontSize: 20.0,
  fontFamily: 'ProximaNovaAltBold',
);

class InteractiveIconsDisplay extends StatelessWidget {
  const InteractiveIconsDisplay(this.icon, this.title, {super.key});
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          icon,
          size: 15.0,
          color: Colors.grey,
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 12.0,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

class RoomDetailsDisplay extends StatelessWidget {
  const RoomDetailsDisplay(this.icon, this.title, {super.key});
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          icon,
          size: 10.0,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 10.0),
        ),
        const SizedBox(
          width: 10.0,
        ),
      ],
    );
  }
}

const EdgeInsets kPagePadding = EdgeInsets.all(20.0);

const TextStyle kRoomName = TextStyle(
  fontSize: 32.0,
  fontFamily: 'ProximaNovaAltBold',
);
const TextStyle kRoomNumber = TextStyle(
  fontSize: 16.0,
  fontFamily: 'ProximaNovaRegular',
);
