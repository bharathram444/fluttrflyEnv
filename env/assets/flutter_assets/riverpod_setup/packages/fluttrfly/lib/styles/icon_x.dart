import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconX {
  const IconX(this.path);

  final String path;

  Widget toWidget({
    double? width,
    double? height,
    Color? color,
    BoxFit fit = BoxFit.contain,
  }) {
    final fileExtension = extension(path);
    if (fileExtension == '.svg') {
      return SvgPicture.asset(path,
          width: width, height: height, color: color, fit: fit);
    }
    return Image.asset(path,
        width: width, height: height, color: color, fit: fit);
  }

  // Empty Data illustration
  static const emptySearch = IconX('assets/svg/empty_search.svg');
  static const info = IconX('assets/png/info.png');
  // This like we have to get urls from git and show to users || or we have to add this image in user assert
  static const exUrl = IconX('https://raw.githubusercontent.com/bharathram444/fluttrfly/refs/heads/main/image/dark.png');
}
