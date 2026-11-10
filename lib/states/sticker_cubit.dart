import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/_data.dart';
import 'sticker_state.dart';

class StickerCubit extends Cubit<StickerState> {
  StickerCubit() : super(StickerState.initial());

  void onCategoryTap(StickerCategory category) {
    final categories = state.categories.map((e) {
      return e.copyWith(isSelected: e.type == category.type);
    }).toList();
    emit(state.copyWith(categories: categories));
  }

  void onIncreaseQuantityTap(int stickerId) {
    final stickers = state.stickers.map((e) {
      if (e.id == stickerId) {
        return e.copyWith(quantity: e.quantity + 1);
      }
      return e;
    }).toList();
    emit(state.copyWith(stickers: stickers));
  }

  void onDecreaseQuantityTap(int stickerId) {
    final stickers = state.stickers.map((e) {
      if (e.id == stickerId && e.quantity > 1) {
        return e.copyWith(quantity: e.quantity - 1);
      }
      return e;
    }).toList();
    emit(state.copyWith(stickers: stickers));
  }

  void onAddToCartTap(int stickerId) {
    final stickers = state.stickers.map((e) {
      if (e.id == stickerId) {
        return e.copyWith(cart: true);
      }
      return e;
    }).toList();
    emit(state.copyWith(stickers: stickers));
  }

  void onRemoveFromCartTap(int stickerId) {
    final stickers = state.stickers.map((e) {
      if (e.id == stickerId) {
        return e.copyWith(cart: false, quantity: 1);
      }
      return e;
    }).toList();
    emit(state.copyWith(stickers: stickers));
  }

  void onCheckOutTap() {
    final cartIds = state.cart.map((e) => e.id).toSet();
    final stickers = state.stickers.map((e) {
      if (cartIds.contains(e.id)) {
        return e.copyWith(cart: false, quantity: 1);
      }
      return e;
    }).toList();
    emit(state.copyWith(stickers: stickers));
  }
}
