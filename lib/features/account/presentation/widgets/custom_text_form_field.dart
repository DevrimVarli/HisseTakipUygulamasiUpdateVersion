import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.labelText,
    required this.validator,
    this.obsecureIsActive,
  });

  final TextEditingController controller;
  final String labelText;
  final String? Function(String?) validator;
  final bool? obsecureIsActive;

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return TextFormField(
      controller: controller,
      validator: validator,
      cursorColor: colorScheme.primary,
      obscureText: obsecureIsActive ?? false,
      style: TextStyle(color: colorScheme.onSurface),
      decoration: InputDecoration(
        labelText: labelText,
        // Modern dolgu stili
        filled: true,
        fillColor: colorScheme.surfaceContainerHighest.withValues(alpha: 0.35),
        // İç boşluklar (daha rahat dokunma hedefi)
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        // Kenarlıklar (yumuşak, tutarlı)
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: colorScheme.outlineVariant),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: colorScheme.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: colorScheme.error),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: colorScheme.error, width: 2),
        ),
      ),
    );
  }
}
