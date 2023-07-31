import 'package:flutter/material.dart';
import 'package:roompal_ojt/pages/user_registration/chooserole_page.dart';
import 'package:roompal_ojt/pages/user_registration/login_page.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
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
                onTap: () => Navigator.pushNamed(context, ChooseRole.id),
              ),
              buildListTile(
                leadingIcon: const Icon(Icons.person),
                label: 'Log in',
                trailingIcon: const Icon(Icons.arrow_right),
                onTap: () => Navigator.pushNamed(context, LoginPage.id),
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
  ListTile buildListTile({required Icon leadingIcon, required String label, required Icon trailingIcon, required void Function()? onTap}) {
    return ListTile(
      leading: leadingIcon,
      title: Text(label),
      titleTextStyle: textStyleContent(size: 20, color: const Color(0xFF242731)),
      trailing: trailingIcon,
      onTap: onTap,
    );
  }
}
