import 'package:flutter/material.dart';

class InputNumberAndAlias extends StatelessWidget {
  const InputNumberAndAlias({
    Key? key,
    required this.hint,
    required this.controller,
  }) : super(key: key);
  final String hint;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          border: Border.all(color: const Color.fromRGBO(209, 210, 212, 1)),
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint,
              hintStyle: const TextStyle(
                  color: Color.fromRGBO(209, 210, 212, 1),
                  fontSize: 15,
                  fontWeight: FontWeight.w400)),
        ),
      ),
    );
  }
}