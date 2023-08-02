import 'package:flutter/material.dart';
import 'package:roompal_ojt/formvalidation/auth.dart';
import 'package:roompal_ojt/pages/property_owner/contact_overview.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/sidebar.dart';
import 'package:roompal_ojt/widgets/textfield_widget.dart';
import 'package:roompal_ojt/widgets/textfield_with_validation_widget.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

class OverviewPage extends StatefulWidget {
  const OverviewPage({Key? key}) : super(key: key);
  static const String id = 'OverviewPage';

  @override
  State<OverviewPage> createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      endDrawer: SideBar(
        isRenter: false,
      ),
      body: SingleChildScrollView(
        child: OverviewSection(),
      ),
    );
  }
}

class OverviewSection extends StatelessWidget {
  const OverviewSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
        headerSub(pageTitle: 'Overview', subContent: 'Fill in the property overview data. It will take a couple of minutes.'),
        kSizedBox,
        OverviewForm(),
        ksizedBoxTFB,
      ]),
    );
  }
}

// Form for Overview Page
class OverviewForm extends StatefulWidget {
  const OverviewForm({Key? key}) : super(key: key);

  @override
  State<OverviewForm> createState() => _OverviewFormState();
}

class _OverviewFormState extends State<OverviewForm> {
  // A global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _overviewFormKey = GlobalKey<FormState>();

  //DropDown
  static const List<String> list = <String>['Apartment', 'Studio', 'Bedspace'];

  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _overviewFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          textFieldWithValidation(
            labelText: 'Room Title',
            hintText: 'Enter Room Title',
            validatorLogic: requiredValidator,
          ),
          kSizedBox,
          textFieldWithValidation(
            labelText: 'Room Description',
            hintText: 'Enter Room Description',
            validatorLogic: requiredValidator,
          ),
          kSizedBox,
          Container(
            padding: const EdgeInsets.all(10),
            decoration: boxDecoration(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Select Category',
                  style: textStyleContent(
                    size: 14,
                    color: Color(0xFF575F6E),
                  ),
                ),
                DropdownButton<String>(
                  isExpanded: true,
                  value: dropdownValue,
                  icon: const Icon(Icons.arrow_drop_down),
                  style: inputStyle(textColor: Color(0xFF242426)),
                  underline: Container(
                    height: 1,
                    color: Color(0xFF575F6E),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                  items: list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          ksizedBoxTFB,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              navigationButton(
                onPressed: () {
                  Navigator.pushNamed(context, ContactOverview.id);
                  // Validate returns true if the form is valid, or false otherwise.
                  // if (_overviewFormKey.currentState!.validate()) {
                  //   Navigator.pushNamed(context, ContactOverview.id);
                  // }
                },
                label: 'Go next',
                icon: Icons.arrow_forward,
                isGoBack: false,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
