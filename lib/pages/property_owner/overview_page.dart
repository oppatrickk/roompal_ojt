import 'package:flutter/material.dart';
import '../../widgets/const_elements.dart';
import '../../widgets/widget_elements.dart';
import '../room_details.dart';

class OverviewPage extends StatefulWidget {
  const OverviewPage({Key? key}) : super(key: key);
  static const String id = "OverviewPage";

  @override
  State<OverviewPage> createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/img/wmB.png"),
      ),
      endDrawer: buildSideBar(context),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Container(
              child: Center(
                child: Image.asset('assets/img/cl1.png'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                circleIcon(isFillRequired: true, isBorderRequired: false),
                lineBetweenCI(isTrue: false),
                circleIcon(isFillRequired: false, isBorderRequired: true),
                lineBetweenCI(isTrue: false),
                circleIcon(isFillRequired: false, isBorderRequired: true),
                lineBetweenCI(isTrue: false),
                circleIcon(isFillRequired: false, isBorderRequired: true),
                lineBetweenCI(isTrue: false),
                circleIcon(isFillRequired: false, isBorderRequired: true),
                lineBetweenCI(isTrue: false),
                circleIcon(isFillRequired: false, isBorderRequired: true),
              ],
            ),
            kSizedBox,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
              ],
            ),
            kSizedBox,
            Text(
              'Transaction Details',
              style: textStyleContent(
                size: 16,
                color: Color(0xFF575F6E),
              ),
            ),
            ksizedBoxTextFieldCol,
            Container(
              padding: EdgeInsets.all(10),
              decoration: boxDecoration(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name',
                    style: textStyleContent(
                      size: 14,
                      color: Color(0xFF242426),
                    ),
                  ),
                  ksizedBoxTextFieldCol,
                  confirmationDetails(details: 'Cena Una Cortson Bueno'),
                  ksizedBoxTextFieldCol,
                  divider,
                  ksizedBoxTextFieldCol,
                  Row(
                    children: [
                      displayDetails(
                        label: 'Guest',
                        details: '1',
                        flex: 1,
                      ),
                      ksizedBoxTextFieldRow,
                      displayDetails(
                        label: 'Payment Method',
                        details: 'Credit Card',
                        flex: 3,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            kSizedBox,
            Container(
              padding: EdgeInsets.all(10),
              decoration: boxDecoration(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Phone Number',
                    style: textStyleContent(
                      size: 14,
                      color: Color(0xFF242426),
                    ),
                  ),
                  Row(
                    children: [
                      displayDetails(
                        label: '',
                        details: '+63',
                        flex: 1,
                      ),
                      ksizedBoxTextFieldRow,
                      displayDetails(
                        label: '',
                        details: '912 7689 991',
                        flex: 3,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            kSizedBox,
            Container(
              padding: EdgeInsets.all(10),
              decoration: boxDecoration(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Check in & Check out Date',
                    style: textStyleContent(
                      size: 14,
                      color: Color(0xFF242426),
                    ),
                  ),
                  ksizedBoxTextFieldCol,
                  confirmationDetails(details: 'July 03-17 (14 days)'),
                  ksizedBoxTextFieldCol,
                  divider,
                  ksizedBoxTextFieldCol,
                ],
              ),
            ),
            kSizedBox,
            Container(
              padding: EdgeInsets.all(10),
              decoration: boxDecoration(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Email',
                    style: textStyleContent(
                      size: 14,
                      color: Color(0xFF242426),
                    ),
                  ),
                  ksizedBoxTextFieldCol,
                  confirmationDetails(details: 'coratsoncu@gmail.com'),
                  ksizedBoxTextFieldCol,
                  divider,
                  ksizedBoxTextFieldCol,
                ],
              ),
            ),
            ksizedBoxTFB,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                navigationButton(
                    onPressed: null,
                    icon: Icons.arrow_back,
                    label: 'Go back',
                    isGoBack: true),
                navigationButton(
                    onPressed: null,
                    label: 'Go next',
                    icon: Icons.arrow_forward,
                    isGoBack: false)
              ],
            ),
            ksizedBoxTextFieldCol,
            noButtonIcons(
              onPressed: null,
              label: 'Cancel',
              isBorderRequired: true,
              buttonColor: Colors.white,
              textColor: Color(0xFF242426),
            ),
          ]),
        ),
      ),
    );
  }
}
