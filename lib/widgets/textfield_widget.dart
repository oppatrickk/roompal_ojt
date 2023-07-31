import 'package:flutter/material.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';
import 'const_elements.dart';

// Page title and its sub-content
Column headerSub({required String pageTitle, required String subContent}) {
  return Column(
    children: [
      Text(
        pageTitle,
        style: textStyleHeader(color: Color(0xFF242731), size: 32),
        textAlign: TextAlign.center,
      ),
      ksizedBoxTextFieldCol,
      Text(
        subContent,
        style: textStyleContent(
          size: 16,
          color: Color(0xFF575F6E),
        ),
        textAlign: TextAlign.center,
      ),
    ],
  );
}

//With label and an input field
Container textField1({required String label, required String hint}) {
  return Container(
    padding: const EdgeInsets.all(10),
    decoration: boxDecoration(),
    child: Column(
      children: <Widget>[
        textFieldWithHintText(label: label, hint: hint),
        ksizedBoxTextFieldCol,
      ],
    ),
  );
}

Container userName() {
  return Container(
    padding: const EdgeInsets.all(10),
    decoration: boxDecoration(),
    child: Column(
      children: [
        textFieldWithHintText(label: 'Last Name', hint: 'Enter Last Name'),
        ksizedBoxTextFieldCol,
        textFieldWithHintText(label: 'First Name', hint: 'Enter First Name'),
        ksizedBoxTextFieldCol,
        textFieldWithHintText(label: 'Middle Name', hint: 'Enter Middle Name'),
        ksizedBoxTextFieldCol,
      ],
    ),
  );
}

//Price and transaction fee
Expanded priceField({
  required String label,
  required bool isTFee,
}) {
  return Expanded(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: textStyleContent(
            size: 14,
            color: isTFee == true ? Color(0xFF1C39BB) : Color(0xFF242426),
          ),
        ),
        TextField(
          decoration: InputDecoration(
            border: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFBBBFC1),
              ),
            ),
            prefixText: '₱ ',
            prefixStyle: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: isTFee == true ? Color(0xFF1C39BB) : Color(0xFF242426),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: isTFee == true ? Color(0xFF1C39BB) : Color(0xFF242426),
              ),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
          ),
          style: TextStyle(
            fontSize: 18,
            color: isTFee == true ? Color(0xFF1C39BB) : Color(0xFF242426),
          ),
        ),
      ],
    ),
  );
}

//Display User Data
Container displayUserNameData() {
  return Container(
    padding: const EdgeInsets.all(10),
    decoration: boxDecoration(),
    child: Column(
      children: <Widget>[
        displayDetails1(label: 'Last Name', details: 'Cena Una'),
        ksizedBoxTextFieldCol,
        displayDetails1(label: 'First Name', details: 'Coratson'),
        ksizedBoxTextFieldCol,
        displayDetails1(label: 'Middle Name', details: 'Bueno'),
        ksizedBoxTextFieldCol,
      ],
    ),
  );
}

//Display Content
Container displayContent({required String label, required String details}) {
  return Container(
    padding: const EdgeInsets.all(10),
    decoration: boxDecoration(),
    child: displayDetails1(label: label, details: details),
  );
}

// Display User's Phone Number
Container displayPhoneNumber() {
  return Container(
    padding: const EdgeInsets.all(10),
    decoration: boxDecoration(),
    child: Column(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Phone Number',
              style: textStyleContent(
                size: 14,
                color: const Color(0xFF242426),
              ),
            ),
            ksizedBoxTextFieldCol,
            Row(
              children: [
                Expanded(flex: 1, child: dNumberPrefix(label: '+63')),
                ksizedBoxTextFieldRow,
                Expanded(flex: 2, child: dNumberPrefix(label: '912 7689 991')),
              ],
            ),
            ksizedBoxTextFieldCol,
          ],
        ),
      ],
    ),
  );
}

Column dNumberPrefix({required String label}) {
  return Column(
    children: [
      Text(
        label,
        style: TextStyle(
          color: Color(0xFF242426),
          fontSize: 18,
          fontFamily: 'ProximaNovaRegular',
          fontWeight: FontWeight.w600,
        ),
        textAlign: TextAlign.center,
      ),
      Padding(
        padding: const EdgeInsets.only(top: 3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 1,
              color: Color(0xFF646060),
            ),
          ],
        ),
      ),
    ],
  );
}
