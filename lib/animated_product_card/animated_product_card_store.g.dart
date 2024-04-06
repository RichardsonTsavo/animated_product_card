// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animated_product_card_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AnimatedProductCardStore on _AnimatedProductCardStoreBase, Store {
  late final _$isOpenAtom =
      Atom(name: '_AnimatedProductCardStoreBase.isOpen', context: context);

  @override
  bool get isOpen {
    _$isOpenAtom.reportRead();
    return super.isOpen;
  }

  @override
  set isOpen(bool value) {
    _$isOpenAtom.reportWrite(value, super.isOpen, () {
      super.isOpen = value;
    });
  }

  late final _$isOpenDelayAtom =
      Atom(name: '_AnimatedProductCardStoreBase.isOpenDelay', context: context);

  @override
  bool get isOpenDelay {
    _$isOpenDelayAtom.reportRead();
    return super.isOpenDelay;
  }

  @override
  set isOpenDelay(bool value) {
    _$isOpenDelayAtom.reportWrite(value, super.isOpenDelay, () {
      super.isOpenDelay = value;
    });
  }

  late final _$indexAtom =
      Atom(name: '_AnimatedProductCardStoreBase.index', context: context);

  @override
  int get index {
    _$indexAtom.reportRead();
    return super.index;
  }

  @override
  set index(int value) {
    _$indexAtom.reportWrite(value, super.index, () {
      super.index = value;
    });
  }

  late final _$setIsOpenAsyncAction =
      AsyncAction('_AnimatedProductCardStoreBase.setIsOpen', context: context);

  @override
  Future<dynamic> setIsOpen(bool value) {
    return _$setIsOpenAsyncAction.run(() => super.setIsOpen(value));
  }

  late final _$_AnimatedProductCardStoreBaseActionController =
      ActionController(name: '_AnimatedProductCardStoreBase', context: context);

  @override
  void changeColor(int value) {
    final _$actionInfo = _$_AnimatedProductCardStoreBaseActionController
        .startAction(name: '_AnimatedProductCardStoreBase.changeColor');
    try {
      return super.changeColor(value);
    } finally {
      _$_AnimatedProductCardStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isOpen: ${isOpen},
isOpenDelay: ${isOpenDelay},
index: ${index}
    ''';
  }
}
