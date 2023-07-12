import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_3/models/shoe.dart';

List<Shoe> initialData = List.generate(
    20,
    (index) => Shoe(
        title: 'Tenis $index',
        price: double.parse((Random().nextInt(100) * index).toString()),
        image: 'images/high-tops.png'));

class ShoesProvider extends ChangeNotifier {
  List<Shoe> _shoes = initialData;

  List<Shoe> get shoes => _shoes;

  List<Shoe> _myFavorite = [];

  List<Shoe> get myFavorite => _myFavorite;

  void addToMyFavorite(Shoe shoe) {
    _myFavorite.add(shoe);
    notifyListeners();
  }

  void removeMyFavorite(Shoe shoe) {
    _myFavorite.remove(shoe);
    notifyListeners();
  }
}
