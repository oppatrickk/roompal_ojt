import 'package:flutter/material.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

//Card View of Listing (has edit and delete buttons)
Container propertyCardOwnerView({
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
                      ActionButtons(
                        Colors.green,
                        Icons.edit_document,
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

//Button that needs an icon and label (used in edit/delete buttons)
class ActionButtons extends StatelessWidget {
  const ActionButtons(
    this.color,
    this.icon,
    this.label,
    this.onPressed, {
    super.key,
  });
  final Color color;
  final IconData icon;
  final String label;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      width: 70,
      child: FloatingActionButton.extended(
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: color,
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        backgroundColor: Colors.white,
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: color,
          size: 20,
        ),
        label: Text(
          label,
          style: TextStyle(
            color: color,
            fontSize: 11,
          ),
        ),
      ),
    );
  }
}
