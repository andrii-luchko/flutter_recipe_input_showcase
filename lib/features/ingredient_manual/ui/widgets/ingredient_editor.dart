import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_recipe_input_showcase/features/ingredient_manual/controllers/manual_ingredients_cubit.dart';
import 'package:flutter_recipe_input_showcase/features/ingredient_manual/domain/entities/ingredient_draft.dart';
import 'package:flutter_recipe_input_showcase/features/ai_recipe/domain/enums/ingredient_unit.dart';

class IngredientEditor extends StatelessWidget {
  const IngredientEditor({super.key, required this.id, required this.draft});
  final int id;
  final IngredientDraft draft;
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ManualIngredientsCubit>();
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    initialValue: draft.name,
                    decoration: const InputDecoration(labelText: 'Ingredient'),
                    onChanged: (value) =>
                        cubit.updateIngredientDraft(id, name: value),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    initialValue: draft.quantityText,
                    decoration: const InputDecoration(labelText: 'Quantity'),
                    keyboardType: const TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                    onChanged: (value) =>
                        cubit.updateIngredientDraft(id, quantityText: value),
                  ),
                ),
                const SizedBox(width: 12),
                DropdownButton<IngredientUnit>(
                  value: draft.unit,
                  items: IngredientUnit.values
                      .map(
                        (unit) => DropdownMenuItem(
                          value: unit,
                          child: Text(unit.label),
                        ),
                      )
                      .toList(),
                  onChanged: (unit) {
                    if (unit != null) {
                      cubit.updateIngredientDraft(id, unit: unit);
                    }
                  },
                ),
                const SizedBox(width: 12),
                IconButton(
                  onPressed: () => cubit.removeIngredient(id),
                  icon: const Icon(Icons.delete_outline),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
