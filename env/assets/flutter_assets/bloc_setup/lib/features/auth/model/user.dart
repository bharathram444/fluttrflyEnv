// ignore_for_file: invalid_annotation_target

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';
@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: 'sid') required String sid,
    @JsonKey(name: 'api_key') required String apiKey,
    @JsonKey(name: 'api_secret') required String apiSecret,
    @JsonKey(name: 'emp_id') required String empId,
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'full_name', defaultValue: '') String? fullName,
    @JsonKey() String? email,
  }) = _User;


  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);
}
class UserState extends ChangeNotifier {
  ValueNotifier<User> get userDetails => _userDetails;
  late ValueNotifier<User> _userDetails;

  void setUser(User details) {
    _userDetails = ValueNotifier(details);
    notifyListeners();
  }
}

