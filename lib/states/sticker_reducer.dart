import 'sticker_actions.dart';
import 'sticker_state.dart';

StickerState stickerReducer(StickerState state, dynamic action) {
  if (action is CategorySelected) {
    final categories = state.categories.map((e) {
      return e.copyWith(isSelected: e.type == action.category.type);
    }).toList();
    return state.copyWith(categories: categories);
  }

  return state;
}
