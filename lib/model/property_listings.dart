import 'package:flutter/material.dart';

class PropertyList {
  PropertyList({
    required this.propertyImage,
    required this.propertyStatus, //Available || Occupied
    required this.propertyName,
    required this.propertyNumber,
    required this.propertyPrice,
    required this.propertyCity,
    required this.propertyProvince,
    required this.propertyIcon,
    required this.propertyType,
    required this.propertyAccommodation,
  });

  String? propertyImage;
  String? propertyStatus;
  String? propertyName;
  int? propertyNumber;
  double? propertyPrice;
  String? propertyCity;
  String? propertyProvince;
  IconData? propertyIcon;
  String? propertyType;
  String? propertyAccommodation;

  static List<PropertyList> listings = <PropertyList>[
    PropertyList(
      propertyImage: 'assets/img/rental.jpg',
      propertyStatus: 'Available',
      propertyName: 'Room Name',
      propertyNumber: 001,
      propertyPrice: 1500.00,
      propertyCity: 'Legazpi City',
      propertyProvince: 'Albay',
      propertyIcon: Icons.hotel,
      propertyType: 'Bedspace',
      propertyAccommodation: '4-18 people',
    ),
    PropertyList(
      propertyImage: 'assets/img/rental.jpg',
      propertyStatus: 'Available',
      propertyName: 'Room Name',
      propertyNumber: 002,
      propertyPrice: 1500.00,
      propertyCity: 'Legazpi City',
      propertyProvince: 'Albay',
      propertyIcon: Icons.hotel,
      propertyType: 'Bedspace',
      propertyAccommodation: '4-18 people',
    ),
    PropertyList(
      propertyImage: 'assets/img/rental.jpg',
      propertyStatus: 'Occupied',
      propertyName: 'Room Name',
      propertyNumber: 003,
      propertyPrice: 1500.00,
      propertyCity: 'Legazpi City',
      propertyProvince: 'Albay',
      propertyIcon: Icons.hotel,
      propertyType: 'Bedspace',
      propertyAccommodation: '4-18 people',
    ),
    PropertyList(
      propertyImage: 'assets/img/rental.jpg',
      propertyStatus: 'Available',
      propertyName: 'Room Name',
      propertyNumber: 004,
      propertyPrice: 1500.00,
      propertyCity: 'Legazpi City',
      propertyProvince: 'Albay',
      propertyIcon: Icons.hotel,
      propertyType: 'Bedspace',
      propertyAccommodation: '4-18 people',
    ),
  ];
}
