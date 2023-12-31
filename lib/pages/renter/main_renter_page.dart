import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roompal_ojt/Renter_State.dart';
import 'package:roompal_ojt/pages/renter/renter_page(1).dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/sidebar.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

class RenterPage extends StatelessWidget {
  RenterPage({super.key});
  static const String id = 'RenterPage';
  final List<BookedRoomDetails> items = <BookedRoomDetails>[
    BookedRoomDetails('July 3, 2023', 'Kwarto De Luna', 'P 1000.00', 'Processing'),
    BookedRoomDetails('July 3, 2023', 'Kwarto De Moon', 'P 2500.00', 'Booked'),
    BookedRoomDetails('July 3, 2023', 'Kwarto De Wala Lungs', 'P ####.00', 'Failed'),
    BookedRoomDetails('July 3, 2023', 'Kwarto De Kimi', 'P ####.00', 'Cancelled'),
  ];

  @override
  Widget build(BuildContext context) {
    RenterState renterState = Provider.of<RenterState>(context);
    return Scaffold(
      appBar: appBar(),
      endDrawer: SideBar(
        isRenter: renterState.isRenter,
      ),
      body: BuildRenterPage(items: items),
    );
  }
}

class BuildRenterPage extends StatelessWidget {
  const BuildRenterPage({
    super.key,
    required this.items,
  });

  final List<BookedRoomDetails> items;

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      // If the list is empty, display this widget
      return const NoBookingData();
    } else {
      // If the list is not empty, build the list of containers
      return Container(
        padding: kPagePadding,
        child: BookingManagement(items: items),
      );
    }
  }
}
