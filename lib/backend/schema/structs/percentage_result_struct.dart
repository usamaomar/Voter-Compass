// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PercentageResultStruct extends BaseStruct {
  PercentageResultStruct({
    int? percentage,
    String? lableEn,
    String? lableAr,
  })  : _percentage = percentage,
        _lableEn = lableEn,
        _lableAr = lableAr;

  // "percentage" field.
  int? _percentage;
  int get percentage => _percentage ?? 0;
  set percentage(int? val) => _percentage = val;

  void incrementPercentage(int amount) => percentage = percentage + amount;

  bool hasPercentage() => _percentage != null;

  // "lable_en" field.
  String? _lableEn;
  String get lableEn => _lableEn ?? '';
  set lableEn(String? val) => _lableEn = val;

  bool hasLableEn() => _lableEn != null;

  // "lable_ar" field.
  String? _lableAr;
  String get lableAr => _lableAr ?? '';
  set lableAr(String? val) => _lableAr = val;

  bool hasLableAr() => _lableAr != null;

  static PercentageResultStruct fromMap(Map<String, dynamic> data) =>
      PercentageResultStruct(
        percentage: castToType<int>(data['percentage']),
        lableEn: data['lable_en'] as String?,
        lableAr: data['lable_ar'] as String?,
      );

  static PercentageResultStruct? maybeFromMap(dynamic data) => data is Map
      ? PercentageResultStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'percentage': _percentage,
        'lable_en': _lableEn,
        'lable_ar': _lableAr,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'percentage': serializeParam(
          _percentage,
          ParamType.int,
        ),
        'lable_en': serializeParam(
          _lableEn,
          ParamType.String,
        ),
        'lable_ar': serializeParam(
          _lableAr,
          ParamType.String,
        ),
      }.withoutNulls;

  static PercentageResultStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PercentageResultStruct(
        percentage: deserializeParam(
          data['percentage'],
          ParamType.int,
          false,
        ),
        lableEn: deserializeParam(
          data['lable_en'],
          ParamType.String,
          false,
        ),
        lableAr: deserializeParam(
          data['lable_ar'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PercentageResultStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PercentageResultStruct &&
        percentage == other.percentage &&
        lableEn == other.lableEn &&
        lableAr == other.lableAr;
  }

  @override
  int get hashCode => const ListEquality().hash([percentage, lableEn, lableAr]);
}

PercentageResultStruct createPercentageResultStruct({
  int? percentage,
  String? lableEn,
  String? lableAr,
}) =>
    PercentageResultStruct(
      percentage: percentage,
      lableEn: lableEn,
      lableAr: lableAr,
    );
