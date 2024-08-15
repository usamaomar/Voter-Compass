// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AnswerModelStruct extends BaseStruct {
  AnswerModelStruct({
    int? id,
    String? answerAr,
    String? answerEn,
    bool? isSelected,
    int? selectedValue,
  })  : _id = id,
        _answerAr = answerAr,
        _answerEn = answerEn,
        _isSelected = isSelected,
        _selectedValue = selectedValue;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "answerAr" field.
  String? _answerAr;
  String get answerAr => _answerAr ?? '';
  set answerAr(String? val) => _answerAr = val;

  bool hasAnswerAr() => _answerAr != null;

  // "answerEn" field.
  String? _answerEn;
  String get answerEn => _answerEn ?? '';
  set answerEn(String? val) => _answerEn = val;

  bool hasAnswerEn() => _answerEn != null;

  // "isSelected" field.
  bool? _isSelected;
  bool get isSelected => _isSelected ?? false;
  set isSelected(bool? val) => _isSelected = val;

  bool hasIsSelected() => _isSelected != null;

  // "selectedValue" field.
  int? _selectedValue;
  int get selectedValue => _selectedValue ?? 0;
  set selectedValue(int? val) => _selectedValue = val;

  void incrementSelectedValue(int amount) =>
      selectedValue = selectedValue + amount;

  bool hasSelectedValue() => _selectedValue != null;

  static AnswerModelStruct fromMap(Map<String, dynamic> data) =>
      AnswerModelStruct(
        id: castToType<int>(data['id']),
        answerAr: data['answerAr'] as String?,
        answerEn: data['answerEn'] as String?,
        isSelected: data['isSelected'] as bool?,
        selectedValue: castToType<int>(data['selectedValue']),
      );

  static AnswerModelStruct? maybeFromMap(dynamic data) => data is Map
      ? AnswerModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'answerAr': _answerAr,
        'answerEn': _answerEn,
        'isSelected': _isSelected,
        'selectedValue': _selectedValue,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'answerAr': serializeParam(
          _answerAr,
          ParamType.String,
        ),
        'answerEn': serializeParam(
          _answerEn,
          ParamType.String,
        ),
        'isSelected': serializeParam(
          _isSelected,
          ParamType.bool,
        ),
        'selectedValue': serializeParam(
          _selectedValue,
          ParamType.int,
        ),
      }.withoutNulls;

  static AnswerModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      AnswerModelStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        answerAr: deserializeParam(
          data['answerAr'],
          ParamType.String,
          false,
        ),
        answerEn: deserializeParam(
          data['answerEn'],
          ParamType.String,
          false,
        ),
        isSelected: deserializeParam(
          data['isSelected'],
          ParamType.bool,
          false,
        ),
        selectedValue: deserializeParam(
          data['selectedValue'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'AnswerModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AnswerModelStruct &&
        id == other.id &&
        answerAr == other.answerAr &&
        answerEn == other.answerEn &&
        isSelected == other.isSelected &&
        selectedValue == other.selectedValue;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, answerAr, answerEn, isSelected, selectedValue]);
}

AnswerModelStruct createAnswerModelStruct({
  int? id,
  String? answerAr,
  String? answerEn,
  bool? isSelected,
  int? selectedValue,
}) =>
    AnswerModelStruct(
      id: id,
      answerAr: answerAr,
      answerEn: answerEn,
      isSelected: isSelected,
      selectedValue: selectedValue,
    );
