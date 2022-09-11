import 'package:flutter/material.dart';

class Tiltle extends StatelessWidget {
  const Tiltle({
    Key? key,
    required this.titleOfTextField,
  }) : super(key: key);
  final String titleOfTextField;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 8),
      child: Text(
        titleOfTextField,
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
      ),
    );
  }
}