// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QustionModelStruct extends BaseStruct {
  QustionModelStruct({
    int? id,
    String? questionNameAr,
    String? questionNameEn,
    String? questionEn,
    String? questionAr,
    List<AnswerModelStruct>? qustionsList,
    int? currentIndex,
  })  : _id = id,
        _questionNameAr = questionNameAr,
        _questionNameEn = questionNameEn,
        _questionEn = questionEn,
        _questionAr = questionAr,
        _qustionsList = qustionsList,
        _currentIndex = currentIndex;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "questionNameAr" field.
  String? _questionNameAr;
  String get questionNameAr => _questionNameAr ?? '';
  set questionNameAr(String? val) => _questionNameAr = val;

  bool hasQuestionNameAr() => _questionNameAr != null;

  // "questionNameEn" field.
  String? _questionNameEn;
  String get questionNameEn => _questionNameEn ?? '';
  set questionNameEn(String? val) => _questionNameEn = val;

  bool hasQuestionNameEn() => _questionNameEn != null;

  // "questionEn" field.
  String? _questionEn;
  String get questionEn => _questionEn ?? '';
  set questionEn(String? val) => _questionEn = val;

  bool hasQuestionEn() => _questionEn != null;

  // "questionAr" field.
  String? _questionAr;
  String get questionAr => _questionAr ?? '';
  set questionAr(String? val) => _questionAr = val;

  bool hasQuestionAr() => _questionAr != null;

  // "qustionsList" field.
  List<AnswerModelStruct>? _qustionsList;
  List<AnswerModelStruct> get qustionsList => _qustionsList ?? const [];
  set qustionsList(List<AnswerModelStruct>? val) => _qustionsList = val;

  void updateQustionsList(Function(List<AnswerModelStruct>) updateFn) {
    updateFn(_qustionsList ??= []);
  }

  bool hasQustionsList() => _qustionsList != null;

  // "currentIndex" field.
  int? _currentIndex;
  int get currentIndex => _currentIndex ?? 0;
  set currentIndex(int? val) => _currentIndex = val;

  void incrementCurrentIndex(int amount) =>
      currentIndex = currentIndex + amount;

  bool hasCurrentIndex() => _currentIndex != null;

  static QustionModelStruct fromMap(Map<String, dynamic> data) =>
      QustionModelStruct(
        id: castToType<int>(data['id']),
        questionNameAr: data['questionNameAr'] as String?,
        questionNameEn: data['questionNameEn'] as String?,
        questionEn: data['questionEn'] as String?,
        questionAr: data['questionAr'] as String?,
        qustionsList: getStructList(
          data['qustionsList'],
          AnswerModelStruct.fromMap,
        ),
        currentIndex: castToType<int>(data['currentIndex']),
      );

  static QustionModelStruct? maybeFromMap(dynamic data) => data is Map
      ? QustionModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'questionNameAr': _questionNameAr,
        'questionNameEn': _questionNameEn,
        'questionEn': _questionEn,
        'questionAr': _questionAr,
        'qustionsList': _qustionsList?.map((e) => e.toMap()).toList(),
        'currentIndex': _currentIndex,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'questionNameAr': serializeParam(
          _questionNameAr,
          ParamType.String,
        ),
        'questionNameEn': serializeParam(
          _questionNameEn,
          ParamType.String,
        ),
        'questionEn': serializeParam(
          _questionEn,
          ParamType.String,
        ),
        'questionAr': serializeParam(
          _questionAr,
          ParamType.String,
        ),
        'qustionsList': serializeParam(
          _qustionsList,
          ParamType.DataStruct,
          isList: true,
        ),
        'currentIndex': serializeParam(
          _currentIndex,
          ParamType.int,
        ),
      }.withoutNulls;

  static QustionModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      QustionModelStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        questionNameAr: deserializeParam(
          data['questionNameAr'],
          ParamType.String,
          false,
        ),
        questionNameEn: deserializeParam(
          data['questionNameEn'],
          ParamType.String,
          false,
        ),
        questionEn: deserializeParam(
          data['questionEn'],
          ParamType.String,
          false,
        ),
        questionAr: deserializeParam(
          data['questionAr'],
          ParamType.String,
          false,
        ),
        qustionsList: deserializeStructParam<AnswerModelStruct>(
          data['qustionsList'],
          ParamType.DataStruct,
          true,
          structBuilder: AnswerModelStruct.fromSerializableMap,
        ),
        currentIndex: deserializeParam(
          data['currentIndex'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'QustionModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is QustionModelStruct &&
        id == other.id &&
        questionNameAr == other.questionNameAr &&
        questionNameEn == other.questionNameEn &&
        questionEn == other.questionEn &&
        questionAr == other.questionAr &&
        listEquality.equals(qustionsList, other.qustionsList) &&
        currentIndex == other.currentIndex;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        questionNameAr,
        questionNameEn,
        questionEn,
        questionAr,
        qustionsList,
        currentIndex
      ]);
}

QustionModelStruct createQustionModelStruct({
  int? id,
  String? questionNameAr,
  String? questionNameEn,
  String? questionEn,
  String? questionAr,
  int? currentIndex,
}) =>
    QustionModelStruct(
      id: id,
      questionNameAr: questionNameAr,
      questionNameEn: questionNameEn,
      questionEn: questionEn,
      questionAr: questionAr,
      currentIndex: currentIndex,
    );
