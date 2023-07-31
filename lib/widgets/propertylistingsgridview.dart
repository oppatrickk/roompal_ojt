import 'package:flutter/material.dart';
import 'package:roompal_ojt/model/property_listings.dart';
import 'package:roompal_ojt/pages/room_details.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';
import 'package:roompal_ojt/widgets/widget_property_owner.dart';

// Listings View - Property Owner and Renter
class PropertyListingsGridView extends StatefulWidget {
  const PropertyListingsGridView(
      {super.key, required this.isRenter, required this.needEditDeleteButton});
  final bool? isRenter;
  final bool? needEditDeleteButton;

  @override
  State<PropertyListingsGridView> createState() =>
      _PropertyListingsGridViewState();
}

class _PropertyListingsGridViewState extends State<PropertyListingsGridView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: PropertyList.listings.length,
        itemBuilder: (BuildContext context, int index) {
          PropertyList list = PropertyList.listings[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: const Color(0xFFBBBFC1),
                ),
              ),
              child: GestureDetector(
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
                          image: AssetImage(list.propertyImage!),
                        ),
                      ),
                      height: 200,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Column(
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.all(7),
                                decoration: BoxDecoration(
                                  color: list.propertyStatus == 'Available'
                                      ? Colors.green
                                      : Colors.red,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              const SizedBox(width: 5),
                              Text(
                                list.propertyStatus!.toUpperCase(),
                                style: textStyleHeader(
                                    color: list.propertyStatus == 'Available'
                                        ? Colors.green
                                        : Colors.red,
                                    size: 12),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                list.propertyName!,
                                style: textStyleHeader(
                                    color: const Color(0xFF242731), size: 20),
                              ),
                              Text(
                                'Starting at',
                                style: textStyleContent(
                                    color: const Color(0xFF242731), size: 14),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Room #${list.propertyNumber.toString().padLeft(3, '0')}',
                                style: textStyleContent(
                                    color: const Color(0xFF242731), size: 18),
                              ),
                              Row(
                                children: <Widget>[
                                  const Text(
                                    '\₱ ',
                                    style: TextStyle(
                                        color: Color(0xFF1C39BB),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    list.propertyPrice!.toStringAsFixed(2),
                                    style: textStyleHeader(
                                        color: const Color(0xFF242731),
                                        size: 20),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                '${list.propertyCity}, ${list.propertyProvince}',
                                style: textStyleHeader(
                                    color: const Color(0xFF242731), size: 12),
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    list.propertyIcon,
                                    color: const Color(0xFF1C39BB),
                                  ),
                                  Text(
                                    list.propertyType.toString(),
                                    style: textStyleHeader(
                                        color: const Color(0xFF242731),
                                        size: 12),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          widget.needEditDeleteButton == true
                              ? Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        ActionButtons(
                                          Colors.green,
                                          Icons.edit_square,
                                          'Edit',
                                          () {/*onPress*/},
                                        ),
                                        ksizedBoxTextFieldRow,
                                        ActionButtons(
                                          Colors.red,
                                          Icons.delete_outline,
                                          'Delete',
                                          () {/*onPress*/},
                                        ),
                                      ],
                                    ),
                                    Text(
                                      list.propertyAccommodation!,
                                      style: textStyleContent(
                                          color: const Color(0xFF242731),
                                          size: 12),
                                    ),
                                  ],
                                )
                              : Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        starRating(
                                            color: const Color(0xFFFEB618),
                                            size: 25),
                                        starRating(
                                            color: const Color(0xFFFEB618),
                                            size: 25),
                                        starRating(
                                            color: const Color(0xFFFEB618),
                                            size: 25),
                                        starRating(
                                            color: const Color(0xFFFEB618),
                                            size: 25),
                                        starRating(
                                            color: const Color(0xFFDEDEDE),
                                            size: 25),
                                      ],
                                    ),
                                    Text(
                                      list.propertyAccommodation!,
                                      style: textStyleContent(
                                          color: const Color(0xFF242731),
                                          size: 12),
                                    ),
                                  ],
                                )
                        ],
                      ),
                    ),
                  ],
                ),
                onTap: () => widget.isRenter == true
                    ? Navigator.pushNamed(context, RoomDetails.id)
                    : null,
              ),
            ),
          );
        });
  }
}
