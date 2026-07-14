import 'package:flutter/material.dart';
import 'package:flutter_recipe_input_showcase/app/router/router.dart';
import 'package:flutter_recipe_input_showcase/features/ai_recipe/domain/enums/cooking_method.dart';

class AddIngredientMethodPage extends StatefulWidget {
  const AddIngredientMethodPage({super.key});

  @override
  State<AddIngredientMethodPage> createState() =>
      _AddIngredientMethodPageState();
}

class _AddIngredientMethodPageState extends State<AddIngredientMethodPage> {
  CookingMethod? _selectedMethod;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Recipe input')),
    body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'How would you like to add ingredients?',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            const Text(
              'Choose a method. You can always review and adjust the ingredients afterwards.',
            ),
            const SizedBox(height: 28),
            for (final method in CookingMethod.values) ...[
              Card(
                child: ListTile(
                  title: Text(method.label),
                  subtitle: Text(method.description),
                  trailing: Icon(
                    _selectedMethod == method
                        ? Icons.radio_button_checked
                        : Icons.radio_button_off,
                  ),
                  onTap: () => setState(() => _selectedMethod = method),
                ),
              ),
              const SizedBox(height: 12),
            ],
            const Spacer(),
            FilledButton(
              onPressed: _selectedMethod == null ? null : _continue,
              child: const Text('Continue'),
            ),
          ],
        ),
      ),
    ),
  );

  void _continue() {
    switch (_selectedMethod!) {
      case CookingMethod.camera:
        const CameraDetectionRoute().push(context);
      case CookingMethod.audio:
        const AudioInputRoute().push(context);
      case CookingMethod.manual:
        const ManualIngredientsRoute().push(context);
    }
  }
}
