import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PickImageGallery extends StatefulWidget {
  const PickImageGallery({Key? key}) : super(key: key);

  @override
  State<PickImageGallery> createState() => _PickImageGalleryState();
}

class _PickImageGalleryState extends State<PickImageGallery> {
  File? image;
  String imagePath = '';

  XFile? pickImage;
  final picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Text("Image Picker"),
        actions: [
          if (image != null) Image.file(image!),
          IconButton(
            onPressed: () async {
              final XFile? image = await picker.pickImage(source: ImageSource.gallery);
              setState(() {
                imagePath = image!.path;
              });
              // pickImage = await picker.pickImage(source: ImageSource.gallery);
              // debugPrint("Pick image ${pickImage!.path}");
              // debugPrint("Pick image name ${pickImage!.name}");
              // image = File(pickImage!.path);

              setState(() {});
            },
            icon: const Icon(Icons.photo),
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 500,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  image: FileImage(
                    File(imagePath),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
