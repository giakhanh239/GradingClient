
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grading_client/route/app_route.dart';

import 'student_controller.dart';

class StudentScreen extends StatefulWidget {
  const StudentScreen({Key? key}) : super(key: key);

  @override
  State<StudentScreen> createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
  final controller = Get.put(StudentController());
  final textController = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Your student ID ?"),
            const SizedBox(height: 30,),
            Container(
              width: 200,
              child:  TextField(
                controller: textController,
                keyboardType: TextInputType.number,
              ),
            ),
            const SizedBox(height: 30,),
            Container(
              width: 400,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MaterialButton(
                      onPressed: () {
                        if(textController.text.isNotEmpty) {
                          controller.isStudentQualify(
                              int.parse(textController.text),0);
                        }
                      },
                      child: const Text(
                        "Essay",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.red),
                  SizedBox(
                    width: 20,
                  ),
                  MaterialButton(
                    onPressed: () {
                      if(textController.text.isNotEmpty) {
                        controller.isStudentQualify(
                            int.parse(textController.text),1);

                      }
                    },
                    child: const Text(
                      "Multiple Choice",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.red,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
