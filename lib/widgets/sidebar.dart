import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roompal_ojt/Log_In_State.dart';
import 'package:roompal_ojt/pages/landing_page.dart';
import 'package:roompal_ojt/pages/property_owner/bottom_navigation.dart';
import 'package:roompal_ojt/pages/property_owner/personal_details_verified.dart';
import 'package:roompal_ojt/pages/renter/main_renter_page.dart';
import 'package:roompal_ojt/pages/user_registration/chooserole_page.dart';
import 'package:roompal_ojt/pages/user_registration/login_page.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

class SideBar extends StatefulWidget {
  SideBar({super.key, required this.isRenter});
  bool? isRenter;

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  bool isVisible = true;
  bool isLogoutVisible = true;
  @override
  Widget build(BuildContext context) {
    LogInState logInState = Provider.of<LogInState>(context);
    bool isLoggedIn = logInState.isLoggedIn;
    // double screenHeight = MediaQuery.of(context).size.height;
    // double sidebarContentHeight = screenHeight * 0.8;
    return NavigationDrawer(
      children: <Widget>[
        Container(
          // height: sidebarContentHeight,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Wrap(
                  children: [
                    ListTile(
                      title: const Text('Welcome User!'),
                      titleTextStyle: textStyleHeader(color: const Color(0xFF1C39BB), size: 28),
                      trailing: const Icon(Icons.close),
                      onTap: () => Navigator.pop(context),
                    ),
                    const Divider(
                      color: Color(0xFFB9B9C3),
                    ),
                    ListView(
                      shrinkWrap: true,
                      children: [
                        isLoggedIn == true && widget.isRenter == true
                            ? Visibility(
                                visible: isVisible,
                                child: buildListTile(
                                    leadingIcon: const Icon(Icons.home_filled),
                                    label: 'Home Page',
                                    trailingIcon: const Icon(Icons.arrow_right),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (BuildContext context) => const LandingPage(
                                            isRenterStatus: true,
                                          ),
                                        ),
                                      );
                                    }),
                              )
                            : isLoggedIn == true && widget.isRenter == false
                                ? Visibility(
                                    visible: isVisible,
                                    child: buildListTile(
                                        leadingIcon: const Icon(Icons.home_filled),
                                        label: 'Home Page',
                                        trailingIcon: const Icon(Icons.arrow_right),
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (BuildContext context) => const LandingPage(
                                                isRenterStatus: false,
                                              ),
                                            ),
                                          );
                                        }),
                                  )
                                : Visibility(
                                    visible: !isVisible,
                                    child: buildListTile(
                                      leadingIcon: const Icon(Icons.home_filled),
                                      label: 'Home Page',
                                      trailingIcon: const Icon(Icons.arrow_right),
                                      onTap: null, //Pass Values
                                    ),
                                  ),
                        isLoggedIn == true && widget.isRenter == true
                            ? Visibility(
                                visible: isVisible,
                                child: buildListTile(
                                  leadingIcon: const Icon(Icons.book),
                                  label: 'Booking Managment',
                                  trailingIcon: const Icon(Icons.arrow_right),
                                  onTap: () => Navigator.pushNamed(context, RenterPage.id), //Pass Values
                                ),
                              )
                            : isLoggedIn == true && widget.isRenter == false
                                ? Visibility(
                                    visible: !isVisible,
                                    child: buildListTile(
                                      leadingIcon: const Icon(Icons.book),
                                      label: 'Booking Managment',
                                      trailingIcon: const Icon(Icons.arrow_right),
                                      onTap: () => Navigator.pushNamed(context, RenterPage.id), //Pass Values
                                    ),
                                  )
                                : Visibility(
                                    visible: !isVisible,
                                    child: buildListTile(
                                      leadingIcon: const Icon(Icons.book),
                                      label: 'Booking Managment',
                                      trailingIcon: const Icon(Icons.arrow_right),
                                      onTap: () => Navigator.pushNamed(context, RenterPage.id), //Pass Values
                                    ),
                                  ),
                        isLoggedIn == true && widget.isRenter == true
                            ? buildListTile(
                                leadingIcon: const Icon(Icons.person),
                                label: 'Personal Detail',
                                trailingIcon: const Icon(Icons.arrow_right),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => const PersonalDetailsV(
                                        isLoggedInStatus: true,
                                        isRenterStatus: true,
                                      ),
                                    ),
                                  );
                                })
                            : isLoggedIn == true && widget.isRenter == false
                                ? buildListTile(
                                    leadingIcon: const Icon(Icons.person),
                                    label: 'Personal Detail',
                                    trailingIcon: const Icon(Icons.arrow_right),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (BuildContext context) => const PersonalDetailsV(
                                            isLoggedInStatus: true,
                                            isRenterStatus: false,
                                          ),
                                        ),
                                      );
                                    })
                                : buildListTile(
                                    leadingIcon: const Icon(Icons.person),
                                    label: 'Sign up',
                                    trailingIcon: const Icon(Icons.arrow_right),
                                    onTap: () => Navigator.pushNamed(context, ChooseRole.id),
                                  ),
                        isLoggedIn == true && widget.isRenter == true
                            ? buildListTile(
                                leadingIcon: const Icon(Icons.change_circle_rounded),
                                label: 'Switch to Property Owner',
                                trailingIcon: const Icon(Icons.arrow_right),
                                onTap: () => Navigator.pushNamed(context, BottomNavigation.id),
                              )
                            : isLoggedIn == true && widget.isRenter == false
                                ? buildListTile(
                                    leadingIcon: const Icon(Icons.change_circle_rounded),
                                    label: 'Switch to Renter',
                                    trailingIcon: const Icon(Icons.arrow_right),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (BuildContext context) => LandingPage(
                                            isRenterStatus: true,
                                          ),
                                        ),
                                      );
                                    })
                                : buildListTile(
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
                  ],
                ),
                ksizedBoxTFB,
                isLoggedIn == true && widget.isRenter == true
                    ? Visibility(
                        visible: isVisible,
                        child: logoutButton(),
                      )
                    : isLoggedIn == true && widget.isRenter == false
                        ? Visibility(
                            visible: isVisible,
                            child: logoutButton(),
                          )
                        : Visibility(
                            visible: !isVisible,
                            child: logoutButton(),
                          ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Padding logoutButton() {
    LogInState logInState = Provider.of<LogInState>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: TextButton(
        onPressed: () {
          logInState.setFalse();
          Navigator.pushNamed(context, LoginPage.id);
        },
        style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            backgroundColor: MaterialStatePropertyAll(
              Color(0xFF1C39BB),
            ),
            padding: MaterialStatePropertyAll(EdgeInsetsDirectional.symmetric(vertical: 15))),
        child: Center(
          child: Text(
            'Log out',
            style: TextStyle(color: Colors.white, fontSize: 18.0, fontFamily: 'ProximaNovaBold'),
          ),
        ),
      ),
    );
  }

  // Content in SideBar
  ListTile buildListTile({required Icon leadingIcon, required String label, required Icon trailingIcon, required void Function()? onTap}) {
    return ListTile(
      leading: leadingIcon,
      title: Text(label),
      titleTextStyle: textStyleContent(size: 18, color: const Color(0xFF242731)),
      trailing: trailingIcon,
      onTap: onTap,
      visualDensity: VisualDensity(horizontal: 0, vertical: -2),
      hoverColor: Color(0xFF96A9CC),
    );
  }
}
