import 'package:mobx/mobx.dart';

part 'sticker.g.dart';

enum StickerType { all, toy, fauna, plant, berry, fruit, other }

class Sticker = _Sticker with _$Sticker;

abstract class _Sticker with Store {
  int id;
  String image;
  String name;
  double price;
  @observable
  int quantity;
  @observable
  bool favorite;
  String description;
  double score;
  StickerType type;
  int voter;
  @observable
  bool cart;

  _Sticker({
    required this.id,
    required this.image,
    required this.name,
    required this.price,
    required this.quantity,
    required this.favorite,
    required this.description,
    required this.score,
    required this.type,
    required this.voter,
    required this.cart,
  });
}
