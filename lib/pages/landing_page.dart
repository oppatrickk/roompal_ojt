import 'package:flutter/material.dart';
import '../widgets/widget_elements.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);
  static const String id = 'LandingPage';

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  bool? actionStatus = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/img/wmB.png"),
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
                child: searchBar(),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: GestureDetector(
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
                  onTap: () => showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        height: 700,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(16),
                            topLeft: Radius.circular(16),
                          ),
                          color: Colors.white,
                        ),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Filters',
                                    style: textStyleHeader(
                                      color: Color(0xFF1C39BB),
                                      size: 24,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Text(
                                      'Reset',
                                      style: textStyleHeader(
                                        color: Colors.red,
                                        size: 16,
                                      ),
                                      textAlign: TextAlign.end,
                                    ),
                                  ),
                                ],
                              ),
                              const Divider(
                                color: Color(0xFFB9B9C3),
                              ),
                              Column(
                                children: [
                                  SizedBox(height: 20),
                                  Column(
                                    children: [
                                      filterContents(
                                          label: 'Show Occupied Rooms'),
                                      filterContents(
                                          label: 'Show Vacant Rooms'),
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Type of Room',
                                        style: textStyleHeader(
                                            color: Color(0xFF242731), size: 20),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Column(children: [
                                          filterContents(
                                              label: 'Boarding House'),
                                          filterContents(label: 'Bedspace'),
                                          filterContents(label: 'Apartment'),
                                          filterContents(label: 'Studio'),
                                        ]),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 80),
                              buttonLP(
                                  height: 40,
                                  color: Color(0xFF1C39BB),
                                  label: 'Apply Filter',
                                  textColor: Colors.white,
                                  size: 16),
                            ],
                          ),
                        ),
                      );
                    },
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
                                style: textStyleHeader(
                                    color: Colors.white, size: 20),
                              ),
                              Text(
                                'RENT?',
                                style: textStyleHeader(
                                    color: Colors.white, size: 50),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      buttonLP(
                          height: 40,
                          color: Color(0xFFFEB618),
                          label: 'List your property with us',
                          textColor: Colors.black,
                          size: 16),
                      SizedBox(height: 10),
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
                    height: 310,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color(0xFF1C39BB),
                      borderRadius: BorderRadius.circular(16),
                    ),
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
            propertyCardView(
              propertyImage: 'rental.jpg',
              propertyStatus: 'AVAILABLE',
              propertyName: 'ROOM NAME',
              propertyNumber: 1,
              propertyPrice: 0000.00,
              propertyCity: 'Legazpi City',
              propertyProvince: 'Albay',
              propertyIcon: Icons.hotel,
              propertyType: 'Bedspace',
              propertyAccommodation: '4-18 people',
              propertyStatusColor: Color(0xFF00B400),
            ),
            SizedBox(height: 20),
            propertyCardView(
              propertyImage: 'rental.jpg',
              propertyStatus: 'AVAILABLE',
              propertyName: 'ROOM NAME',
              propertyNumber: 1,
              propertyPrice: 0000.00,
              propertyCity: 'Legazpi City',
              propertyProvince: 'Albay',
              propertyIcon: Icons.hotel,
              propertyType: 'Bedspace',
              propertyAccommodation: '4-18 people',
              propertyStatusColor: Color(0xFF00B400),
            ),
            SizedBox(height: 20),
            propertyCardView(
              propertyImage: 'rental.jpg',
              propertyStatus: 'AVAILABLE',
              propertyName: 'ROOM NAME',
              propertyNumber: 1,
              propertyPrice: 0000.00,
              propertyCity: 'Legazpi City',
              propertyProvince: 'Albay',
              propertyIcon: Icons.hotel,
              propertyType: 'Bedspace',
              propertyAccommodation: '4-18 people',
              propertyStatusColor: Color(0xFF00B400),
            ),
            SizedBox(height: 20),
            propertyCardView(
              propertyImage: 'rental.jpg',
              propertyStatus: 'AVAILABLE',
              propertyName: 'ROOM NAME',
              propertyNumber: 1,
              propertyPrice: 0000.00,
              propertyCity: 'Legazpi City',
              propertyProvince: 'Albay',
              propertyIcon: Icons.hotel,
              propertyType: 'Bedspace',
              propertyAccommodation: '4-18 people',
              propertyStatusColor: Color(0xFF00B400),
            ),
            SizedBox(height: 20),
            propertyCardView(
              propertyImage: 'rental.jpg',
              propertyStatus: 'AVAILABLE',
              propertyName: 'ROOM NAME',
              propertyNumber: 1,
              propertyPrice: 0000.00,
              propertyCity: 'Legazpi City',
              propertyProvince: 'Albay',
              propertyIcon: Icons.hotel,
              propertyType: 'Bedspace',
              propertyAccommodation: '4-18 people',
              propertyStatusColor: Color(0xFF00B400),
            ),
          ]),
        ),
      ),
    );
  }

  Row filterContents({required String label}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 24,
          width: 24,
          child: Checkbox(
              value: actionStatus,
              onChanged: (bool? value) {
                setState(() {
                  actionStatus = value;
                });
                if (actionStatus!) {
                } else {}
              }),
        ),
        SizedBox(width: 10),
        filterRoomStatus(label: label)
      ],
    );
  }
}
