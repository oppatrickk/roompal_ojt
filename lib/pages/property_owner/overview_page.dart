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
  final List<String> roomCat = ['RoomCat1', 'RoomCat2', 'RoomCat3', 'RoomCat4', 'RoomCat5'];
  String? selectedVal = "";

  MyFormState() {
    selectedVal = roomCat[0];
  }

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
          child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
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
            Text(
              'Overview',
              style: textStyleHeader(color: Color(0xFF242731), size: 32),
              textAlign: TextAlign.center,
            ),
            kSizedBox,
            Text(
              'Fill in the property overview data. It will take a couple of minutes. ',
              style: textStyleContent(
                size: 16,
                color: Color(0xFF575F6E),
              ),
              textAlign: TextAlign.center,
            ),
            kSizedBox,
            Container(
              padding: const EdgeInsets.all(10),
              decoration: boxDecoration(),
              child: Column(
                children: <Widget>[
                  textField(label: 'Enter Room Title'),
                  ksizedBoxTextFieldCol,
                ],
              ),
            ),
            kSizedBox,
            Container(
              padding: const EdgeInsets.all(10),
              decoration: boxDecoration(),
              child: Column(
                children: <Widget>[
                  textField(label: 'Enter Room Description'),
                  ksizedBoxTextFieldCol,
                ],
              ),
            ),
            kSizedBox,
            Container(
              padding: const EdgeInsets.all(10),
              decoration: boxDecoration(),
              child: Column(
                children: <Widget>[
                  DropdownButton(
                    value: selectedVal,
                    items: roomCat
                        .map(
                          (e) => DropdownMenuItem(
                            child: Text(e),
                            value: e,
                          ),
                        )
                        .toList(),
                    onChanged: (val) {
                      setState(() {
                        selectedVal = val as String;
                      });
                    },
                  ),
                  ksizedBoxTextFieldCol,
                ],
              ),
            ),
            ksizedBoxTFB,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                navigationButton(onPressed: null, icon: Icons.arrow_back, label: 'Go back', isGoBack: true),
                navigationButton(onPressed: null, label: 'Go next', icon: Icons.arrow_forward, isGoBack: false)
              ],
            ),
            ksizedBoxTextFieldCol,
            noButtonIcons(
              onPressed: () => Navigator.pushNamed(context, RoomDetails.id),
              label: 'Cancel',
              isBorderRequired: true,
              buttonColor: Colors.white,
              textColor: const Color(0xFF242426),
            ),
          ]),
        ),
      ),
    );
  }
}
