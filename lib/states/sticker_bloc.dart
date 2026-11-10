import 'package:flutter_bloc/flutter_bloc.dart';

import 'sticker_event.dart';
import 'sticker_state.dart';

class StickerBloc extends Bloc<StickerEvent, StickerState> {
  StickerBloc() : super(StickerState.initial()) {
    on<CategorySelected>(_onCategorySelected);
    on<QuantityIncreased>(_onQuantityIncreased);
    on<QuantityDecreased>(_onQuantityDecreased);
    on<CartItemAdded>(_onCartItemAdded);
    on<CartItemRemoved>(_onCartItemRemoved);
    on<CartCheckedOut>(_onCartCheckedOut);
    on<FavoriteToggled>(_onFavoriteToggled);
  }

  void _onCategorySelected(CategorySelected event, Emitter<StickerState> emit) {
    final categories = state.categories.map((e) {
      return e.copyWith(isSelected: e.type == event.category.type);
    }).toList();
    emit(state.copyWith(categories: categories));
  }

  void _onQuantityIncreased(QuantityIncreased event, Emitter<StickerState> emit) {
    final stickers = state.stickers.map((e) {
      if (e.id == event.stickerId) {
        return e.copyWith(quantity: e.quantity + 1);
      }
      return e;
    }).toList();
    emit(state.copyWith(stickers: stickers));
  }

  void _onQuantityDecreased(QuantityDecreased event, Emitter<StickerState> emit) {
    final stickers = state.stickers.map((e) {
      if (e.id == event.stickerId && e.quantity > 1) {
        return e.copyWith(quantity: e.quantity - 1);
      }
      return e;
    }).toList();
    emit(state.copyWith(stickers: stickers));
  }

  void _onCartItemAdded(CartItemAdded event, Emitter<StickerState> emit) {
    final stickers = state.stickers.map((e) {
      if (e.id == event.stickerId) {
        return e.copyWith(cart: true);
      }
      return e;
    }).toList();
    emit(state.copyWith(stickers: stickers));
  }

  void _onCartItemRemoved(CartItemRemoved event, Emitter<StickerState> emit) {
    final stickers = state.stickers.map((e) {
      if (e.id == event.stickerId) {
        return e.copyWith(cart: false, quantity: 1);
      }
      return e;
    }).toList();
    emit(state.copyWith(stickers: stickers));
  }

  void _onCartCheckedOut(CartCheckedOut event, Emitter<StickerState> emit) {
    final cartIds = state.cart.map((e) => e.id).toSet();
    final stickers = state.stickers.map((e) {
      if (cartIds.contains(e.id)) {
        return e.copyWith(cart: false, quantity: 1);
      }
      return e;
    }).toList();
    emit(state.copyWith(stickers: stickers));
  }

  void _onFavoriteToggled(FavoriteToggled event, Emitter<StickerState> emit) {
    final stickers = state.stickers.map((e) {
      if (e.id == event.stickerId) {
        return e.copyWith(favorite: !e.favorite);
      }
      return e;
    }).toList();
    emit(state.copyWith(stickers: stickers));
  }
}
