import 'package:flutter/material.dart';
import '../widgets/widget_elements.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);
  static const String id = 'LandingPage';

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/img/wmB.png"),
        // elevation: 5.0,
      ),
      endDrawer: buildSideBar(context),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(children: [
            Row(children: [
              Expanded(
                flex: 4,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Rooms',
                    hintStyle: TextStyle(
                        fontSize: 16,
                        fontFamily: 'ProximaNovaAltLight',
                        color: Colors.grey),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Color(0xFF242731),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFF242731),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Icon(
                    Icons.filter_list_rounded,
                    size: 30,
                    color: Color(0xFF242731),
                  ),
                ),
              ),
            ]),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 335,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Color(0xFF1C39BB),
                        borderRadius: BorderRadius.circular(16)),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/img/house.png',
                            height: 130,
                            width: 130,
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'ROOM FOR',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'ProximaNovaAltBold'),
                              ),
                              Text(
                                'RENT?',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 50,
                                    fontFamily: 'ProximaNovaAltBold'),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFFFEB618),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            'List your property with us',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'ProximaNovaAltBold',
                                color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'With our extensive network of potential tenants and a wide range of features, we strive to make the rental process as effortless as possible.',
                        style: textStyleContent(size: 14, color: Colors.white),
                        textAlign: TextAlign.justify,
                      ),
                    ]),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 335,
                    height: 330,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Color(0xFF1C39BB),
                        borderRadius: BorderRadius.circular(16)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 6,
                          child: Text(
                            'Promotional Stuff',
                            style:
                                textStyleHeader(color: Colors.white, size: 28),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 35,
                  child: Divider(
                    color: Color(0xFF242731),
                  ),
                ),
                Text(
                  'HELPING YOU FIND A PLACE TO CALL HOME',
                  style: textStyleHeader(color: Color(0xFF242731), size: 12),
                ),
                SizedBox(
                  width: 35,
                  child: Divider(
                    color: Color(0xFF242731),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: Color(0xFFBBBFC1),
                ),
              ),
              child: Column(
                children: [
                  Image.asset('assets/img/rental.jpg'),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Color(0xFF00B400),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              'AVAILABLE',
                              style: textStyleHeader(
                                  color: Color(0xFF00B400), size: 12),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Room Name',
                              style: textStyleHeader(
                                  color: Color(0xFF242731), size: 20),
                            ),
                            Text(
                              'Starting at',
                              style: textStyleContent(
                                  color: Color(0xFF242731), size: 14),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Room #000',
                              style: textStyleContent(
                                  color: Color(0xFF242731), size: 20),
                            ),
                            Row(
                              children: [
                                Text(
                                  '\$ ',
                                  style: textStyleHeader(
                                      color: Color(0xFF1C39BB), size: 20),
                                ),
                                Text(
                                  '0000.00',
                                  style: textStyleHeader(
                                      color: Color(0xFF242731), size: 20),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'City Name, Region',
                              style: textStyleHeader(
                                  color: Color(0xFF242731), size: 12),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.hotel,
                                  color: Color(0xFF1C39BB),
                                ),
                                Text(
                                  ' Bedspace',
                                  style: textStyleHeader(
                                      color: Color(0xFF242731), size: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                starRating(color: Color(0xFFFEB618), size: 25),
                                starRating(color: Color(0xFFFEB618), size: 25),
                                starRating(color: Color(0xFFFEB618), size: 25),
                                starRating(color: Color(0xFFFEB618), size: 25),
                                starRating(color: Color(0xFFDEDEDE), size: 25),
                              ],
                            ),
                            Text(
                              '4-18 people',
                              style: textStyleContent(
                                  color: Color(0xFF242731), size: 12),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
