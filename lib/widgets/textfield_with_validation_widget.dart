import 'package:flutter/material.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

import 'const_elements.dart';

Container textFieldWithValidation({
  required String labelText,
  required String hintText,
  required FormFieldValidator<String>? validatorLogic,
}) {
  return Container(
    padding: const EdgeInsets.all(10),
    decoration: boxDecoration(),
    child: textFieldWithValidationStyle(labelText, hintText, validatorLogic),
  );
}

Column textFieldWithValidationStyle(String labelText, String hintText,
    FormFieldValidator<String>? validatorLogic) {
  return Column(
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
      ksizedBoxTextFieldCol,
    ],
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
