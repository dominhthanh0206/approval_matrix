
import 'package:approval_matrix/models/model_approval.dart';
import 'package:approval_matrix/widgets/create_matrix_approval_widgets/title_textfield.dart';
import 'package:approval_matrix/widgets/feature_of_application.dart/add_approval_matrix.dart';
import 'package:approval_matrix/widgets/feature_of_application.dart/remove_input_text.dart';
import 'package:approval_matrix/widgets/hompage_widgets/input_number_alias.dart';
import 'package:approval_matrix/widgets/hompage_widgets/input_number_range.dart';
import 'package:flutter/material.dart';

class CreateNewApprovalMatrix extends StatefulWidget {
  const CreateNewApprovalMatrix({super.key});

  @override
  State<CreateNewApprovalMatrix> createState() =>
      _CreateNewApprovalMatrixState();
}

List<ModelApproval> listMatrix = [];
Map<ModelApproval, int> mapMatrix = {};

class _CreateNewApprovalMatrixState extends State<CreateNewApprovalMatrix> {
  List<String> listitems = [
    "Feature 1",
    "Feature 2",
    "Feature 3",
    "Feature 4",
    "Feature 5",
    "Feature 6"
  ];
  String selectval = "Feature 1";
  @override
  Widget build(BuildContext context) {
    var matrixName = TextEditingController();
    var minimumNumber = TextEditingController();
    var maximumNumber = TextEditingController();
    var numberApproval = TextEditingController();
    ModelApproval model =
        ModelApproval(name: '', maxRange: 0, minRange: 0, numberApproval: 0);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(237, 139, 0, 1),
        leading: IconButton(
          icon: const Icon(Icons.arrow_circle_left_sharp),
          onPressed: (() => Navigator.pop(context)),
        ),
        title: const Text("Approval Matrix"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Create New Approval Matrix",
                  style: TextStyle(
                      color: Color.fromRGBO(237, 139, 0, 1),
                      fontSize: 22,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
            const Divider(),
            const Tiltle(titleOfTextField: 'Approval Matrix Alias'),
            InputNumberAndAlias(
              hint: 'Input Matrix Name',
              controller: matrixName,
            ),
            const Tiltle(titleOfTextField: "Feature"),
            Container(
                height: 48,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromRGBO(209, 210, 212, 1)),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      value: selectval,
                      onChanged: (value) {
                        setState(() {
                          selectval = value.toString();
                        });
                      },
                      items: listitems.map((itemone) {
                        return DropdownMenuItem(
                            value: itemone, child: Text(itemone));
                      }).toList(),
                    ),
                  ),
                )),
            const Tiltle(titleOfTextField: "Range of Approval (Minimum)"),
            InputRange(
              controller: minimumNumber,
            ),
            const Tiltle(titleOfTextField: 'Range of Approval (Maximum)'),
            InputRange(
              controller: maximumNumber,
            ),
            const Tiltle(titleOfTextField: "Number of Approval"),
            InputNumberAndAlias(
                hint: "Input Number", controller: numberApproval),
            AddMatrixApprovalToList(model: model, matrixName: matrixName, minimumNumber: minimumNumber, maximumNumber: maximumNumber, numberApproval: numberApproval),
            ClearTextInTextField(matrixName: matrixName, minimumNumber: minimumNumber, maximumNumber: maximumNumber, numberApproval: numberApproval),
          ]),
        ),
      ),
    );
  }
}



