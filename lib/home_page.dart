import 'package:approval_matrix/create_matrix_screen.dart';
import 'package:approval_matrix/widgets/hompage_widgets/list_approval.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(children: [
      Positioned(
        top: 0,
        left: 0,
        right: 0,
        height: screenHeight / 8,
        child: Container(
            color: const Color.fromRGBO(237, 139, 0, 1),
            child: const Center(
              child: Text(
                "Approval Matrix",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            )),
      ),
      Positioned(
        top: screenHeight * 0.1,
        left: 0,
        right: 0,
        height: screenHeight,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.only(top: 24, right: 30, left: 30),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const CreateNewApprovalMatrix())),
                    child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 30,
                          width: 163,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(23, 28, 143, 1),
                              borderRadius: BorderRadius.circular(8)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.add_circle_sharp,
                                  size: 20,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "Tambah New Matrix",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          ),
                        )),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Divider(),
                  ),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Default"),
                          Row(
                            children: const [
                              VerticalDivider(color: Colors.black),
                              Text("Default"),
                            ],
                          ),
                          const Icon(Icons.keyboard_arrow_down)
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromRGBO(237, 139, 0, 1)),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Transfer Online",
                            style:
                                TextStyle(color: Color.fromRGBO(237, 139, 0, 1)),
                          ),
                          Row(
                            children: const [
                              VerticalDivider(
                                  color: Color.fromRGBO(237, 139, 0, 1)),
                              Text(
                                "Transfer Online",
                                style: TextStyle(
                                    color: Color.fromRGBO(237, 139, 0, 1)),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.keyboard_arrow_up_outlined,
                            color: Color.fromRGBO(237, 139, 0, 1),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const ListApprovalAdded()
                ],
              ),
            ),
          ),
        ),
      ),
    ]));
  }
}
