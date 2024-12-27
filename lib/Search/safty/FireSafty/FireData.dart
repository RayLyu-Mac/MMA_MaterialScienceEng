// Enum for fire classes
import 'package:flutter/material.dart';

enum FireClass {
  classA,
  classB,
  classC,
  classD,
  classK,
}

// Modern data class for fire safety information
class FireSafetyData {
  final String title;
  final String content;
  final String imageUrl;
  final FireClass fireClass;
  final Color color;
  final IconData icon;
  final Map<String, String> additionalInfo;
  final double titleFontsize;

  const FireSafetyData({
    required this.title,
    required this.content,
    required this.imageUrl,
    required this.fireClass,
    required this.color,
    required this.icon,
    this.additionalInfo = const {},
    required this.titleFontsize,
  });

  // Helper method to get formatted content
  String get formattedContent => content.trim();

  // Helper method to get display properties
  Map<String, double> get displayProperties {
    switch (fireClass) {
      case FireClass.classA:
        return {'titleSize': 16.0, 'contentSize': 14.0};
      case FireClass.classB:
        return {'titleSize': 16.0, 'contentSize': 14.0};
      case FireClass.classC:
        return {'titleSize': 16.0, 'contentSize': 14.0};
      case FireClass.classD:
        return {'titleSize': 16.0, 'contentSize': 14.0};
      case FireClass.classK:
        return {'titleSize': 15.0, 'contentSize': 14.0};
    }
  }
}

// Base URL for assets
const String _baseImageUrl =
    "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/extinguisher/";

// Modern fire safety data list
final List<FireSafetyData> fireSafetyData = [
  FireSafetyData(
    title: "Class A: Ordinary",
    content: """
    For ordinary combustible materials such as:
    • Paper
    • Wood
    • Cardboard
    • Most plastics
    
    The geometric symbol is the green triangle and the pictograph shows ordinary trash and wood on fire.
    """,
    imageUrl: "${_baseImageUrl}A.png?raw=true",
    fireClass: FireClass.classA,
    color: Colors.green,
    icon: Icons.delete_outline,
    additionalInfo: {
      'symbol': 'Triangle',
      'symbolColor': 'Green',
      'extinguisherType': 'Water, Foam',
    },
    titleFontsize: 16.0,
  ),
  FireSafetyData(
    title: "Class B: Flammable Liquid",
    content: """
    For fires involving flammable or combustible liquids:
    • Gasoline
    • Kerosene
    • Grease
    • Oil
    
    The geometric symbol is the red square and the pictograph shows a fuel can in flames.
    """,
    imageUrl: "${_baseImageUrl}B.png?raw=true",
    fireClass: FireClass.classB,
    color: Colors.red,
    icon: Icons.local_gas_station,
    additionalInfo: {
      'symbol': 'Square',
      'symbolColor': 'Red',
      'extinguisherType': 'Foam, CO2, Dry Chemical',
    },
    titleFontsize: 16.0,
  ),
  FireSafetyData(
    title: "Class C: Electrical Equipment",
    content: """
    For fires involving electrical equipment:
    • Appliances
    • Wiring
    • Circuit breakers
    • Outlets
    
    WARNING: Never use water - Risk of electrical shock!
    """,
    imageUrl: "${_baseImageUrl}C.jpg?raw=true",
    fireClass: FireClass.classC,
    color: Colors.blue,
    icon: Icons.electrical_services,
    additionalInfo: {
      'symbol': 'Circle',
      'symbolColor': 'Blue',
      'extinguisherType': 'CO2, Dry Chemical',
      'warning': 'Never use water',
    },
    titleFontsize: 16.0,
  ),
  FireSafetyData(
    title: "Class D: Chemical Laboratory",
    content: """
    For fires involving combustible metals in chemical laboratories.
    
    Special Considerations:
    • Requires specific extinguishing agents
    • Common in laboratory settings
    • Requires specialized training
    """,
    imageUrl: "${_baseImageUrl}D.png?raw=true",
    fireClass: FireClass.classD,
    color: Colors.yellow,
    icon: Icons.science,
    additionalInfo: {
      'symbol': 'Star',
      'symbolColor': 'Yellow',
      'extinguisherType': 'Dry Powder',
      'specialTraining': 'Required',
    },
    titleFontsize: 16.0,
  ),
  FireSafetyData(
    title: "Class K: Cooking Fires",
    content: """
    For fires involving:
    • Cooking oils
    • Trans-fats
    • Fats in cooking appliances
    
    Common in:
    • Restaurants
    • Cafeteria kitchens
    
    The geometric symbol is the black hexagon.
    """,
    imageUrl: "${_baseImageUrl}K.png?raw=true",
    fireClass: FireClass.classK,
    color: Colors.black87,
    icon: Icons.restaurant,
    additionalInfo: {
      'symbol': 'Hexagon',
      'symbolColor': 'Black',
      'extinguisherType': 'Wet Chemical',
      'locations': 'Kitchens, Restaurants',
    },
    titleFontsize: 15.0,
  ),
];
