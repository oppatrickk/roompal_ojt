import 'package:flutter/material.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 140,
                      child: Image.asset('assets/img/r.png'),
                    ),
                    const Column(
                      children: [
                        Text(
                          'Total Reviews',
                          style: kCardHeaderStyle,
                        ),
                        Text(
                          '1.2k',
                          style: TextStyle(
                            fontSize: 40,
                            color: Color(0xFF1C39BB),
                            fontFamily: 'ProximaNovaAltBold',
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Growth in reviews on this year',
                          style: kReviewSmallSubtitle,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
