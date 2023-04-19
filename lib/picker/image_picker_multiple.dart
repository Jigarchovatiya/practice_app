import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MultipleImagePicker extends StatefulWidget {
  const MultipleImagePicker({Key? key}) : super(key: key);

  @override
  State<MultipleImagePicker> createState() => _MultipleImagePickerState();
}

class _MultipleImagePickerState extends State<MultipleImagePicker> {
  final ImagePicker imagePicker = ImagePicker();
  List<XFile>? imageFileList = [];

  void selectImages() async {
    final List<XFile>? selectedImages = await imagePicker.pickMultiImage();
    if (selectedImages!.isNotEmpty) {
      imageFileList!.addAll(selectedImages);
    }
    print("Image List Length:" + imageFileList!.length.toString());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Text("Image Picker"),
      ),
      body: Column(
        children: [
          Center(
            child: SizedBox(
              height: 500,
              child: GridView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Image.file(
                    File(imageFileList![index].path),
                    fit: BoxFit.cover,
                  );
                },
                itemCount: imageFileList!.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              selectImages();
            },
            icon: Icon(Icons.photo_library_outlined, size: 50),
          ),
        ],
      ),
    ));
  }
}
