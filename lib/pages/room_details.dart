import 'package:flutter/material.dart';
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
              SizedBox(
                height: 20.0,
              ),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InteractiveIconsDisplay(Icons.favorite_border_outlined, 'Save'),
                  const SizedBox(
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
                    width: 215,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          color: Colors.black12,
                          height: 70,
                          width: 103,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(40, 50, 5, 2.0),
                          color: Colors.black12,
                          height: 70,
                          width: 103,
                        ),
                      ],
                    ),
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
 TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                            ),
                            onPressed: null,
                            child: const Text(
                              'Show all Photos',
                              textAlign: ,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 2.0,
                              ),
                            ),
                          ),

class InteractiveIconsDisplay extends StatelessWidget {
  InteractiveIconsDisplay(this.icon, this.title);
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
  const RoomDetailsDisplay(this.icon, this.title);
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
