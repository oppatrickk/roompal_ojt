// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
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
              kSizedBox,
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconWithTextDisplay(Icons.favorite_border_outlined, 'Save', Colors.grey),
                  ksizedBoxTextFieldRow,
                  IconWithTextDisplay(Icons.share, 'Share', Colors.grey),
                ],
              ),
              Row(
                children: <Widget>[
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
                                backgroundColor: const Color(0xFFFEB618),
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
                  padding: EdgeInsets.symmetric(horizontal: 100.0, vertical: 10.0),
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
                      AmenitiesCard('Washing Area', Icons.dry_cleaning_outlined),
                    ],
                  ),
                ],
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  alignment: Alignment.center,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  side: const BorderSide(width: 1.0, color: Colors.black),
                  padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 70.0),
                ),
                onPressed: null,
                child: const Text(
                  'Show all Amenities',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              kSizedBox,
              divider,
              kSizedBox,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    "Where you'll be",
                    style: kHeaderTextStyle,
                  ),
                  ksizedBoxTextFieldCol,
                  Image.asset('assets/img/map.png'),
                ],
              ),
              kSizedBox,
              divider,
              kSizedBox,
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'House Rules',
                    style: kHeaderTextStyle,
                  ),
                  ksizedBoxTextFieldCol,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: <Text>[
                        Text(
                          '1. insert rule',
                          style: kCardTitleStyle,
                        ),
                        Text(
                          '2. insert rule',
                          style: kCardTitleStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              kSizedBox,
              divider,
              kSizedBox,
              const Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconWithTextDisplay(Icons.star, '4.5', Colors.black),
                      ksizedBoxTextFieldRow,
                      IconWithTextDisplay(Icons.person, '125 Reviews', Colors.black),
                    ],
                  ),
                  ksizedBoxTextFieldCol,
                  Column(
                    children: <Widget>[
                      ReviewCard(),
                      ReviewCard(),
                      ReviewCard(),
                      ReviewCard(),
                      ReviewCard(),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ReviewCard extends StatelessWidget {
  const ReviewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CircleAvatar(
                  radius: 20.0,
                  backgroundColor: Colors.grey,
                  backgroundImage: null,
                ),
                ksizedBoxTextFieldRow,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Text>[
                    Text(
                      'Cardo on Ahking Room',
                      style: kReviewTitle,
                    ),
                    Text(
                      'July 5, 2023 | 10:23 AM',
                      style: kReviewSmallSubtitle,
                    ),
                  ],
                ),
                ksizedBoxTextFieldRow,
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.star, size: 10, color: Colors.orangeAccent),
                      Icon(Icons.star, size: 10, color: Colors.orangeAccent),
                      Icon(Icons.star, size: 10, color: Colors.orangeAccent),
                      Icon(Icons.star, size: 10, color: Colors.orangeAccent),
                      Icon(Icons.star, size: 10, color: Colors.orangeAccent),
                      Text('Excellent', style: TextStyle(color: Colors.green, fontSize: 8.0)),
                      Icon(Icons.check_circle_outline, color: Colors.green, size: 8.0),
                    ],
                  ),
                ),
              ],
            ),
            ksizedBoxTextFieldCol,
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
              style: kReviewText,
              textAlign: TextAlign.justify,
            ),
            ksizedBoxTextFieldCol,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.favorite_border_outlined, size: 15, color: Colors.grey),
                ksizedBoxTextFieldRow,
                IconWithTextDisplay(Icons.reply, 'Reply', Colors.grey),
              ],
            ),
          ],
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
        margin: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 3.0),
        decoration: BoxDecoration(
          border: Border.all(),
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
          horizontalTitleGap: 0.0,
          leading: Icon(
            icon,
            size: 20,
          ),
          title: Text(
            data,
            style: const TextStyle(
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

class IconWithTextDisplay extends StatelessWidget {
  const IconWithTextDisplay(this.icon, this.title, this.color, {super.key});
  final IconData icon;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          icon,
          size: 15.0,
          color: color,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 12.0,
            color: color,
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
