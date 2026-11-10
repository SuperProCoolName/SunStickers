import 'package:mobx/mobx.dart';

import '_models.dart';

part 'sticker_category.g.dart';

class StickerCategory = _StickerCategory with _$StickerCategory;

abstract class _StickerCategory with Store {
  final StickerType type;
  @observable
  bool isSelected;

  _StickerCategory({required this.type, required this.isSelected});
}
