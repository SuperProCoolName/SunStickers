import '../data/_data.dart';

abstract class StickerAction {}

class CategorySelected extends StickerAction {
  CategorySelected(this.category);

  final StickerCategory category;
}

class QuantityIncreased extends StickerAction {
  QuantityIncreased(this.stickerId);

  final int stickerId;
}

class QuantityDecreased extends StickerAction {
  QuantityDecreased(this.stickerId);

  final int stickerId;
}

class CartItemAdded extends StickerAction {
  CartItemAdded(this.stickerId);

  final int stickerId;
}

class CartItemRemoved extends StickerAction {
  CartItemRemoved(this.stickerId);

  final int stickerId;
}

class CartCheckedOut extends StickerAction {}
