import 'package:flutter/material.dart';

// base button class
base class BaseButton extends StatelessWidget {

  const BaseButton({
    required this.onPressed, required this.child, required this.backgroundColor, required this.textColor, super.key,
  });
  final VoidCallback? onPressed;
  final Widget child;
  final Color backgroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: textColor,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: child,
    );
  }
}

// primary color button class
final class PrimaryButton extends BaseButton {
  const PrimaryButton({
    required super.onPressed, required super.child, super.key,
  }) : super(
          backgroundColor: Colors.blue,
          textColor: Colors.white,
        );
}

// success color button class
final class SuccessButton extends BaseButton {
  const SuccessButton({
    required super.onPressed,
    required super.child,
    super.key,
  }) : super(
          backgroundColor: Colors.green,
          textColor: Colors.white,
        );
}

// danger color button class
final class DangerButton extends BaseButton {
  const DangerButton({
    required super.onPressed,
    required super.child,
    super.key,
  }) : super(
          backgroundColor: Colors.red,
          textColor: Colors.white,
        );
}