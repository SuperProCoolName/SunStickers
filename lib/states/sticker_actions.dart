import '../data/_data.dart';

abstract class StickerAction {}

class CategorySelected extends StickerAction {
  CategorySelected(this.category);

  final StickerCategory category;
}
