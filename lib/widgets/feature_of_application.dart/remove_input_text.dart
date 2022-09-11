import 'package:flutter/material.dart';

class ClearTextInTextField extends StatelessWidget {
  const ClearTextInTextField({
    Key? key,
    required this.matrixName,
    required this.minimumNumber,
    required this.maximumNumber,
    required this.numberApproval,
  }) : super(key: key);

  final TextEditingController matrixName;
  final TextEditingController minimumNumber;
  final TextEditingController maximumNumber;
  final TextEditingController numberApproval;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        height: 56,
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          onPressed: () {
            matrixName.clear();
            minimumNumber.clear();
            maximumNumber.clear();
            numberApproval.clear();
          },
          style: ElevatedButton.styleFrom(
              elevation: 0.0,
              backgroundColor: const Color.fromRGBO(23, 28, 143, 1),
              padding: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16))),
          child: const Text("Reset"),
        ),
      ),
    );
  }
}
