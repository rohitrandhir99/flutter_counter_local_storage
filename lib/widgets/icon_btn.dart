import 'package:flutter/material.dart';

class IconBtn extends StatelessWidget {
  final Color backgroundColor;
  final Color foregroundColor;
  final IconData icon;
  final VoidCallback onTap;
  final Color borderColor;

  const IconBtn({
    super.key,
    required this.backgroundColor,
    this.foregroundColor = Colors.white,
    required this.icon,
    required this.onTap,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            width: 1,
            color: borderColor,
          ),
        ),
        child: Icon(icon, color: foregroundColor),
      ),
    );
  }
}
