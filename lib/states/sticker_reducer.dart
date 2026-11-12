import 'sticker_actions.dart';
import 'sticker_state.dart';

StickerState stickerReducer(StickerState state, dynamic action) {
  if (action is CategorySelected) {
    final categories = state.categories.map((e) {
      return e.copyWith(isSelected: e.type == action.category.type);
    }).toList();
    return state.copyWith(categories: categories);
  }

  if (action is QuantityIncreased) {
    final stickers = state.stickers.map((e) {
      if (e.id == action.stickerId) {
        return e.copyWith(quantity: e.quantity + 1);
      }
      return e;
    }).toList();
    return state.copyWith(stickers: stickers);
  }

  if (action is QuantityDecreased) {
    final stickers = state.stickers.map((e) {
      if (e.id == action.stickerId && e.quantity > 1) {
        return e.copyWith(quantity: e.quantity - 1);
      }
      return e;
    }).toList();
    return state.copyWith(stickers: stickers);
  }

  if (action is CartItemAdded) {
    final stickers = state.stickers.map((e) {
      if (e.id == action.stickerId) {
        return e.copyWith(cart: true);
      }
      return e;
    }).toList();
    return state.copyWith(stickers: stickers);
  }

  if (action is CartItemRemoved) {
    final stickers = state.stickers.map((e) {
      if (e.id == action.stickerId) {
        return e.copyWith(cart: false, quantity: 1);
      }
      return e;
    }).toList();
    return state.copyWith(stickers: stickers);
  }

  if (action is CartCheckedOut) {
    final cartIds = state.cart.map((e) => e.id).toSet();
    final stickers = state.stickers.map((e) {
      if (cartIds.contains(e.id)) {
        return e.copyWith(cart: false, quantity: 1);
      }
      return e;
    }).toList();
    return state.copyWith(stickers: stickers);
  }

  return state;
}
