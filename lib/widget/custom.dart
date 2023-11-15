import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key, required this.iconData, required this.text});
  final IconData iconData;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          iconData,
          size: 35,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 18),
        )
      ],
    );
  }
}
