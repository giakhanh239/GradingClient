import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grading_client/screen/radio_widget.dart';
import 'package:grading_client/screen/student_mutiple_choice_controller.dart';

final listQuestion = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

enum Choice { A, B, C, D }

class StudentMultipleChoiceScreen extends StatefulWidget {
  const StudentMultipleChoiceScreen({Key? key}) : super(key: key);

  @override
  State<StudentMultipleChoiceScreen> createState() =>
      _StudentMultipleChoiceScreenState();
}

class _StudentMultipleChoiceScreenState
    extends State<StudentMultipleChoiceScreen> {
  final controller = Get.put(StudentMultipleChoiceController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red),
      body: Container(
        width: double.infinity,
        child: ListView(
          children: [
            RadioWidget(
              question: "A",
              contentA: "A",
              contentB: "B",
              contentC: "C",
              contentD: "D",
              valueCallBack: (Choice value){
                controller.choice1 = value;
              },
            ),RadioWidget(
              question: "A",
              contentA: "A",
              contentB: "B",
              contentC: "C",
              contentD: "D",
              valueCallBack: (Choice value){
                controller.choice2 = value;
              },
            ),RadioWidget(
              question: "A",
              contentA: "A",
              contentB: "B",
              contentC: "C",
              contentD: "D",
              valueCallBack: (Choice value){
                controller.choice3 = value;
              },
            ),RadioWidget(
              question: "A",
              contentA: "A",
              contentB: "B",
              contentC: "C",
              contentD: "D",
              valueCallBack: (Choice value){
                controller.choice4 = value;
              },
            ),RadioWidget(
              question: "A",
              contentA: "A",
              contentB: "B",
              contentC: "C",
              contentD: "D",
              valueCallBack: (Choice value){
                controller.choice5 = value;
              },
            ),RadioWidget(
              question: "A",
              contentA: "A",
              contentB: "B",
              contentC: "C",
              contentD: "D",
              valueCallBack: (Choice value){
                controller.choice6 = value;
              },
            ),RadioWidget(
              question: "A",
              contentA: "A",
              contentB: "B",
              contentC: "C",
              contentD: "D",
              valueCallBack: (Choice value){
                controller.choice7 = value;
              },
            ),RadioWidget(
              question: "A",
              contentA: "A",
              contentB: "B",
              contentC: "C",
              contentD: "D",
              valueCallBack: (Choice value){
                controller.choice8 = value;
              },
            ),RadioWidget(
              question: "A",
              contentA: "A",
              contentB: "B",
              contentC: "C",
              contentD: "D",
              valueCallBack: (Choice value){
                controller.choice9 = value;
              },
            ),RadioWidget(
              question: "A",
              contentA: "A",
              contentB: "B",
              contentC: "C",
              contentD: "D",
              valueCallBack: (Choice value){
                controller.choice10 = value;
              },
            ),
            SizedBox(height: 30),
            MaterialButton(
              onPressed: () {
                controller.submit();
              },
              child: const Text(
                "Submit",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
