import 'package:flutter/material.dart';

import '../data/_data.dart';
import '../ui/_ui.dart';

class StickerState {
  StickerState._();
  static final _instance = StickerState._();
  factory StickerState() => _instance;

  //Ключи
  GlobalKey<CartScreenState> cartKey = GlobalKey();
  GlobalKey<FavoriteScreenState> favoriteKey = GlobalKey();

  //Переменные
  List<StickerCategory> categories = AppData.categories;
  List<Sticker> stickers = AppData.stickers;
  List<Sticker> stickersByCategory = AppData.stickers;
  List<Sticker> get cart => stickers.where((element) => element.cart).toList();
  List<Sticker> get favorite => stickers.where((element) => element.isFavorite).toList();
  ValueNotifier<bool> isLight = ValueNotifier(true);

  //Действия
  Future<void> onCategoryTap(StickerCategory category) async {
    categories.map((e) {
      if (e.type == category.type) {
        e.isSelected = true;
      } else {
        e.isSelected = false;
      }
    }).toList();
  }
}
