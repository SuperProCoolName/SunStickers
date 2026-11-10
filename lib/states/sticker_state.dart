import 'package:equatable/equatable.dart';

import '../data/_data.dart';

class StickerState extends Equatable {
  const StickerState({
    required this.categories,
    required this.stickers,
    this.light = true,
  });

  final List<StickerCategory> categories;
  final List<Sticker> stickers;
  final bool light;

  factory StickerState.initial() {
    return StickerState(categories: AppData.categories, stickers: AppData.stickers);
  }

  StickerState copyWith({
    List<StickerCategory>? categories,
    List<Sticker>? stickers,
    bool? light,
  }) {
    return StickerState(
      categories: categories ?? this.categories,
      stickers: stickers ?? this.stickers,
      light: light ?? this.light,
    );
  }

  List<Sticker> get stickersByCategory {
    final type = categories.firstWhere((e) => e.isSelected).type;
    if (type == StickerType.all) return stickers;
    return stickers.where((e) => e.type == type).toList();
  }

  List<Sticker> get cart => stickers.where((e) => e.cart).toList();
  List<Sticker> get favorite => stickers.where((e) => e.favorite).toList();

  Sticker getStickerById(int stickerId) {
    return stickers.firstWhere((e) => e.id == stickerId);
  }

  String stickerPrice(Sticker sticker) {
    return (sticker.quantity * sticker.price).toString();
  }

  double get subtotal {
    double amount = 0.0;
    for (var e in cart) {
      amount = amount + e.price * e.quantity;
    }
    return amount;
  }

  @override
  List<Object?> get props => [categories, stickers, light];
}
