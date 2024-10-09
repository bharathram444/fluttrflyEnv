import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttrfly/fluttrfly.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../styles/app_colors.dart';

class ImageSelectionWidget extends HookConsumerWidget
    with AttahcmentSelectionMixin {
  const ImageSelectionWidget({
    super.key,
    this.defaultVal,
    this.readOnly = false,
    this.isRequired = false,
    required this.onImage,
    required this.title,
    required this.placeholder,
    this.borderColor = Colors.blue,
    this.onView,
  });

  final String title;
  final bool readOnly;
  final bool isRequired;
  final Color borderColor;
  final String? defaultVal;
  final Function(File? file) onImage;
  final VoidCallback? onView;
  final Widget placeholder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedImage = useState<File?>(null);

    Widget isValidFile() {
      try {
        return Image.memory(base64Decode(defaultVal!));
      } on Exception catch (_) {
        return const SizedBox();
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CaptionText(title: title),
        SpacerX.p4(),
        Stack(
          children: [
            GestureDetector(
              onTap:
                  defaultVal.containsValidValue || selectedImage.value != null
                      ? onView
                      : readOnly
                          ? null
                          : () async {
                              final capturedFile = await captureImage();
                              if (capturedFile.isNull) return;
                              selectedImage.value = capturedFile;
                              onImage(capturedFile);
                            },
              child: Container(
                height: 100,
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                width: context.sizeOfWidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: appColors.sc.nero),
                  boxShadow: [
                    BoxShadow(
                      color: borderColor,
                      blurRadius: 2,
                      offset: const Offset(2, 2),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: defaultVal.containsValidValue
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: isValidFile(),
                      )
                    : selectedImage.value.isNull
                        ? placeholder
                        : ClipRRect(
                            borderRadius: BorderRadius.circular(16.0),
                            child: Image.file(selectedImage.value!,
                                fit: BoxFit.cover),
                          ),
              ),
            ),
            if (selectedImage.value != null ||
                defaultVal.containsValidValue) ...[
              Positioned(
                right: 6,
                top: 6,
                child: Row(
                  children: [
                    if (!readOnly) ...[
                      CircleAvatar(
                        backgroundColor: Colors.black54,
                        child: IconButton(
                          onPressed: () {
                            selectedImage.value = null;
                            onImage(null);
                          },
                          icon: const Icon(Icons.clear, color: Colors.white),
                        ),
                      ),
                      SpacerX.p4(),
                      CircleAvatar(
                        backgroundColor: Colors.black54,
                        child: IconButton(
                          onPressed: () async {
                            final capturedFile = await captureImage();
                            if (capturedFile.isNull) return;
                            selectedImage.value = capturedFile;
                            onImage(capturedFile);
                          },
                          icon: const Icon(Icons.add_a_photo_outlined,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ],
        ),
      ],
    );
  }
}
