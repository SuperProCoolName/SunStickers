import 'package:flutter_bloc/flutter_bloc.dart';

import 'sticker_event.dart';
import 'sticker_state.dart';

class StickerBloc extends Bloc<StickerEvent, StickerState> {
  StickerBloc() : super(StickerState.initial()) {
    on<CategorySelected>(_onCategorySelected);
  }

  void _onCategorySelected(CategorySelected event, Emitter<StickerState> emit) {
    final categories = state.categories.map((e) {
      return e.copyWith(isSelected: e.type == event.category.type);
    }).toList();
    emit(state.copyWith(categories: categories));
  }
}
