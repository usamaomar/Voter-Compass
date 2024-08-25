// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GenderStruct extends BaseStruct {
  GenderStruct({
    String? key,
    String? en,
    String? ar,
  })  : _key = key,
        _en = en,
        _ar = ar;

  // "key" field.
  String? _key;
  String get key => _key ?? '';
  set key(String? val) => _key = val;

  bool hasKey() => _key != null;

  // "en" field.
  String? _en;
  String get en => _en ?? '';
  set en(String? val) => _en = val;

  bool hasEn() => _en != null;

  // "ar" field.
  String? _ar;
  String get ar => _ar ?? '';
  set ar(String? val) => _ar = val;

  bool hasAr() => _ar != null;

  static GenderStruct fromMap(Map<String, dynamic> data) => GenderStruct(
        key: data['key'] as String?,
        en: data['en'] as String?,
        ar: data['ar'] as String?,
      );

  static GenderStruct? maybeFromMap(dynamic data) =>
      data is Map ? GenderStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'key': _key,
        'en': _en,
        'ar': _ar,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'key': serializeParam(
          _key,
          ParamType.String,
        ),
        'en': serializeParam(
          _en,
          ParamType.String,
        ),
        'ar': serializeParam(
          _ar,
          ParamType.String,
        ),
      }.withoutNulls;

  static GenderStruct fromSerializableMap(Map<String, dynamic> data) =>
      GenderStruct(
        key: deserializeParam(
          data['key'],
          ParamType.String,
          false,
        ),
        en: deserializeParam(
          data['en'],
          ParamType.String,
          false,
        ),
        ar: deserializeParam(
          data['ar'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'GenderStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GenderStruct &&
        key == other.key &&
        en == other.en &&
        ar == other.ar;
  }

  @override
  int get hashCode => const ListEquality().hash([key, en, ar]);
}

GenderStruct createGenderStruct({
  String? key,
  String? en,
  String? ar,
}) =>
    GenderStruct(
      key: key,
      en: en,
      ar: ar,
    );
