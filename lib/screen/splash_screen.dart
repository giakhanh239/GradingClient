import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grading_client/route/app_route.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("You are ?"),
          SizedBox(height: 30,),
          Container(
            width: 400,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MaterialButton(
                    onPressed: () {
                      Get.toNamed(RouteName.teacher);
                    },
                    child: const Text(
                      "Teacher",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.red),
                SizedBox(
                  width: 20,
                ),
                MaterialButton(
                  onPressed: () {
                    Get.toNamed(RouteName.student);
                  },
                  child: const Text(
                    "Student",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.red,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void onTap() {}
}
