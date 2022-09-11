import 'package:approval_matrix/create_matrix_screen.dart';
import 'package:approval_matrix/home_page.dart';
import 'package:approval_matrix/models/model_approval.dart';
import 'package:flutter/material.dart';

class AddMatrixApprovalToList extends StatelessWidget {
  const AddMatrixApprovalToList({
    Key? key,
    required this.model,
    required this.matrixName,
    required this.minimumNumber,
    required this.maximumNumber,
    required this.numberApproval,
  }) : super(key: key);

  final ModelApproval model;
  final TextEditingController matrixName;
  final TextEditingController minimumNumber;
  final TextEditingController maximumNumber;
  final TextEditingController numberApproval;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 64.0, bottom: 10),
      child: SizedBox(
        height: 56,
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          onPressed: () {
            model.name = matrixName.text;
            model.minRange = int.parse(minimumNumber.text);
            model.maxRange = int.parse(maximumNumber.text);
            model.numberApproval = int.parse(numberApproval.text);
            listMatrix.add(model);
            if (listMatrix.isNotEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text("Added To The List"),
              ));
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
            }
          },
          style: ElevatedButton.styleFrom(
              elevation: 0.0,
              backgroundColor: const Color.fromRGBO(23, 28, 143, 1),
              padding: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16))),
          child: const Text("ADD TO LIST"),
        ),
      ),
    );
  }
}
