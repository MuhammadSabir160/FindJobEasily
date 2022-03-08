import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:open_file/open_file.dart';

class recommend extends StatefulWidget {
  const recommend({Key? key}) : super(key: key);

  @override
  _recommendState createState() => _recommendState();
}

class _recommendState extends State<recommend> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/login.png'), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("Pick File"))
              ],
            ),
          ),
        ));
  }
}

void pickFiles() async {
  FilePickerResult? result = await FilePicker.platform.pickFiles();
  if (result == null) return;
  PlatformFile? file = result.files.first;
}
