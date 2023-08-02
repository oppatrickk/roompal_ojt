import 'package:flutter/material.dart';
import 'const_elements.dart';

//COMPONENTS

//AppBar
AppBar appBar() {
  return AppBar(
    leadingWidth: 200,
    leading: Container(
      padding: const EdgeInsets.only(left: 10),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/img/wmB.png'),
        ),
      ),
      height: 70,
      width: 200,
    ),
    automaticallyImplyLeading: false,
  );
}

//SearchBar
TextField searchBar() {
  return TextField(
    decoration: InputDecoration(
      hintText: 'Search Rooms',
      hintStyle: textStyleContent(size: 16, color: Colors.grey),
      suffixIcon: const Icon(
        Icons.search,
        color: Colors.grey,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(color: Colors.grey),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(
          color: Color(0xFF242731),
        ),
      ),
    ),
  );
}

// Filter content Show Rooms depending on its Status
Text filterRoomStatus({required String label}) {
  return Text(label,
      style: const TextStyle(
        fontSize: 16,
        fontFamily: 'ProximaNovaAltLight',
        color: Color(0xFF242731),
      )
      // textStyleContent(
      //   size: 20,
      //   color: Color(0xFF242731),
      // ),
      );
}

//Navigation pane
Expanded bookingSteps({
  required String label,
  required Color textColor,
  required Color lineColor,
  required double textSize,
  required int flex,
}) {
  return Expanded(
    flex: flex,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          label,
          style: textStyleHeader(color: textColor, size: textSize),
        ),
        Container(
          height: 3,
          color: lineColor,
        ),
      ],
    ),
  );
}

//Text Fields
Column textField({required String label}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      Text(
        label,
        style: textStyleContent(
          size: 14,
          color: const Color(0xFF242426),
        ),
      ),
      textFieldDecoration()
    ],
  );
}

//Text Fields with hintText and label
Column textFieldWithHintText({required String label, required String hint}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      Text(
        label,
        style: textStyleContent(
          size: 14,
          color: const Color(0xFF242426),
        ),
      ),
      textFieldwithHintTextDecoration(hint),
    ],
  );
}

//Text Fields with hintText and without label
Column textFieldWithHintTextButNoLabel({required String hint}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      textFieldwithHintTextDecoration(hint),
    ],
  );
}

//Field Style in Details Page
Container detailFields({required String label, required String hintText1, required String hintText2, required String labelDesc}) {
  return Container(
    padding: const EdgeInsets.all(10),
    decoration: boxDecoration(),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              label,
              style: textStyleContent(
                size: 14,
                color: const Color(0xFF575F6E),
              ),
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Flexible(
              flex: 1,
              child: textFieldWithHintTextButNoLabel(
                hint: hintText1,
              ),
            ),
            ksizedBoxTextFieldRow,
            Flexible(
              flex: 2,
              child: textFieldWithHintTextButNoLabel(
                hint: hintText2,
              ),
            ),
          ],
        ),
        ksizedBoxTextFieldCol,
        textFieldWithHintTextButNoLabel(hint: labelDesc),
        ksizedBoxTextFieldCol,
        addButton(),
      ],
    ),
  );
}

//Button for go back and go next
TextButton navigationButton({
  required void Function()? onPressed,
  required IconData icon,
  required String label,
  required bool? isGoBack,
}) {
  return TextButton(
    onPressed: onPressed,
    style: ButtonStyle(
      padding: MaterialStateProperty.all(
        const EdgeInsetsDirectional.symmetric(horizontal: 27, vertical: 15),
      ),
      side: MaterialStateProperty.all(
        const BorderSide(
          color: Color(0xFFBBBFC1),
        ),
      ),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    ),
    child: isGoBack == true
        ? Row(
            children: <Widget>[
              iconStyle(icon: icon, color: const Color(0xFF242426), size: 20),
              ksizedBoxTextFieldRow,
              Text(
                label,
                style: const TextStyle(color: Color(0xFF242426), fontSize: 14.0, fontFamily: 'ProximaNovaBold'),
              )
            ],
          )
        : Row(
            children: <Widget>[
              Text(
                label,
                style: const TextStyle(color: Color(0xFF242426), fontSize: 14.0, fontFamily: 'ProximaNovaBold'),
              ),
              ksizedBoxTextFieldRow,
              iconStyle(icon: icon, color: const Color(0xFF242426), size: 20),
            ],
          ),
  );
}

//Button for w/out icons
TextButton noButtonIcons({
  required void Function()? onPressed,
  required String label,
  required bool? isBorderRequired,
  required Color buttonColor,
  required Color textColor,
  required double horizontalPadding,
  required double verticalPadding,
}) {
  return TextButton(
    onPressed: onPressed,
    style: ButtonStyle(
      padding: MaterialStateProperty.all(
        EdgeInsetsDirectional.symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
      ),
      side: isBorderRequired == true
          ? MaterialStateProperty.all(
              const BorderSide(
                color: Color(0xFFBBBFC1),
              ),
            )
          : null,
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      backgroundColor: MaterialStatePropertyAll<Color>(buttonColor),
    ),
    child: Center(
      child: Text(
        label,
        style: TextStyle(color: textColor, fontSize: 14.0, fontFamily: 'ProximaNovaBold'),
      ),
    ),
  );
}

