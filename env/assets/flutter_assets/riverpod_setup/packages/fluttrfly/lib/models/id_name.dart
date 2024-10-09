// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'id_name.freezed.dart';
part 'id_name.g.dart';

/// Represents a [ADPreference](http://wiki.openbravo.com/wiki/Preference) in openbravo.
///
/// We are only interested in value of the preference, hence only single field in the model class.
@freezed
class IdName with _$IdName {
  factory IdName({
    required String id,
    @JsonKey(defaultValue: '') required String name,
  }) = _IdName;

  factory IdName.fromJson(Map<String, dynamic> json) =>
      _$IdNameFromJson(json);
}
