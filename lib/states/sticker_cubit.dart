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
}
