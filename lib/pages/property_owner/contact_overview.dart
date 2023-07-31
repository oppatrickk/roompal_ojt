import 'package:flutter/material.dart';
import 'package:roompal_ojt/formvalidation/auth.dart';
import 'package:roompal_ojt/pages/property_owner/location_page.dart';
import 'package:roompal_ojt/pages/property_owner/overview_page.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/textfield_with_validation_widget.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';
import 'package:roompal_ojt/widgets/textfield_widget.dart';

class ContactOverview extends StatefulWidget {
  const ContactOverview({Key? key}) : super(key: key);
  static const String id = 'ContactOverview';

  @override
  State<ContactOverview> createState() => _ContactOverviewState();
}

class _ContactOverviewState extends State<ContactOverview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      endDrawer: buildSideBar(context),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                child: Image.asset('assets/img/cl2.png'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  circleIcon(isFillRequired: true, isBorderRequired: false),
                  lineBetweenCI(isTrue: true),
                  circleIcon(isFillRequired: true, isBorderRequired: false),
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
              headerSub(pageTitle: 'Contact', subContent: 'Fill in your contact data. It will take a couple of minutes.'),
              kSizedBox,
              ContactForm(),
              ksizedBoxTFB,
            ],
          ),
        ),
      ),
    );
  }
}

// Form for Contact Page
class ContactForm extends StatefulWidget {
  const ContactForm({Key? key}) : super(key: key);

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  // A global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _contactFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _contactFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: boxDecoration(),
            child: Column(
              children: [
                textFieldWithValidationStyle('Last Name', 'Enter Last Name', requiredValidator),
                ksizedBoxTextFieldCol,
                textFieldWithValidationStyle('First Name', 'Enter First Name', requiredValidator),
                ksizedBoxTextFieldCol,
                textFieldWithValidationStyle('Middle Name', 'Enter Middle Name', requiredValidator),
              ],
            ),
          ),
          kSizedBox,
          textFieldWithValidation(
            labelText: 'Phone Number',
            hintText: 'Enter Phone Number',
            validatorLogic: validateMobile,
          ),
          kSizedBox,
          textFieldWithValidation(
            labelText: 'Email',
            hintText: 'Enter Email',
            validatorLogic: validateEmail,
          ),
          kSizedBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              navigationButton(
                  onPressed: () {
                    Navigator.pushNamed(context, OverviewPage.id);
                    // Validate returns true if the form is valid, or false otherwise.
                    // if (_contactFormKey.currentState!.validate()) {
                    //   Navigator.pushNamed(context, OverviewPage.id);
                    // }
                  },
                  icon: Icons.arrow_back,
                  label: 'Go back',
                  isGoBack: true),
              navigationButton(
                  onPressed: () {
                    Navigator.pushNamed(context, LocationPage.id);
                    // Validate returns true if the form is valid, or false otherwise.
                    // if (_contactFormKey.currentState!.validate()) {
                    //   Navigator.pushNamed(context, LocationPage.id);
                    // }
                  },
                  label: 'Go next',
                  icon: Icons.arrow_forward,
                  isGoBack: false)
            ],
          ),
          ksizedBoxTFB,
        ],
      ),
    );
  }
}
