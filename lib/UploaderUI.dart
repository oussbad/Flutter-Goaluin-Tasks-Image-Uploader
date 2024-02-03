import 'package:file_picker/src/platform_file.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_uploader/UploaderControler.dart';
import 'package:image_uploader/imageInvalide.dart';
import 'Image_Uploader_Imp.dart';
class UploaderUI extends GetView<UploaderController> {

  const UploaderUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UploaderController uploaderController = Get.put(UploaderController());
    return Scaffold(
        appBar: AppBar(),
      body: Column(
        children: [
          OutlinedButton(onPressed: ()=>{controller.imageValidator(ImgUploader().getImage() )}, child: Text("upload photo")),
          Obx(() => controller.imgStatus.value==Status.inital?Visibility(visible: false,child: Text("")):ImageInvalide() )

        ],
      ),
    );
  }
}
/*Widget _SizeInvalide(BuildContext context ) {

  return  Center(
    child: Builder(
     key:const ValueKey<String>('SizeInvalideKey'),
      builder: (BuildContext context1) =>  AlertDialog(
        title:  Text('Basic dialog title'),
        content: Text(
          'A dialog is a type of modal window that\n'
              'appears in front of app content to\n'
              'provide critical information, or prompt\n'
              'for a decision to be made.',
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: const Text('Disable'),
            onPressed:()=>{Navigator.of(context1).pop()},
          ),
        ],
      )
    ),
  );

}*/
/*Widget _SizeInvalide2(BuildContext context ) {

      return  Builder(
        builder: (BuildContext context1) {
          return AlertDialog(
            title:  Text('Basic dialog title'),
            content: Text(
              'A dialog is a type of modal window that\n'
                  'appears in front of app content to\n'
                  'provide critical information, or prompt\n'
                  'for a decision to be made.',
            ),
            actions: <Widget>[
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: Theme.of(context).textTheme.labelLarge,
                ),
                child: const Text('Disable'),
                onPressed:()=>{Navigator.of(context1).pop()},
              ),
            ],
          );
        }
      );

}*/
