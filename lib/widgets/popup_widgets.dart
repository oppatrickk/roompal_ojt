import 'package:flutter/material.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';
import 'const_elements.dart';

//Title Design
Container titleDesign({required String label}) {
  return Container(
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(25),
        topLeft: Radius.circular(25),
      ),
      color: Color(0xFF1C39BB),
    ),
    padding: const EdgeInsets.all(12),
    height: 50,
    child: SizedBox.expand(
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    ),
  );
}

//Popup Button
TextButton puButton({
  required void Function()? onPressed,
  required Color color,
  required String label,
}) {
  return TextButton(
    onPressed: onPressed,
    style: ButtonStyle(
      padding: MaterialStateProperty.all(
        EdgeInsetsDirectional.symmetric(horizontal: 20, vertical: 10),
      ),
      side: MaterialStateProperty.all(
        BorderSide(
          color: color,
        ),
      ),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    ),
    child: Center(
      child: Text(
        label,
        style: TextStyle(
            color: color, fontSize: 14.0, fontFamily: 'ProximaNovaBold'),
      ),
    ),
  );
}

//Pop Up Text Field
Column popupTextFieldContent({
  required String label,
  required IconData icon,
  required String content,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: textStyleContent(size: 12, color: const Color(0xFF242426)),
      ),
      Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: const Color(0xFF808080)),
          borderRadius: BorderRadius.circular(5),
          color: const Color(0xFFF1F1F1),
        ),
        child: ListTile(
          visualDensity: const VisualDensity(horizontal: 4, vertical: -4),
          leading: iconStyle(
            icon: icon,
            color: Color(0xFFFEB618),
            size: 24,
          ),
          title: Text(
            content,
            style: textStyleContent(
              size: 14,
              color: const Color(0xFF242731),
            ),
          ),
        ),
      ),
    ],
  );
}

Column priceTextField(
    {required String label,
    required double value,
    required Color textColor,
    required Color leadingColor,
    required Color borderColor}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: textStyleContent(size: 12, color: textColor),
      ),
      Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: borderColor),
          borderRadius: BorderRadius.circular(5),
          color: const Color(0xFFF1F1F1),
        ),
        child: ListTile(
          visualDensity: const VisualDensity(horizontal: 4, vertical: -4),
          leading: Text(
            '₱ ',
            style: TextStyle(
              color: leadingColor,
              fontSize: 24,
            ),
          ),
          title: Text(
            value.toStringAsFixed(2),
            style: textStyleContent(
              size: 14,
              color: textColor,
            ),
          ),
        ),
      ),
    ],
  );
}

// Content Style in Pending Request
Column pendingRequestContent({required String tenantName}) {
  return Column(
    children: [
      Container(),
      ListTile(
        title: Text(
          tenantName,
          style: textStyleContent(size: 18, color: Colors.black),
        ),
        trailing: iconStyle(
          icon: Icons.keyboard_arrow_down_rounded,
          color: Colors.yellow[800]!,
          size: 24,
        ),
      ),
      divider,
    ],
  );
}
