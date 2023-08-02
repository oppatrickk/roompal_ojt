import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roompal_ojt/Log_In_State.dart';
import 'package:roompal_ojt/Renter_State.dart';
import 'package:roompal_ojt/pages/property_owner/overview_page.dart';
import 'package:roompal_ojt/pages/user_registration/login_page.dart';
import 'package:roompal_ojt/widgets/filter.dart';
import 'package:roompal_ojt/widgets/propertylistingsgridview.dart';
import 'package:roompal_ojt/widgets/sidebar.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);
  static const String id = 'LandingPage';
  @override
  Widget build(BuildContext context) {
    LogInState logInState = Provider.of<LogInState>(context);
    RenterState renterState = Provider.of<RenterState>(context);
    bool isLoggedIn = logInState.isLoggedIn;
    bool isRenterStatus = renterState.isRenter;
    return Scaffold(
      appBar: appBar(),
      endDrawer: SideBar(
        isRenter: isRenterStatus,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(children: <Widget>[
            Row(children: <Widget>[
              Expanded(
                flex: 4,
                child: searchBar(),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Filter(),
              ),
            ]),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Container(
                    width: 335,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(color: const Color(0xFF1C39BB), borderRadius: BorderRadius.circular(16)),
                    child: Column(children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Image.asset(
                            'assets/img/house.png',
                            height: 130,
                            width: 130,
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'ROOM FOR',
                                style: textStyleHeader(color: Colors.white, size: 20),
                              ),
                              Text(
                                'RENT?',
                                style: textStyleHeader(color: Colors.white, size: 50),
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      buttonLP(
                          height: 40,
                          color: const Color(0xFFFEB618),
                          label: 'List your property with us',
                          textColor: Colors.black,
                          size: 16,
                          //if logged in go to overview page if not promt log in
                          onTap: isLoggedIn == true
                              ? () => Navigator.pushNamed(context, OverviewPage.id)
                              : () => Navigator.pushNamed(context, LoginPage.id)),
                      const SizedBox(height: 10),
                      Text(
                        'With our extensive network of potential tenants and a wide range of features, we strive to make the rental process as effortless as possible.',
                        style: textStyleContent(size: 14, color: Colors.white),
                        textAlign: TextAlign.justify,
                      ),
                    ]),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    width: 335,
                    height: 310,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1C39BB),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 6,
                          child: Text(
                            'Promotional Stuff',
                            style: textStyleHeader(color: Colors.white, size: 28),
                          ),
                        ),
                        const Expanded(
                          child: Center(
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const SizedBox(
                  width: 35,
                  child: Divider(
                    color: Color(0xFF242731),
                  ),
                ),
                Text(
                  'HELPING YOU FIND A PLACE TO CALL HOME',
                  style: textStyleHeader(color: const Color(0xFF242731), size: 12),
                ),
                const SizedBox(
                  width: 35,
                  child: Divider(
                    color: Color(0xFF242731),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            PropertyListingsGridView(
              isRenter: true,
              isLoggedIn: true,
              needEditDeleteButton: false,
            ),
          ]),
        ),
      ),
    );
  }
}
