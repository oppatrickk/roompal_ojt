import 'package:flutter/material.dart';
import 'const_elements.dart';

//COMPONENTS
// SideBar
NavigationDrawer buildSideBar(BuildContext context) {
  return NavigationDrawer(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            ListTile(
              title: const Text('Welcome User!'),
              titleTextStyle: textStyleHeader(color: const Color(0xFF1C39BB), size: 28),
              trailing: const Icon(Icons.close),
              onTap: () => Navigator.pop(context),
            ),
            const Divider(
              color: Color(0xFFB9B9C3),
            ),
            buildListTile(
              leadingIcon: const Icon(Icons.person),
              label: 'Sign up',
              trailingIcon: const Icon(Icons.arrow_right),
              onTap: null,
            ),
            buildListTile(
              leadingIcon: const Icon(Icons.person),
              label: 'Log in',
              trailingIcon: const Icon(Icons.arrow_right),
              onTap: null,
            ),
            const Divider(
              color: Color(0xFFB9B9C3),
            ),
            buildListTile(
              leadingIcon: const Icon(Icons.info),
              label: 'About Us',
              trailingIcon: const Icon(Icons.arrow_right),
              onTap: null,
            ),
            buildListTile(
              leadingIcon: const Icon(Icons.policy),
              label: 'Privacy Policy',
              trailingIcon: const Icon(Icons.arrow_right),
              onTap: null,
            ),
            buildListTile(
              leadingIcon: const Icon(Icons.phone),
              label: 'Contact Us',
              trailingIcon: const Icon(Icons.arrow_right),
              onTap: null,
            ),
            buildListTile(
              leadingIcon: const Icon(Icons.info),
              label: 'Social Media',
              trailingIcon: const Icon(Icons.arrow_right),
              onTap: null,
            ),
            buildListTile(
              leadingIcon: const Icon(Icons.info),
              label: 'Terms and Condition',
              trailingIcon: const Icon(Icons.arrow_right),
              onTap: null,
            ),
            buildListTile(
              leadingIcon: const Icon(Icons.info),
              label: 'FAQs',
              trailingIcon: const Icon(Icons.arrow_right),
              onTap: null,
            ),
          ],
        ),
      ),
    ],
  );
}

// Content in SideBar
ListTile buildListTile({required Icon leadingIcon, required String label, required Icon trailingIcon, required Function? onTap}) {
  return ListTile(
    leading: leadingIcon,
    title: Text(label),
    titleTextStyle: textStyleContent(size: 20, color: const Color(0xFF242731)),
    trailing: trailingIcon,
    onTap: () => onTap,
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

//Card View of Listing
Container propertyCardView({
  required String propertyImage,
  required String propertyStatus,
  required String propertyName,
  required int propertyNumber,
  required double propertyPrice,
  required String propertyCity,
  required String propertyProvince,
  required IconData propertyIcon,
  required String propertyType,
  required String propertyAccommodation,
  required Color propertyStatusColor,
}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      border: Border.all(
        color: const Color(0xFFBBBFC1),
      ),
    ),
    child: Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16),
              topLeft: Radius.circular(16),
            ),
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: AssetImage('assets/img/$propertyImage'),
            ),
          ),
          height: 160,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: propertyStatusColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    propertyStatus,
                    style: textStyleHeader(color: propertyStatusColor, size: 12),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    propertyName,
                    style: textStyleHeader(color: const Color(0xFF242731), size: 20),
                  ),
                  Text(
                    'Starting at',
                    style: textStyleContent(color: const Color(0xFF242731), size: 14),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Room #00$propertyNumber',
                    style: textStyleContent(color: const Color(0xFF242731), size: 20),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        '\$ ',
                        style: textStyleHeader(color: const Color(0xFF1C39BB), size: 20),
                      ),
                      Text(
                        '$propertyPrice',
                        style: textStyleHeader(color: const Color(0xFF242731), size: 20),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '$propertyCity, $propertyProvince',
                    style: textStyleHeader(color: const Color(0xFF242731), size: 12),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        propertyIcon,
                        color: const Color(0xFF1C39BB),
                      ),
                      Text(
                        ' $propertyType',
                        style: textStyleHeader(color: const Color(0xFF242731), size: 12),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      starRating(color: const Color(0xFFFEB618), size: 25),
                      starRating(color: const Color(0xFFFEB618), size: 25),
                      starRating(color: const Color(0xFFFEB618), size: 25),
                      starRating(color: const Color(0xFFFEB618), size: 25),
                      starRating(color: const Color(0xFFDEDEDE), size: 25),
                    ],
                  ),
                  Text(
                    propertyAccommodation,
                    style: textStyleContent(color: const Color(0xFF242731), size: 12),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    ),
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

//Text Fields with hintText
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
            children: [
              iconStyle(icon: icon, color: Color(0xFF242426), size: 20),
              ksizedBoxTextFieldRow,
              Text(
                label,
                style: TextStyle(color: Color(0xFF242426), fontSize: 14.0),
              )
            ],
          )
        : Row(
            children: <Widget>[
              Text(
                label,
                style: TextStyle(color: Color(0xFF242426), fontSize: 14.0),
              ),
              ksizedBoxTextFieldRow,
              iconStyle(icon: icon, color: Color(0xFF242426), size: 20),
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
}) {
  return TextButton(
    onPressed: onPressed,
    style: ButtonStyle(
      padding: MaterialStateProperty.all(
        const EdgeInsetsDirectional.symmetric(horizontal: 27, vertical: 15),
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
      backgroundColor: MaterialStatePropertyAll(buttonColor),
    ),
    child: Center(
      child: Text(
        label,
        style: const TextStyle(color: Color(0xFF242426), fontSize: 14.0),
      ),
    ),
  );
}

// Circle indicator in Property Owner Create listing page
Container circleIcon({required bool? isFillRequired, required bool? isBorderRequired}) {
  return Container(
    padding: EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: isFillRequired == true ? Color(0xFF1C39BB) : null,
      borderRadius: BorderRadius.circular(20),
      border: isBorderRequired == true
          ? Border.all(color: Colors.grey)
          : Border.all(
              color: Color(0xFF1C39BB),
            ),
    ),
  );
}

//Line between Circle Icon
Padding lineBetweenCI({required bool? isTrue}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5.0),
    child: Container(
      padding: EdgeInsets.all(1),
      width: 30,
      color: isTrue == true ? Color(0xFF1C39BB) : Colors.grey,
    ),
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
GestureDetector buttonLP({required double height, required Color color, required String label, required Color textColor, required double size}) {
  return GestureDetector(
    onTap: null,
    child: Container(
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          label,
          style: textStyleHeader(color: textColor, size: size),
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
    style: textStyleHeader(
      size: 18,
      color: const Color(0xFF242426),
    ),
  );
}

//Text Field Style with hint text
TextField textFieldwithHintTextDecoration(String hintText) {
  return TextField(
    decoration: InputDecoration(
      hintText: hintText,
      hintStyle: const TextStyle(
        color: Colors.grey,
        fontSize: 15,
        fontFamily: 'ProximaNovaRegular',
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
      contentPadding: const EdgeInsets.symmetric(horizontal: 10),
    ),
    style: textStyleHeader(
      size: 18,
      color: const Color(0xFF242426),
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

//Style for displaying details
Container confirmationDetails({required String details}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Text(
      details,
      style: textStyleHeader(color: const Color(0xFF242426), size: 18),
    ),
  );
}