// Circle indicator in Property Owner Create listing page
Container circleIcon({required bool? isFillRequired, required bool? isBorderRequired}) {
  return Container(
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: isFillRequired == true ? const Color(0xFF1C39BB) : null,
      borderRadius: BorderRadius.circular(20),
      border: isBorderRequired == true
          ? Border.all(color: Colors.grey)
          : Border.all(
              color: const Color(0xFF1C39BB),
            ),
    ),
  );
}

//Line between Circle Icon
Padding lineBetweenCI({required bool? isTrue}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5.0),
    child: Container(
      padding: const EdgeInsets.all(1),
      width: 30,
      color: isTrue == true ? const Color(0xFF1C39BB) : Colors.grey,
    ),
  );
}

//Add Button
Container addButton() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      border: Border.all(color: Colors.grey),
    ),
    height: 40,
    width: 60,
    child: IconButton(
      onPressed: () {},
      icon: const Icon(Icons.add),
      hoverColor: Colors.black,
    ),
  );
}

Container branding() {
  return Container(
    padding: const EdgeInsets.only(top: 40),
    decoration: const BoxDecoration(
      color: Color(0xFF1C39BB),
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
    ),
    child: Center(
      child: Column(children: <Widget>[
        Image.asset(
          'assets/img/logo2.png',
          height: 100,
          width: 120,
        ),
        const Text(
          'roompal',
          style: TextStyle(color: Colors.white, fontFamily: 'ProximaNovaBold', fontSize: 50),
        )
      ]),
    ),
  );
}

Row displayDate() {
  return Row(
    children: <Widget>[
      Container(
        width: 130,
        height: 30,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: const Row(
          children: <Widget>[
            Expanded(
              child: Text(
                '07',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF242426),
                ),
              ),
            ),
            VerticalDivider(
              color: Colors.black,
              thickness: 1,
              width: 10,
            ),
            Expanded(
              child: Text(
                '03',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF242426),
                ),
              ),
            ),
            VerticalDivider(
              color: Colors.black,
              thickness: 1,
              width: 10,
            ),
            Expanded(
              child: Text(
                '2023',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF242426),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

//STYLING
//Content Style
TextStyle textStyleContent({required double size, required Color color}) {
  return TextStyle(
    fontSize: size,
    fontFamily: 'ProximaNovaAltLight',
    color: color,
  );
}

//Header Style
TextStyle textStyleHeader({required Color color, required double size}) {
  return TextStyle(
    fontSize: size,
    fontFamily: 'ProximaNovaAltBold',
    color: color,
  );
}

// Star Rating
Icon starRating({required Color color, required double size}) {
  return Icon(
    Icons.star_rate_rounded,
    color: color,
    size: size,
  );
}

//Button
GestureDetector buttonLP(
    {required double height,
    required Color color,
    required String label,
    required Color textColor,
    required double size,
    required void Function()? onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(color: textColor, fontSize: 14.0, fontFamily: 'ProximaNovaBold'),
        ),
      ),
    ),
  );
}

//Dot Separator
Container dotSeparator() {
  return Container(
    padding: const EdgeInsets.all(2),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: const Color(0xFF242731),
    ),
  );
}

Icon iconStyle({required IconData icon, required Color color, required double size}) => Icon(
      icon,
      color: color,
      size: size,
    );

//Box Style
BoxDecoration boxDecoration() {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(16),
    border: Border.all(
      color: const Color(0xFFBBBFC1),
    ),
  );
}

//Text Field Style
TextField textFieldDecoration() {
  return TextField(
    keyboardType: TextInputType.multiline,
    maxLines: null,
    decoration: const InputDecoration(
      border: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFFBBBFC1),
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFF242426),
        ),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 10),
    ),
    style: textStyleContent(
      size: 18,
      color: const Color(0xFF242426),
    ),
  );
}

//Text Field Style with hint text
TextField textFieldwithHintTextDecoration(String hintText) {
  return TextField(
    keyboardType: TextInputType.multiline,
    maxLines: null,
    decoration: InputDecoration(
      hintText: hintText,
      hintStyle: const TextStyle(
        color: Colors.grey,
        fontSize: 18,
        fontFamily: 'ProximaNovaRegular',
        fontWeight: FontWeight.w600,
      ),
      border: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFFBBBFC1),
        ),
      ),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFF242426),
        ),
      ),
    ),
    style: const TextStyle(
      color: Color(0xFF242426),
      fontSize: 18,
      fontFamily: 'ProximaNovaRegular',
      fontWeight: FontWeight.w600,
    ),
  );
}

// Display Details for 2 fields in single row Confirmation Page
Expanded displayDetails({
  required String label,
  required String details,
  required int flex,
}) {
  return Expanded(
    flex: flex,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: textStyleContent(
            size: 14,
            color: const Color(0xFF242426),
          ),
        ),
        confirmationDetails(details: details),
        ksizedBoxTextFieldCol,
        divider,
        ksizedBoxTextFieldCol,
      ],
    ),
  );
}

// Display Details for a field
Column displayDetails1({
  required String label,
  required String details,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: textStyleContent(
          size: 14,
          color: const Color(0xFF242426),
        ),
      ),
      ksizedBoxTextFieldCol,
      confirmationDetails(details: details),
      ksizedBoxTextFieldCol,
      divider,
      ksizedBoxTextFieldCol,
    ],
  );
}

//Style for displaying details
Container confirmationDetails({required String details}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Text(
      details,
      style: const TextStyle(
        color: Color(0xFF242426),
        fontSize: 18,
        fontFamily: 'ProximaNovaRegular',
        fontWeight: FontWeight.w600,
      ),
      textAlign: TextAlign.justify,
    ),
  );
}
