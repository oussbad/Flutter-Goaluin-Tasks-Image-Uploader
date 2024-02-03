import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';

enum Status { inital, sizeInvalid, typeInvalid }

class UploaderController extends GetxController {
  static UploaderController get to => Get.find();

  Rx<Status?> imgStatus = Status.inital.obs;

  Future<void> imageValidator(Future<PlatformFile?> fileFuture) async {
    // You can use await to get the actual PlatformFile instance
    PlatformFile? file = await fileFuture;
    if (file == null) {
      imgStatus(Status.inital);
    } else if (extensionChecker(file.extension)) {
      imgStatus(Status.typeInvalid);
    } else if (sizeChecker(file.size)) {
      imgStatus(Status.sizeInvalid);
    }else{
      imgStatus(Status.inital);

    }
  }

  bool sizeChecker(int a) {
    if (a <= 5000000) {
      return true;
    } else {
      return false;
    }
  }

  bool extensionChecker(String? a) {
    if (a == "png" || a == "jpeg") {
      return true;
    } else {
      return false;
    }
  }
}
