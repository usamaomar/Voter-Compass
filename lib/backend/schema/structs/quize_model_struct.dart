// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuizeModelStruct extends BaseStruct {
  QuizeModelStruct({
    List<QuestionsStruct>? questions,
  }) : _questions = questions;

  // "questions" field.
  List<QuestionsStruct>? _questions;
  List<QuestionsStruct> get questions => _questions ?? const [];
  set questions(List<QuestionsStruct>? val) => _questions = val;

  void updateQuestions(Function(List<QuestionsStruct>) updateFn) {
    updateFn(_questions ??= []);
  }

  bool hasQuestions() => _questions != null;

  static QuizeModelStruct fromMap(Map<String, dynamic> data) =>
      QuizeModelStruct(
        questions: getStructList(
          data['questions'],
          QuestionsStruct.fromMap,
        ),
      );

  static QuizeModelStruct? maybeFromMap(dynamic data) => data is Map
      ? QuizeModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'questions': _questions?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'questions': serializeParam(
          _questions,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static QuizeModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      QuizeModelStruct(
        questions: deserializeStructParam<QuestionsStruct>(
          data['questions'],
          ParamType.DataStruct,
          true,
          structBuilder: QuestionsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'QuizeModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is QuizeModelStruct &&
        listEquality.equals(questions, other.questions);
  }

  @override
  int get hashCode => const ListEquality().hash([questions]);
}

QuizeModelStruct createQuizeModelStruct() => QuizeModelStruct();
