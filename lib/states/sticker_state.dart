import 'package:mobx/mobx.dart';

import '../data/_data.dart';

part 'sticker_state.g.dart';

class StickerState extends _StickerState with _$StickerState {
  StickerState._();
  static final _instance = StickerState._();
  factory StickerState() => _instance;
}

abstract class _StickerState with Store {
  //Переменные
  final List<StickerCategory> categories = AppData.categories;
  final List<Sticker> stickers = AppData.stickers;
  @observable
  List<Sticker> stickersByCategory = AppData.stickers;
  @computed
  List<Sticker> get cart => stickers.where((e) => e.cart).toList();
  @computed
  List<Sticker> get favorite => stickers.where((e) => e.favorite).toList();
  @observable
  bool light = true;

  //Действия
  @action
  Future<void> onCategoryTap(StickerCategory category) async {
    categories.map((e) {
      if (e.type == category.type) {
        e.isSelected = true;
      } else {
        e.isSelected = false;
      }
    }).toList();
    if (category.type == StickerType.all) {
      stickersByCategory = stickers;
    } else {
      stickersByCategory = stickers.where((e) => e.type == category.type).toList();
    }
  }

  @action
  Future<void> onIncreaseQuantityTap(Sticker sticker) async {
    sticker.quantity++;
  }

  @action
  Future<void> onDecreaseQuantityTap(Sticker sticker) async {
    if (sticker.quantity == 1) return;
    sticker.quantity--;
  }

  @action
  Future<void> onAddToCartTap(Sticker sticker) async {
    sticker.cart = true;
  }

  @action
  Future<void> onRemoveFromCartTap(Sticker sticker) async {
    sticker.cart = false;
    sticker.quantity = 1;
  }

  @action
  Future<void> onCheckOutTap() async {
    for (var e in cart) {
      e.cart = false;
      e.quantity = 1;
    }
  }

  @action
  Future<void> onAddRemoveFavoriteTap(Sticker sticker) async {
    sticker.favorite = !sticker.favorite;
  }

  @action
  void toggleTheme() {
    light = !light;
  }

  //Вспомогательные  методы
  String stickerPrice(Sticker sticker) {
    return (sticker.quantity * sticker.price).toString();
  }

  @computed
  double get subtotal {
    double amount = 0.0;
    for (var e in cart) {
      amount = amount + e.price * e.quantity;
    }
    return amount;
  }

  //BLoC, Cubit, GetX, MobX, Provider, Riverpod, Redux

  // 14 шагов логики
  //
  //
  // 1.  Подсветка выбранной категории
  // 2.  Продукты по категории
  // 3.  Детали: отображение продукта
  // 4.  Детали: количество
  // 5.  Корзина: управление пустой корзиной
  // 6.  Детали: добавление в корзину
  // 7.  Корзина: список в корзине
  // 8.  Корзина: стоимость корзины
  // 9.  Корзина: количество
  // 10. Корзина: удаление
  // 11. Корзина: чистка корзина на checkout
  // 12. Любимые: управление пустым экраном
  // 13. Детали: Добавление/удаление любимые
  // 14. Смена темы
}
