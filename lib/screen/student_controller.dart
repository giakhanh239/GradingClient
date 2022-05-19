import 'package:get/get.dart';
import 'package:grading_client/route/app_route.dart';
import 'package:grading_client/service/api_service.dart';
import 'package:grading_client/service/handle_exception.dart';

class StudentController extends GetxController{
  void isStudentQualify(int id) async{
    try{
      await ApiService().post("/student/studentQualify/$id");

      Get.toNamed(RouteName.studentEssay);

    }catch (e){
      handleException(e);
    }
  }
}