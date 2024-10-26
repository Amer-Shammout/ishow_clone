import 'package:flutter/material.dart';

class CustomItemState extends StatelessWidget {
  const CustomItemState({
    super.key,
    required this.itemState,
  });

  final String itemState;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      itemState,
      width: 40,
      height: 14,
    );
  }
}
