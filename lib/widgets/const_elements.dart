import 'package:flutter/material.dart';

//padding for new page
const EdgeInsets kPagePadding = EdgeInsets.all(20.0);

// Spacing for Column
const SizedBox ksizedBoxTextFieldCol = SizedBox(
  height: 10,
);

//Spacing for Rows
const SizedBox ksizedBoxTextFieldRow = SizedBox(
  width: 10,
);

//Spacing b/w field and buttons
const SizedBox ksizedBoxTFB = SizedBox(
  height: 30,
);

//Spacing b/w contents and divider
const SizedBox kSizedBox = SizedBox(
  height: 15.0,
);

//used in adding border for the cards
RoundedRectangleBorder border = RoundedRectangleBorder(
  side: const BorderSide(
    color: Color(0xFF808080),
  ),
  borderRadius: BorderRadius.circular(10.0),
);

//line divider
const Divider divider = Divider(
  height: 1.0,
  color: Colors.grey,
  thickness: 1.0,
);

//font style for Header text inside the card
const TextStyle kCardHeaderStyle = TextStyle(
  fontFamily: 'ProximaNovaBold',
  fontSize: 16.0,
);

//font style for subtitle in list tile
const TextStyle kCardSubtitleStyle = TextStyle(
  fontSize: 14.0,
  fontFamily: 'ProximaNovaBlack',
);

//font style for title in list tile
const TextStyle kCardTitleStyle = TextStyle(
  fontSize: 14.0,
  fontFamily: 'ProximaNovaRegular',
);

//font style for amount text in list tile
const TextStyle kCardAmountStyle = TextStyle(
  fontSize: 14.0,
);

//font style for reviews subtitle (date and time)
const TextStyle kReviewSmallSubtitle = TextStyle(
  fontSize: 8.0,
  color: Colors.grey,
);

//font style for reviews subtitle (date and time)
const TextStyle kReviewText = TextStyle(
  fontSize: 11.0,
  color: Colors.black,
);

//fonr style for reviews header(names)
const TextStyle kReviewTitle = TextStyle(
  fontSize: 12.0,
  color: Colors.blue,
);

//font style used in room details subject header
const TextStyle kHeaderTextStyle = TextStyle(
  fontSize: 20.0,
  fontFamily: 'ProximaNovaAltBold',
);

//font style used in room details Room Name
const TextStyle kRoomName = TextStyle(
  fontSize: 32.0,
  fontFamily: 'ProximaNovaAltBold',
);

//font style used in room details Room Number
const TextStyle kRoomNumber = TextStyle(
  fontSize: 16.0,
  fontFamily: 'ProximaNovaRegular',
);
