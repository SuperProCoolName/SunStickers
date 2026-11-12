import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/_data.dart';
import 'sticker_state.dart';

final stickerProvider = NotifierProvider<StickerNotifier, StickerState>(
  StickerNotifier.new,
);

class StickerNotifier extends Notifier<StickerState> {
  @override
  StickerState build() => StickerState.initial();

  void onCategoryTap(StickerCategory category) {
    final categories = state.categories.map((e) {
      return e.copyWith(isSelected: e.type == category.type);
    }).toList();
    state = state.copyWith(categories: categories);
  }
}
