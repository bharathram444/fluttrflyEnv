import 'package:flutter/material.dart';

import 'app/app.dart';
import 'bootstrap.dart';
/// Read and complete this steps before running app
/// Step 1 : Convert every relative import to package import...
/// Step 2 : Add real [Urls] at lib/core/consts/urls.dart in [Urls.uat] and [Urls.local] factory's
/// Step 3 : Add geoLocation permissions to your platforms ex: [android,ios]
/// --------> IN [android] at android/app/src/main/AndroidManifest.xml 
///           below <manifest xmlns:android="http://schemas.android.com/apk/res/android"> line
///     <uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />
///     <uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />
/// --------> IN [ios] at ios/Runner/Info.plist file in between <dict>here</dict>
///           || below 		<key>UIApplicationSupportsIndirectInputEvents</key> <true /> this lines
/// 		<key>NSLocationWhenInUseUsageDescription</key>
///	    <string>This app needs access to location when open.</string>
///	    <key>NSLocationAlwaysUsageDescription</key>
///	    <string>This app needs access to location when in the background.</string>

Future<void> main() async => bootstrap(() => runApp(const App()));

  // 1 - we have to change ios/Runner/Info.plist and android/app/src/main/AndroidManifest.xml
  // why because of address_field
  // 2 - we have to edit or replace LocalKeys class lib/core/local_storage/local_keys.dart
  // 3 - we have to use this command at user app and in fluttrfly package 
  // command :  flutter clean && flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs