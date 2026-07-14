import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum()
enum IngredientUnit {
  @JsonValue(1)
  g(1),
  @JsonValue(2)
  kg(2),
  @JsonValue(3)
  ml(3),
  @JsonValue(4)
  l(4),
  @JsonValue(5)
  tsp(5),
  @JsonValue(6)
  tbsp(6),
  @JsonValue(7)
  cup(7),
  @JsonValue(8)
  pc(8),
  @JsonValue(9)
  clove(9),
  @JsonValue(10)
  leaf(10),
  @JsonValue(11)
  slice(11),
  @JsonValue(12)
  pinch(12),
  @JsonValue(13)
  toTaste(13);

  const IngredientUnit(this.id);
  final int id;

  static IngredientUnit fromId(int id) {
    return IngredientUnit.values.firstWhere(
      (u) => u.id == id,
      orElse: () => IngredientUnit.pc,
    );
  }
}

extension IngredientUnitX on IngredientUnit {
  String get label {
    return switch (this) {
      IngredientUnit.g => 'g',
      IngredientUnit.kg => 'kg',
      IngredientUnit.ml => 'ml',
      IngredientUnit.l => 'l',
      IngredientUnit.tsp => 'tsp',
      IngredientUnit.tbsp => 'tbsp',
      IngredientUnit.cup => 'cup',
      IngredientUnit.pc => 'pc',
      IngredientUnit.clove => 'clove',
      IngredientUnit.leaf => 'leaf',
      IngredientUnit.slice => 'slice',
      IngredientUnit.pinch => 'pinch',
      IngredientUnit.toTaste => 'to taste',
    };
  }
}
