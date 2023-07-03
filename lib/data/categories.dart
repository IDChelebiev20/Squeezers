import '../models/bubo_category.dart';

///
/// This file provides the original category data
///

/// Original labels in german and bulgarian, english added as last value
/// TODO: add thai labels
const labels = [
  ["0", "Blue"],
  ["1", "Green"],
  ["2", "Yellow"],
  ["3", "Design"],
];

///
/// Labels transformed into BuboCategories
///
/// This list can be used in the application for rendering the categories
///
List<BuboCategory> buboCategories = labels.map((categoryLabels) {
  return BuboCategory(
      int.parse(categoryLabels[0]),
      'assets/shirt/${categoryLabels[0].toLowerCase().replaceAll(' ', '_')}.jpg',
      {
        'us': categoryLabels[3],
        'de': categoryLabels[1],
        'bg': categoryLabels[2],
        'th': categoryLabels[4],
      });
}).toList();
