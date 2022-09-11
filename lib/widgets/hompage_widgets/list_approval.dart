import 'package:approval_matrix/create_matrix_screen.dart';
import 'package:flutter/material.dart';

class ListApprovalAdded extends StatelessWidget {
  const ListApprovalAdded({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: ListView.separated(
        itemCount: listMatrix.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                border: Border.all(), borderRadius: BorderRadius.circular(16)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Rang Limite of Approval",
                        style: TextStyle(fontSize: 10),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                    Text('Minimum',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Color.fromRGBO(
                                                23, 28, 143, 1))),
                                    SizedBox(width: 8),
                                    Text('IDR',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color:
                                                Color.fromRGBO(23, 28, 143, 1)))
                                  ],
                                ),
                                Text(listMatrix[index].minRange.toString(),
                                    style: const TextStyle(
                                        fontSize: 10,
                                        color: Color.fromRGBO(23, 28, 143, 1),
                                        fontWeight: FontWeight.w700))
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            width: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                    Text('Maximum',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Color.fromRGBO(
                                                23, 28, 143, 1))),
                                    SizedBox(width: 5),
                                    Text('IDR',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Color.fromRGBO(
                                                23, 28, 143, 1))),
                                  ],
                                ),
                                Text(listMatrix[index].maxRange.toString(),
                                    style: const TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromRGBO(23, 28, 143, 1)))
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Number of Approval',
                          style: TextStyle(fontSize: 10)),
                      Text(listMatrix[index].numberApproval.toString(),
                          style: const TextStyle(
                              fontSize: 10,
                              color: Color.fromRGBO(23, 28, 143, 1)))
                    ],
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Approver', style: TextStyle(fontSize: 10)),
                      Text(listMatrix[index].name,
                          style: const TextStyle(
                              fontSize: 10,
                              color: Color.fromRGBO(23, 28, 143, 1)))
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(height: 10),
      ),
    );
  }
}
