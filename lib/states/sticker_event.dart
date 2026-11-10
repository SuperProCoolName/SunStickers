import '../data/_data.dart';

abstract class StickerEvent {}

class CategorySelected extends StickerEvent {
  CategorySelected(this.category);

  final StickerCategory category;
}
