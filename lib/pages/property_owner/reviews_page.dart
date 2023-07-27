import 'package:flutter/material.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';
import 'package:roompal_ojt/widgets/widget_property_owner.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class OwnerReviewPage extends StatefulWidget {
  const OwnerReviewPage({super.key});
  static const String id = 'OwnerReviewPage';

  @override
  State<OwnerReviewPage> createState() => _OwnerReviewPageState();
}

class _OwnerReviewPageState extends State<OwnerReviewPage> {
  //late List<ReviewData> _chartData;
  // @override
  // void initState() {
  //   _chartData = getChartData();
  //   super.initState();
  // }

  final List<ReviewData> chartData = <ReviewData>[
    ReviewData('Poor', 30, Colors.red),
    ReviewData('Fair', 80, Colors.orange),
    ReviewData('Good', 200, Colors.orangeAccent),
    ReviewData('Very Good', 275, Colors.green),
    ReviewData('Excellent', 300, const Color.fromRGBO(27, 94, 32, 1)),
  ];

  // Bottom NavigationBar
  int selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> widgetOptions = <Widget>[
    Text(
      'Index 0: Create Listing',
      style: optionStyle,
    ),
    Text(
      'Index 1: Manage Listing',
      style: optionStyle,
    ),
    Text(
      'Index 2: Stay View',
      style: optionStyle,
    ),
    Text(
      'Index 3: Review',
      style: optionStyle,
    ),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      endDrawer: buildSideBar(context),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: const Color(0xFFFFFFFF),
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            children: <Widget>[
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
              //rating analysis
              Card(
                surfaceTintColor: Colors.white,
                child: Row(
                  children: <Widget>[
                    //average rating
                    Container(
                      width: 145,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 10),
                      child: Column(
                        children: <Widget>[
                          const Text(
                            'Average Rating ',
                            style: TextStyle(
                              fontFamily: 'ProximaNovaBold',
                              fontSize: 14.0,
                            ),
                          ),
                          const Text(
                            '4.0',
                            style: TextStyle(
                              height: 0,
                              fontSize: 30,
                              color: Color(0xFF1C39BB),
                              fontFamily: 'ProximaNovaAltBold',
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Row(
                            children: <Widget>[
                              starRating(
                                  color: const Color(0xFFFEB618), size: 25),
                              starRating(
                                  color: const Color(0xFFFEB618), size: 25),
                              starRating(
                                  color: const Color(0xFFFEB618), size: 25),
                              starRating(
                                  color: const Color(0xFFFEB618), size: 25),
                              starRating(
                                  color: const Color(0xFFDEDEDE), size: 25),
                            ],
                          ),
                          const Text(
                            'Average Rating this year',
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 150,
                      width: 180,
                      child: SfCartesianChart(
                        series: <ChartSeries>[
                          BarSeries<ReviewData, String>(
                            pointColorMapper: (ReviewData data, _) =>
                                data.color,
                            dataSource: chartData,
                            xValueMapper: (ReviewData data, _) => data.label,
                            yValueMapper: (ReviewData data, _) => data.value,
                            dataLabelSettings: DataLabelSettings(
                              isVisible: true,
                              labelAlignment: ChartDataLabelAlignment.outer,
                            ),
                          ),
                        ],
                        primaryXAxis: CategoryAxis(),
                      ),
                    ),
                  ],
                ),
              ),
              ksizedBoxTextFieldCol,
              //reviews
              const ReviewCard(),
              ksizedBoxTextFieldCol,
              const ReviewCard(),
              ksizedBoxTextFieldCol,
              const ReviewCard(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_rounded),
            label: 'Create Listing',
            backgroundColor: Color(0xFF1C39BB),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit_note_rounded),
            label: 'Manage Listing',
            backgroundColor: Color(0xFF1C39BB),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_rounded),
            label: 'Stay View',
            backgroundColor: Color(0xFF1C39BB),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grade_outlined),
            label: 'Review',
            backgroundColor: Color(0xFF1C39BB),
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.white,
        onTap: onItemTapped,
      ),
    );
  }
}

class ReviewData {
  ReviewData(this.label, this.value, this.color);
  final String label;
  final int value;
  final Color color;
}
