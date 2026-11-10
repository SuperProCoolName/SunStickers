// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sticker.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Sticker on _Sticker, Store {
  late final _$quantityAtom = Atom(name: '_Sticker.quantity', context: context);

  @override
  int get quantity {
    _$quantityAtom.reportRead();
    return super.quantity;
  }

  @override
  set quantity(int value) {
    _$quantityAtom.reportWrite(value, super.quantity, () {
      super.quantity = value;
    });
  }

  late final _$favoriteAtom = Atom(name: '_Sticker.favorite', context: context);

  @override
  bool get favorite {
    _$favoriteAtom.reportRead();
    return super.favorite;
  }

  @override
  set favorite(bool value) {
    _$favoriteAtom.reportWrite(value, super.favorite, () {
      super.favorite = value;
    });
  }

  late final _$cartAtom = Atom(name: '_Sticker.cart', context: context);

  @override
  bool get cart {
    _$cartAtom.reportRead();
    return super.cart;
  }

  @override
  set cart(bool value) {
    _$cartAtom.reportWrite(value, super.cart, () {
      super.cart = value;
    });
  }

  @override
  String toString() {
    return '''
quantity: ${quantity},
favorite: ${favorite},
cart: ${cart}
    ''';
  }
}
