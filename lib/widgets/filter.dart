import 'package:flutter/material.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  Map<String, bool?> checkboxStatus = <String, bool?>{};
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.all(7),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFF242731),
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: const Icon(
          Icons.filter_list_rounded,
          size: 30,
          color: Color(0xFF242731),
        ),
      ),
      onTap: () => showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.65,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                topLeft: Radius.circular(16),
              ),
              color: Colors.white,
            ),
            child: Container(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
                left: 20,
                right: 20,
                top: 20,
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Filters',
                        style: textStyleHeader(
                          color: const Color(0xFF1C39BB),
                          size: 24,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'Reset',
                          style: textStyleHeader(
                            color: Colors.red,
                            size: 16,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    color: Color(0xFFB9B9C3),
                  ),
                  Column(
                    children: <Widget>[
                      const SizedBox(height: 20),
                      Column(
                        children: <Widget>[
                          filterContents(label: 'Show Occupied Rooms'),
                          filterContents(label: 'Show Vacant Rooms'),
                          filterContents(label: 'Show Transient Rental Rooms'),
                          filterContents(label: 'Show Monthly Rental Rooms'),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Type of Room',
                            style: textStyleHeader(color: const Color(0xFF242731), size: 20),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(children: <Widget>[
                              filterContents(label: 'Boarding House'),
                              filterContents(label: 'Bedspace'),
                              filterContents(label: 'Apartment'),
                              filterContents(label: 'Studio'),
                            ]),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.11,
                  ),
                  buttonLP(height: 40, color: const Color(0xFF1C39BB), label: 'Apply Filter', textColor: Colors.white, size: 16, onTap: () {}),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Row filterContents({required String label}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 24,
          width: 24,
          child: Checkbox(
            value: checkboxStatus[label] ?? false,
            onChanged: (bool? value) {
              setState(() {
                checkboxStatus[label] = value;
              });
              // Perform any action you want when the checkbox is toggled.
            },
          ),
        ),
        const SizedBox(width: 10),
        filterRoomStatus(label: label),
      ],
    );
  }
}
