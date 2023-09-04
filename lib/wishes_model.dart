import 'package:flutter/material.dart';

class WishesModel {
  String? category;
  String? message;

  WishesModel({this.category, this.message});
}

List<WishesModel> wishes = [
  WishesModel(
      category: 'Happy New Year',
      message:
          'Wishing you a sparkling New Year filled with joy, laughter, and countless blessings. Happy New Year!'),
  WishesModel(
      category: 'Happy New Year',
      message:
          'May this year be a joyful ride for you and your loved ones. Wishing you a prosperous and delightful New Year!'),
  WishesModel(
      category: 'Happy New Year',
      message:
          'Sending you warm wishes for a bright and beautiful New Year. May all your dreams come true. Happy New Year!'),
  WishesModel(
      category: 'Eid Mubarak',
      message:
          ' May the blessings of Eid bring peace, happiness, and prosperity to your life. Eid Mubarak! '),
  WishesModel(
      category: 'Eid Mubarak',
      message:
          "On this joyous occasion of Eid, may Allah's blessings be with you and your family. Eid Mubarak! "),
  WishesModel(
      category: 'Chand Raat Mubarak',
      message:
          "As the moon shines brightly tonight, may your life be filled with joy, love, and blessings. Chand Raat Mubarak! "),
  WishesModel(
      category: 'Eid Mubarak',
      message:
          " Wishing you a beautiful Chand Raat filled with happiness, togetherness, and delightful celebrations. Chand Raat Mubarak "),
  WishesModel(
      category: 'Eid Mubarak',
      message:
          "On this enchanting night of Chand Raat, may your wishes be granted and your heart be filled with contentment. Chand Raat Mubarak"),
];
