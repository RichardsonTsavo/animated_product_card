import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'animated_product_card_store.g.dart';

class AnimatedProductCardStore = _AnimatedProductCardStoreBase
    with _$AnimatedProductCardStore;

abstract class _AnimatedProductCardStoreBase with Store {
  late AnimationController upController;
  late AnimationController downController;
  late AnimationController imageController;

  @observable
  bool isOpen = false;
  @observable
  bool isOpenDelay = false;
  @observable
  int index = 0;

  List<Color> colors = [
    Colors.black,
    Colors.blue,
    Colors.red,
    Colors.orange,
  ];
  List<Color> colorsContainer = [
    Colors.grey.shade900,
    Colors.blueAccent,
    Colors.redAccent,
    Colors.orangeAccent,
  ];
  List<String> paths = [
    "assets/black.png",
    "assets/blue.png",
    "assets/red.png",
    "assets/orange.png",
  ];

  @action
  void changeColor(int value) {
    index = value;
    imageController.forward(from: 0);
  }

  @action
  Future setIsOpen(bool value) async {
    isOpen = value;
    await Future.delayed(const Duration(milliseconds: 100));
    isOpenDelay = value;
  }

  void setHover() {
    if (isOpen) {
      upController.forward();
      downController.forward();
    } else {
      upController.reverse();
      downController.reverse();
    }
  }
}
