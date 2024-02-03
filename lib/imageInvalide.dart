import 'package:flutter/material.dart';
class ImageInvalide extends StatelessWidget {
  const ImageInvalide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
    );();
  }
}
