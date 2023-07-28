import 'package:flutter/material.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';
import 'const_elements.dart';

// Form for Overview Page
class OverviewForm extends StatefulWidget {
  const OverviewForm({Key? key, required this.formKey}) : super(key: key);
  final GlobalKey<FormState> formKey;

  @override
  State<OverviewForm> createState() => _OverviewFormState();
}

class _OverviewFormState extends State<OverviewForm> {
  // A global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _overviewFormKey = GlobalKey<FormState>();

  String? requiredValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required.';
    }
    return null;
  }

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
            // (value) {
            //   if (value == null || value.isEmpty) {
            //     return 'This field is required.';
            //   }
            //   return null;
            // },
          ),
          kSizedBox,
          textFieldWithValidation(
            labelText: 'Room Description',
            hintText: 'Enter Room Description',
            validatorLogic: requiredValidator,
            // (value) {
            //   if (value == null || value.isEmpty) {
            //     return 'This field is required.';
            //   }
            //   return null;
            // },
          ),
          kSizedBox,
        ],
      ),
    );
  }
}

// Styling
Container textFieldWithValidation({
  required String labelText,
  required String hintText,
  required FormFieldValidator<String>? validatorLogic,
}) {
  return Container(
    padding: const EdgeInsets.all(10),
    decoration: boxDecoration(),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: textStyleContent(
            size: 14,
            color: const Color(0xFF242426),
          ),
        ),
        TextFormField(
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: inputStyle(textColor: Colors.grey),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFF242426),
                ),
              ),
            ),
            style: inputStyle(
              textColor: Color(0xFF242426),
            ),
            validator: validatorLogic),
      ],
    ),
  );
}

TextStyle inputStyle({required Color textColor}) {
  return TextStyle(
    color: textColor,
    fontSize: 18,
    fontFamily: 'ProximaNovaRegular',
    fontWeight: FontWeight.w600,
  );
}
