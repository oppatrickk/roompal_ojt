import 'package:flutter/material.dart';

//COMPONENTS
// SideBar
NavigationDrawer buildSideBar(BuildContext context) {
  return NavigationDrawer(
    children: [
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            ListTile(
              title: Text('Welcome User!'),
              titleTextStyle:
                  textStyleHeader(color: Color(0xFF1C39BB), size: 28),
              trailing: Icon(Icons.close),
              onTap: () => Navigator.pop(context),
            ),
            const Divider(
              color: Color(0xFFB9B9C3),
            ),
            buildListTile(
              leadingIcon: Icon(Icons.person),
              label: 'Sign up',
              trailingIcon: Icon(Icons.arrow_right),
              onTap: null,
            ),
            buildListTile(
              leadingIcon: Icon(Icons.person),
              label: 'Log in',
              trailingIcon: Icon(Icons.arrow_right),
              onTap: null,
            ),
            const Divider(
              color: Color(0xFFB9B9C3),
            ),
            buildListTile(
              leadingIcon: Icon(Icons.info),
              label: 'About Us',
              trailingIcon: Icon(Icons.arrow_right),
              onTap: null,
            ),
            buildListTile(
              leadingIcon: Icon(Icons.policy),
              label: 'Privacy Policy',
              trailingIcon: Icon(Icons.arrow_right),
              onTap: null,
            ),
            buildListTile(
              leadingIcon: Icon(Icons.phone),
              label: 'Contact Us',
              trailingIcon: Icon(Icons.arrow_right),
              onTap: null,
            ),
            buildListTile(
              leadingIcon: Icon(Icons.info),
              label: 'Social Media',
              trailingIcon: Icon(Icons.arrow_right),
              onTap: null,
            ),
            buildListTile(
              leadingIcon: Icon(Icons.info),
              label: 'Terms and Condition',
              trailingIcon: Icon(Icons.arrow_right),
              onTap: null,
            ),
            buildListTile(
              leadingIcon: Icon(Icons.info),
              label: 'FAQs',
              trailingIcon: Icon(Icons.arrow_right),
              onTap: null,
            ),
          ],
        ),
      ),
    ],
  );
}

// Content in SideBar
ListTile buildListTile(
    {required Icon leadingIcon,
    required String label,
    required Icon trailingIcon,
    required Function? onTap}) {
  return ListTile(
    leading: leadingIcon,
    title: Text(label),
    titleTextStyle: textStyleContent(size: 20, color: Color(0xFF242731)),
    trailing: trailingIcon,
    onTap: () => onTap,
  );
}

//Filter
Container buildFilter() {
  return Container(
    padding: EdgeInsets.all(7),
    decoration: BoxDecoration(
      border: Border.all(
        color: Color(0xFF242731),
      ),
      borderRadius: BorderRadius.circular(5),
    ),
    child: Icon(
      Icons.filter_list_rounded,
      size: 30,
      color: Color(0xFF242731),
    ),
  );
}

//SearchBar
TextField searchBar() {
  return TextField(
    decoration: InputDecoration(
      hintText: 'Search Rooms',
      hintStyle: textStyleContent(size: 16, color: Colors.grey),
      suffixIcon: Icon(
        Icons.search,
        color: Colors.grey,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: Colors.grey),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(
          color: Color(0xFF242731),
        ),
      ),
    ),
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
        color: Color(0xFFBBBFC1),
      ),
    ),
    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
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
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: propertyStatusColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    propertyStatus,
                    style:
                        textStyleHeader(color: propertyStatusColor, size: 12),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    propertyName,
                    style: textStyleHeader(color: Color(0xFF242731), size: 20),
                  ),
                  Text(
                    'Starting at',
                    style: textStyleContent(color: Color(0xFF242731), size: 14),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Room #00$propertyNumber',
                    style: textStyleContent(color: Color(0xFF242731), size: 20),
                  ),
                  Row(
                    children: [
                      Text(
                        '\$ ',
                        style:
                            textStyleHeader(color: Color(0xFF1C39BB), size: 20),
                      ),
                      Text(
                        '$propertyPrice',
                        style:
                            textStyleHeader(color: Color(0xFF242731), size: 20),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '$propertyCity, $propertyProvince',
                    style: textStyleHeader(color: Color(0xFF242731), size: 12),
                  ),
                  Row(
                    children: [
                      Icon(
                        propertyIcon,
                        color: Color(0xFF1C39BB),
                      ),
                      Text(
                        ' $propertyType',
                        style:
                            textStyleHeader(color: Color(0xFF242731), size: 12),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      starRating(color: Color(0xFFFEB618), size: 25),
                      starRating(color: Color(0xFFFEB618), size: 25),
                      starRating(color: Color(0xFFFEB618), size: 25),
                      starRating(color: Color(0xFFFEB618), size: 25),
                      starRating(color: Color(0xFFDEDEDE), size: 25),
                    ],
                  ),
                  Text(
                    propertyAccommodation,
                    style: textStyleContent(color: Color(0xFF242731), size: 12),
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
