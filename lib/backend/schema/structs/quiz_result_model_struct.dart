// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuizResultModelStruct extends BaseStruct {
  QuizResultModelStruct({
    ResultsStruct? results,
  }) : _results = results;

  // "results" field.
  ResultsStruct? _results;
  ResultsStruct get results => _results ?? ResultsStruct();
  set results(ResultsStruct? val) => _results = val;

  void updateResults(Function(ResultsStruct) updateFn) {
    updateFn(_results ??= ResultsStruct());
  }

  bool hasResults() => _results != null;

  static QuizResultModelStruct fromMap(Map<String, dynamic> data) =>
      QuizResultModelStruct(
        results: ResultsStruct.maybeFromMap(data['results']),
      );

  static QuizResultModelStruct? maybeFromMap(dynamic data) => data is Map
      ? QuizResultModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'results': _results?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'results': serializeParam(
          _results,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static QuizResultModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      QuizResultModelStruct(
        results: deserializeStructParam(
          data['results'],
          ParamType.DataStruct,
          false,
          structBuilder: ResultsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'QuizResultModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is QuizResultModelStruct && results == other.results;
  }

  @override
  int get hashCode => const ListEquality().hash([results]);
}

QuizResultModelStruct createQuizResultModelStruct({
  ResultsStruct? results,
}) =>
    QuizResultModelStruct(
      results: results ?? ResultsStruct(),
    );
