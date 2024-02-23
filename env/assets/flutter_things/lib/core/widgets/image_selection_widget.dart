import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageSelectionWidget extends StatefulWidget {
  const ImageSelectionWidget({
    required this.onImage,
    this.height = 150,
    this.width = 150,
    Key? key,
  }) : super(key: key);

  final Function(File? file) onImage;
  final double height;
  final double width;

  @override
  State<ImageSelectionWidget> createState() => _ImageSelectionWidgetState();
}

class _ImageSelectionWidgetState extends State<ImageSelectionWidget> {
  File? _selectedImage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: _selectFile,
          child: Container(
            height: widget.height,
            width: double.maxFinite,
            decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
            child: _selectedImage == null
                ? const Center(child: Icon(Icons.upload_sharp))
                : Image.file(_selectedImage!, fit: BoxFit.cover),
          ),
        ),
        if (_selectedImage != null)
          Positioned(
            right: 6,
            top: 6,
            child: CircleAvatar(
              backgroundColor: Colors.black54,
              child: IconButton(
                onPressed: () {
                  setState(() {
                    _selectedImage = null;
                    widget.onImage(null);
                  });
                },
                icon: const Icon(Icons.clear, color: Colors.white),
              ),
            ),
          ),
      ],
    );
  }

  Future<void> _selectFile() async {
    final file = await ImagePicker().pickImage(source: ImageSource.camera);

    if (file != null) {
      _selectedImage = File(file.path);

      if (_selectedImage == null) {
        return;
      }
      widget.onImage(_selectedImage);
      setState(() {});
    }
  }
}
