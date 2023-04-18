import '../models/bubo_category.dart';

///
/// This file provides the original category data
///

/// Original labels in german and bulgarian, english added as last value
/// TODO: add thai labels
const labels = [
  ["1", "Obst", "плодове", "vegetables", "ผลไม้"],
  ["2", "Farben", "цветове", "colors", "สี"],
  ["3", "Moebel", "мебели", "furniture", "เฟอร์นิเจอร์"],
  ["4", "Sachen", "дрехи", "clothes", "เสื้อผ้า"],
  ["5", "Spielzeug", "играчки", "toys", "ของเล่น"],
  ["6", "Tiere", "животни", "animals", "สัตว์"],
  ["7", "Wilde Tiere", "диви животни", "wild animals", "สัตว์ป่า"],
  ["8", "Zahlen", "цифри", "digits", "ตัวเลข"],
  ["9", "Wetter", "времето", "weather", "สภาพอากาศ"],
  ["10", "Zu Hause", "вкъщи", "at home", "บ้าน"],
  ["11", "Natur", "природа", "nature", "ธรรมชาติ"],
  ["12", "Im Meer", "морето", "sea", "ทะเล"],
  ["13", "Am Strand", "на плажа", "on the beach", "บนทะเล"],
  ["14", "Sport", "спорт", "sport", "กีฬา"],
  ["15", "Stadt", "град", "city", "เมือง"],
  ["16", "Berufe", "професии", "professions", "อาชีพ"],
  ["17", "Fahrzeuge", "транспрорт", "transport", "ขนส่ง"]
];

///
/// Labels transformed into BuboCategories
///
/// This list can be used in the application for rendering the categories
///
List<BuboCategory> buboCategories = labels.map((categoryLabels) {
  return BuboCategory(
      int.parse(categoryLabels[0]),
      'assets/categories/cat_${categoryLabels[1].toLowerCase().replaceAll(' ', '_')}@3x.png',
      {
        'us': categoryLabels[3],
        'de': categoryLabels[1],
        'bg': categoryLabels[2],
        'th': categoryLabels[4],
      });
}).toList();
