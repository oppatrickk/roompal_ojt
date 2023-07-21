import 'package:flutter/material.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';
import 'package:roompal_ojt/widgets/widget_property_owner.dart';

class OwnerReviewPage extends StatelessWidget {
  const OwnerReviewPage({super.key});
  static const String id = 'OwnerReviewPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/img/wmB.png'),
      ),
      endDrawer: buildSideBar(context),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: Color(0xFFFFFFFF),
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            children: [
              //search bar and filter box
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 4,
                    child: searchBar(),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: null,
                      child: const FilterBox(),
                    ),
                  ),
                ],
              ),
              ksizedBoxTextFieldCol,
              //total reviews card
              Card(
                surfaceTintColor: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    //photo
                    SizedBox(
                      width: 140,
                      child: Image.asset('assets/img/r.png'),
                    ),
                    const Column(
                      children: <Widget>[
                        Text(
                          'Total Reviews',
                          style: kCardHeaderStyle,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              '1.2k',
                              style: TextStyle(
                                height: 0,
                                fontSize: 40,
                                color: Color(0xFF1C39BB),
                                fontFamily: 'ProximaNovaAltBold',
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              width: 62,
                              child: Card(
                                color: Color(0xFF96A9CC),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.show_chart_outlined,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      '21%',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Growth in reviews on this year',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ksizedBoxTextFieldCol,
              Card(
                surfaceTintColor: Colors.white,
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 160,
                      padding: EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Text(
                            'Average Rating ',
                            style: kCardHeaderStyle,
                          ),
                          Text(
                            '4.0',
                            style: TextStyle(
                              height: 0,
                              fontSize: 40,
                              color: Color(0xFF1C39BB),
                              fontFamily: 'ProximaNovaAltBold',
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Row(
                            children: <Widget>[
                              starRating(color: const Color(0xFFFEB618), size: 25),
                              starRating(color: const Color(0xFFFEB618), size: 25),
                              starRating(color: const Color(0xFFFEB618), size: 25),
                              starRating(color: const Color(0xFFFEB618), size: 25),
                              starRating(color: const Color(0xFFDEDEDE), size: 25),
                            ],
                          ),
                          Text(
                            'Average Rating this year',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const BarGraphLabel(),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Row(),
                        ],
                      ),
                    ),
                    const BarGraphNumberLabel(
                      excellent: '300',
                      veryGood: '275',
                      good: '200',
                      fair: '80',
                      poor: '20',
                    ),
                  ],
                ),
              ),
              ksizedBoxTextFieldCol,
              const ReviewCard(),
              const ReviewCard(),
              const ReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class BarGraphNumberLabel extends StatelessWidget {
  const BarGraphNumberLabel({
    required this.excellent,
    required this.veryGood,
    required this.good,
    required this.fair,
    required this.poor,
    super.key,
  });
  final String excellent;
  final String veryGood;
  final String good;
  final String fair;
  final String poor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            excellent,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10,
            ),
          ),
          Text(
            veryGood,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10,
            ),
          ),
          Text(
            good,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10,
            ),
          ),
          Text(
            fair,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10,
            ),
          ),
          Text(
            poor,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}

class BarGraphLabel extends StatelessWidget {
  const BarGraphLabel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Excellent',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10,
              color: Colors.green[900],
            ),
          ),
          Text(
            'Very Good',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10,
              color: Colors.green,
            ),
          ),
          Text(
            'Good',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10,
              color: Colors.orangeAccent,
            ),
          ),
          Text(
            'Fair',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10,
              color: Color(0xFFFF6B00),
            ),
          ),
          Text(
            'Poor',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
