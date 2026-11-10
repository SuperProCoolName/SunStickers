// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sticker_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$StickerState on _StickerState, Store {
  Computed<List<Sticker>>? _$cartComputed;

  @override
  List<Sticker> get cart => (_$cartComputed ??=
          Computed<List<Sticker>>(() => super.cart, name: '_StickerState.cart'))
      .value;
  Computed<List<Sticker>>? _$favoriteComputed;

  @override
  List<Sticker> get favorite =>
      (_$favoriteComputed ??= Computed<List<Sticker>>(() => super.favorite,
              name: '_StickerState.favorite'))
          .value;
  Computed<double>? _$subtotalComputed;

  @override
  double get subtotal =>
      (_$subtotalComputed ??= Computed<double>(() => super.subtotal,
              name: '_StickerState.subtotal'))
          .value;

  late final _$stickersByCategoryAtom =
      Atom(name: '_StickerState.stickersByCategory', context: context);

  @override
  List<Sticker> get stickersByCategory {
    _$stickersByCategoryAtom.reportRead();
    return super.stickersByCategory;
  }

  @override
  set stickersByCategory(List<Sticker> value) {
    _$stickersByCategoryAtom.reportWrite(value, super.stickersByCategory, () {
      super.stickersByCategory = value;
    });
  }

  late final _$lightAtom = Atom(name: '_StickerState.light', context: context);

  @override
  bool get light {
    _$lightAtom.reportRead();
    return super.light;
  }

  @override
  set light(bool value) {
    _$lightAtom.reportWrite(value, super.light, () {
      super.light = value;
    });
  }

  late final _$onCategoryTapAsyncAction =
      AsyncAction('_StickerState.onCategoryTap', context: context);

  @override
  Future<void> onCategoryTap(StickerCategory category) {
    return _$onCategoryTapAsyncAction.run(() => super.onCategoryTap(category));
  }

  late final _$onIncreaseQuantityTapAsyncAction =
      AsyncAction('_StickerState.onIncreaseQuantityTap', context: context);

  @override
  Future<void> onIncreaseQuantityTap(Sticker sticker) {
    return _$onIncreaseQuantityTapAsyncAction
        .run(() => super.onIncreaseQuantityTap(sticker));
  }

  late final _$onDecreaseQuantityTapAsyncAction =
      AsyncAction('_StickerState.onDecreaseQuantityTap', context: context);

  @override
  Future<void> onDecreaseQuantityTap(Sticker sticker) {
    return _$onDecreaseQuantityTapAsyncAction
        .run(() => super.onDecreaseQuantityTap(sticker));
  }

  late final _$onAddToCartTapAsyncAction =
      AsyncAction('_StickerState.onAddToCartTap', context: context);

  @override
  Future<void> onAddToCartTap(Sticker sticker) {
    return _$onAddToCartTapAsyncAction.run(() => super.onAddToCartTap(sticker));
  }

  late final _$onRemoveFromCartTapAsyncAction =
      AsyncAction('_StickerState.onRemoveFromCartTap', context: context);

  @override
  Future<void> onRemoveFromCartTap(Sticker sticker) {
    return _$onRemoveFromCartTapAsyncAction
        .run(() => super.onRemoveFromCartTap(sticker));
  }

  late final _$onCheckOutTapAsyncAction =
      AsyncAction('_StickerState.onCheckOutTap', context: context);

  @override
  Future<void> onCheckOutTap() {
    return _$onCheckOutTapAsyncAction.run(() => super.onCheckOutTap());
  }

  late final _$onAddRemoveFavoriteTapAsyncAction =
      AsyncAction('_StickerState.onAddRemoveFavoriteTap', context: context);

  @override
  Future<void> onAddRemoveFavoriteTap(Sticker sticker) {
    return _$onAddRemoveFavoriteTapAsyncAction
        .run(() => super.onAddRemoveFavoriteTap(sticker));
  }

  late final _$_StickerStateActionController =
      ActionController(name: '_StickerState', context: context);

  @override
  void toggleTheme() {
    final _$actionInfo = _$_StickerStateActionController.startAction(
        name: '_StickerState.toggleTheme');
    try {
      return super.toggleTheme();
    } finally {
      _$_StickerStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
stickersByCategory: ${stickersByCategory},
light: ${light},
cart: ${cart},
favorite: ${favorite},
subtotal: ${subtotal}
    ''';
  }
}
