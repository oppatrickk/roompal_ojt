import 'package:flutter/material.dart';
import 'package:roompal_ojt/pages/property_owner/price_page.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/sidebar.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';
import 'package:roompal_ojt/widgets/textfield_widget.dart';
import 'detail_page.dart';

class PhotoPage extends StatefulWidget {
  const PhotoPage({Key? key}) : super(key: key);
  static const String id = 'PhotoPage';

  @override
  State<PhotoPage> createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      endDrawer: const SideBar(
        isLoggedIn: true,
        isRenter: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                child: Image.asset('assets/img/cl5.png'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  circleIcon(isFillRequired: true, isBorderRequired: false),
                  lineBetweenCI(isTrue: true),
                  circleIcon(isFillRequired: true, isBorderRequired: false),
                  lineBetweenCI(isTrue: true),
                  circleIcon(isFillRequired: true, isBorderRequired: false),
                  lineBetweenCI(isTrue: true),
                  circleIcon(isFillRequired: true, isBorderRequired: false),
                  lineBetweenCI(isTrue: true),
                  circleIcon(isFillRequired: true, isBorderRequired: false),
                  lineBetweenCI(isTrue: false),
                  circleIcon(isFillRequired: false, isBorderRequired: true),
                ],
              ),
              kSizedBox,
              headerSub(pageTitle: 'Photos', subContent: 'Upload property photos. It will take a couple of minutes.'),
              kSizedBox,
              Container(
                padding: const EdgeInsets.all(10),
                decoration: boxDecoration(),
                child: Column(
                  children: <Widget>[
                    ksizedBoxTFB,
                    Icon(
                      Icons.add_photo_alternate_outlined,
                      color: Color(0xFFBBBFC1),
                      size: 70,
                    ),
                    ksizedBoxTextFieldCol,
                    Text(
                      'Click to upload images',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'ProximaNovaRegular',
                        color: Color(0xFFBBBFC1),
                      ),
                    ),
                    ksizedBoxTFB,
                  ],
                ),
              ),
              ksizedBoxTFB,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  navigationButton(
                      onPressed: () => Navigator.pushNamed(context, DetailPage.id), icon: Icons.arrow_back, label: 'Go back', isGoBack: true),
                  navigationButton(
                      onPressed: () => Navigator.pushNamed(context, PricePage.id), label: 'Go next', icon: Icons.arrow_forward, isGoBack: false)
                ],
              ),
              ksizedBoxTFB,
            ],
          ),
        ),
      ),
    );
  }
}
