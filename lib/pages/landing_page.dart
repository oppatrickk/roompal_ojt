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
                        fontFamily: 'ProximaNovaRegular',
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
                    color: Color(0xFF1C39BB),
                    width: 335,
                    padding: EdgeInsets.all(20),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/img/house.png',
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
                                    fontFamily: 'ProximaNovaBold'),
                              ),
                              Text(
                                'RENT?',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 50,
                                    fontFamily: 'ProximaNovaBold'),
                              )
                            ],
                          )
                        ],
                      ),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFFFEB618),
                        ),
                        child: Center(
                          child: Text(
                            'List your property with us',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'ProximaNovaRegular',
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ]),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
