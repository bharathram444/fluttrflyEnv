import 'package:flutter/material.dart';

import 'app/app.dart';
import 'bootstrap.dart';
/// Read and complete this steps before running app
/// Step 1 : Convert every relative import to package import...
/// Step 2 : Add real [Urls] at lib/core/consts/urls.dart in [Urls.uat] and [Urls.local] factory's

Future<void> main() async => bootstrap(() => runApp(const App()));
