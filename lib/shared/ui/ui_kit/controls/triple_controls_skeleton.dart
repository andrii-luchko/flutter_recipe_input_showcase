import 'package:flutter/material.dart';

class TripleControlsSkeleton extends StatelessWidget {
  const TripleControlsSkeleton({
    required this.isExpanded,
    required this.mainButton,
    required this.leftButton,
    required this.rightButton,
    super.key,
  });
  final bool isExpanded;
  final Widget mainButton;
  final Widget leftButton;
  final Widget rightButton;
  @override
  Widget build(BuildContext context) => SizedBox(
    height: 92,
    child: Stack(
      alignment: Alignment.center,
      children: [
        AnimatedAlign(
          alignment: isExpanded ? const Alignment(-.85, 0) : Alignment.center,
          duration: Durations.medium2,
          curve: Curves.easeInOutBack,
          child: leftButton,
        ),
        AnimatedAlign(
          alignment: isExpanded ? const Alignment(.85, 0) : Alignment.center,
          duration: Durations.medium2,
          curve: Curves.easeInOutBack,
          child: rightButton,
        ),
        mainButton,
      ],
    ),
  );
}

class CircularControlButton extends StatelessWidget {
  const CircularControlButton({
    required this.icon,
    required this.color,
    this.foregroundColor = Colors.white,
    this.onPressed,
    super.key,
  });
  final IconData icon;
  final Color color;
  final Color foregroundColor;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) => IconButton.filled(
    onPressed: onPressed,
    style: IconButton.styleFrom(
      backgroundColor: color,
      foregroundColor: foregroundColor,
      minimumSize: const Size(58, 58),
    ),
    icon: Icon(icon),
  );
}
