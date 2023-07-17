import 'package:flutter/material.dart';

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
              titleTextStyle: textStyleHeader(color: Color(0xFF1C39BB)),
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
    titleTextStyle: textStyleContent(),
    trailing: trailingIcon,
    onTap: () => onTap,
  );
}

//Content Style
TextStyle textStyleContent() {
  return TextStyle(
    fontSize: 20,
    fontFamily: 'ProximaNovaRegular',
    color: Color(0xFF242731),
  );
}

//Header Style
TextStyle textStyleHeader({required Color color}) {
  return TextStyle(
    fontSize: 30,
    fontFamily: 'ProximaNovaBold',
    color: color,
  );
}