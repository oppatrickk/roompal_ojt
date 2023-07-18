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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Text(
                'Kwarto De Luna',
                textAlign: TextAlign.start,
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
                      fontSize: 12.0,
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
              const BlueTextButton('Book This Property'),
              const SizedBox(
                height: 20.0,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InteractiveIconsDisplay(
                      Icons.favorite_border_outlined, 'Save'),
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
                        width: 110,
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Stack(
                        children: <Widget>[
                          Positioned(
                            top: 37,
                            bottom: 5,
                            left: 30,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Color(0xFFFEB618),
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
                            width: 110,
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
                      'Located in -----, a 4-minute walk from ------ and 1.5 miles from ----- Public Beach, Seascape Room#0000 offers free WiFi and air conditioning.',
                      textAlign: TextAlign.justify),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                      'The vacation home is fitted with 2 bedrooms, 2 bathrooms, bed linen, towels, a flat-screen TV with satellite channels, a dining area, a fully equipped kitchen, and a balcony with sea views. For added convenience, the property can provide towels and bed linen for an extra charge.',
                      textAlign: TextAlign.justify),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                      'History and Fishing Museum is 8.9 miles from the vacation home, while Bluewater Bay Resort is 11 miles from the property. The nearest airport is ---- Executive Airport, 6.2 miles from Room#0000.',
                      textAlign: TextAlign.justify),
                  kSizedBox,
                ],
              ),
              const Card(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 100.0, vertical: 10.0),
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Price Details',
                        style: kHeaderTextStyle,
                      ),
                      kSizedBox,
                      Text('P 0000.00 /night'),
                      Text('P 0000.00 /night'),
                      Text('P 0000.00 /night'),
                    ],
                  ),
                ),
              ),
              const BlueTextButton('BOOK NOW'),
              kSizedBox,
              divider,
              kSizedBox,
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'What this place offers',
                    style: kHeaderTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      AmenitiesCard('Free Parking', Icons.local_parking),
                      AmenitiesCard('Kitchen', Icons.kitchen),
                      AmenitiesCard('Free WiFi', Icons.wifi),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      AmenitiesCard('Airconditioner', Icons.air_outlined),
                      AmenitiesCard(
                          'Washing Area', Icons.dry_cleaning_outlined),
                    ],
                  ),
                ],
              ),
              OutlinedButton(
                style: TextButton.styleFrom(
                  alignment: Alignment.center,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 70.0),
                ),
                onPressed: null,
                child: Text(
                  'Show all Amenities',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              kSizedBox,
              divider,
              kSizedBox,
            ],
          ),
        ),
      ),
    );
  }
}

class AmenitiesCard extends StatelessWidget {
  const AmenitiesCard(
    this.data,
    this.icon, {
    super.key,
  });
  final IconData icon;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 3.0, vertical: 3.0),
        decoration: BoxDecoration(
          border: Border.all(),
        ),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
          horizontalTitleGap: 0.0,
          leading: Icon(
            icon,
            size: 20,
          ),
          title: Text(
            data,
            style: TextStyle(
              fontSize: 10.0,
            ),
          ),
        ),
      ),
    );
  }
}

class BlueTextButton extends StatelessWidget {
  const BlueTextButton(
    this.buttonTitle, {
    super.key,
  });

  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        alignment: Alignment.center,
        backgroundColor: const Color(0xFF1C39BB),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 70.0),
      ),
      onPressed: null,
      child: Text(
        buttonTitle,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
      ),
    );
  }
}

const SizedBox kSizedBox = SizedBox(
  height: 15.0,
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
          size: 13.0,
        ),
        const SizedBox(
          width: 2.0,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 12.0),
        ),
        const SizedBox(
          width: 8.0,
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
