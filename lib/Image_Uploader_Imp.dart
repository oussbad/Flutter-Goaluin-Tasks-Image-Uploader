import 'package:get/get.dart';
import 'package:file_picker/file_picker.dart';


class ImgUploader extends GetxService{
  static ImgUploader get to => Get.find();

  Future<PlatformFile?> getImage() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(allowedExtensions:['png', 'jpeg'],type: FileType.custom);

    if (result != null) {
      PlatformFile file = result.files.first;
      print(file.name.split('.').first);
      print(file.size);

      print(file.extension);
      return file;
    } else {
      return null;
    }
  }


}