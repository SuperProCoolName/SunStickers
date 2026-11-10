import '../data/_data.dart';

abstract class StickerEvent {}

class CategorySelected extends StickerEvent {
  CategorySelected(this.category);

  final StickerCategory category;
}

class QuantityIncreased extends StickerEvent {
  QuantityIncreased(this.stickerId);

  final int stickerId;
}

class QuantityDecreased extends StickerEvent {
  QuantityDecreased(this.stickerId);

  final int stickerId;
}

class CartItemAdded extends StickerEvent {
  CartItemAdded(this.stickerId);

  final int stickerId;
}

class CartItemRemoved extends StickerEvent {
  CartItemRemoved(this.stickerId);

  final int stickerId;
}

class CartCheckedOut extends StickerEvent {}

class FavoriteToggled extends StickerEvent {
  FavoriteToggled(this.stickerId);

  final int stickerId;
}

class ThemeToggled extends StickerEvent {}
