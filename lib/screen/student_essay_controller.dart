import 'package:get/get.dart';
import 'package:grading_client/service/api_service.dart';
import 'package:grading_client/service/handle_exception.dart';

class StudentEssayController extends GetxController {
  void uploadFile() async {
    try {
      // FormData formData = new FormData({
      //   "file" : "",
      //   "type":"tl",
      //   "student_id":"1",
      // });

      final data = {
        "file": "",
        "type": "",
        "student_id": "1",
      };
      await ApiService().post("/asignment/upload/db", data: data);
    } catch (e) {
      handleException(e);
    }
    // var stream = new http.ByteStream(DelegatingStream.typed(imageFile.openRead()));
    // var length = await imageFile.length();
    //
    // var uri = Uri.parse(uploadURL);
    //
    // var request = new http.MultipartRequest("POST", uri);
    // var multipartFile = new http.MultipartFile('file', stream, length,
    //     filename: basename(imageFile.path));
    // //contentType: new MediaType('image', 'png'));
    //
    // request.files.add(multipartFile);
    // var response = await request.send();
    // print(response.statusCode);
    // response.stream.transform(utf8.decoder).listen((value) {
    //   print(value);
    // });
  }
}
