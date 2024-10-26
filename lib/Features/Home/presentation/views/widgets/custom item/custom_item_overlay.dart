import 'package:flutter/material.dart';

class CustomItemOverlay extends StatelessWidget {
  const CustomItemOverlay({super.key, this.desc});

  final String? desc;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.all(32),
      width: 130,
      height: 175,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          12,
        ),
        color: Colors.black.withOpacity(
          .5,
        ),
      ),
      child: Text(
        textAlign: TextAlign.center,
        desc ?? '',
      ),
    );
  }
}
