import 'package:flutter/material.dart';

class CustomSvgBarItem extends StatelessWidget {
  const CustomSvgBarItem({
    super.key,
    this.selected = false,
    required this.assetName,
  });
  final bool selected;
  final String assetName;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      width: 24,
      child: Icon(
        Icons.image, // Placeholder for the actual SVG icon
        color: selected ? Colors.red : Colors.grey,
      ),
    );
  }
}
