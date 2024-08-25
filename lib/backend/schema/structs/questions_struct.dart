// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuestionsStruct extends BaseStruct {
  QuestionsStruct({
    int? id,
    String? titleEn,
    String? titleAr,
    String? agree,
    String? neutral,
    String? disagree,
    String? answer,
    int? quizId,
    int? userId,
    int? questionCategoryId,
    int? status,
    String? createdAt,
    String? updatedAt,
  })  : _id = id,
        _titleEn = titleEn,
        _titleAr = titleAr,
        _agree = agree,
        _neutral = neutral,
        _disagree = disagree,
        _answer = answer,
        _quizId = quizId,
        _userId = userId,
        _questionCategoryId = questionCategoryId,
        _status = status,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "title_en" field.
  String? _titleEn;
  String get titleEn => _titleEn ?? '';
  set titleEn(String? val) => _titleEn = val;

  bool hasTitleEn() => _titleEn != null;

  // "title_ar" field.
  String? _titleAr;
  String get titleAr => _titleAr ?? '';
  set titleAr(String? val) => _titleAr = val;

  bool hasTitleAr() => _titleAr != null;

  // "agree" field.
  String? _agree;
  String get agree => _agree ?? '';
  set agree(String? val) => _agree = val;

  bool hasAgree() => _agree != null;

  // "neutral" field.
  String? _neutral;
  String get neutral => _neutral ?? '';
  set neutral(String? val) => _neutral = val;

  bool hasNeutral() => _neutral != null;

  // "disagree" field.
  String? _disagree;
  String get disagree => _disagree ?? '';
  set disagree(String? val) => _disagree = val;

  bool hasDisagree() => _disagree != null;

  // "answer" field.
  String? _answer;
  String get answer => _answer ?? '';
  set answer(String? val) => _answer = val;

  bool hasAnswer() => _answer != null;

  // "quiz_id" field.
  int? _quizId;
  int get quizId => _quizId ?? 0;
  set quizId(int? val) => _quizId = val;

  void incrementQuizId(int amount) => quizId = quizId + amount;

  bool hasQuizId() => _quizId != null;

  // "user_id" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;

  void incrementUserId(int amount) => userId = userId + amount;

  bool hasUserId() => _userId != null;

  // "question_category_id" field.
  int? _questionCategoryId;
  int get questionCategoryId => _questionCategoryId ?? 0;
  set questionCategoryId(int? val) => _questionCategoryId = val;

  void incrementQuestionCategoryId(int amount) =>
      questionCategoryId = questionCategoryId + amount;

  bool hasQuestionCategoryId() => _questionCategoryId != null;

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  set status(int? val) => _status = val;

  void incrementStatus(int amount) => status = status + amount;

  bool hasStatus() => _status != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  static QuestionsStruct fromMap(Map<String, dynamic> data) => QuestionsStruct(
        id: castToType<int>(data['id']),
        titleEn: data['title_en'] as String?,
        titleAr: data['title_ar'] as String?,
        agree: data['agree'] as String?,
        neutral: data['neutral'] as String?,
        disagree: data['disagree'] as String?,
        answer: data['answer'] as String?,
        quizId: castToType<int>(data['quiz_id']),
        userId: castToType<int>(data['user_id']),
        questionCategoryId: castToType<int>(data['question_category_id']),
        status: castToType<int>(data['status']),
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
      );

  static QuestionsStruct? maybeFromMap(dynamic data) => data is Map
      ? QuestionsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'title_en': _titleEn,
        'title_ar': _titleAr,
        'agree': _agree,
        'neutral': _neutral,
        'disagree': _disagree,
        'answer': _answer,
        'quiz_id': _quizId,
        'user_id': _userId,
        'question_category_id': _questionCategoryId,
        'status': _status,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'title_en': serializeParam(
          _titleEn,
          ParamType.String,
        ),
        'title_ar': serializeParam(
          _titleAr,
          ParamType.String,
        ),
        'agree': serializeParam(
          _agree,
          ParamType.String,
        ),
        'neutral': serializeParam(
          _neutral,
          ParamType.String,
        ),
        'disagree': serializeParam(
          _disagree,
          ParamType.String,
        ),
        'answer': serializeParam(
          _answer,
          ParamType.String,
        ),
        'quiz_id': serializeParam(
          _quizId,
          ParamType.int,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.int,
        ),
        'question_category_id': serializeParam(
          _questionCategoryId,
          ParamType.int,
        ),
        'status': serializeParam(
          _status,
          ParamType.int,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static QuestionsStruct fromSerializableMap(Map<String, dynamic> data) =>
      QuestionsStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        titleEn: deserializeParam(
          data['title_en'],
          ParamType.String,
          false,
        ),
        titleAr: deserializeParam(
          data['title_ar'],
          ParamType.String,
          false,
        ),
        agree: deserializeParam(
          data['agree'],
          ParamType.String,
          false,
        ),
        neutral: deserializeParam(
          data['neutral'],
          ParamType.String,
          false,
        ),
        disagree: deserializeParam(
          data['disagree'],
          ParamType.String,
          false,
        ),
        answer: deserializeParam(
          data['answer'],
          ParamType.String,
          false,
        ),
        quizId: deserializeParam(
          data['quiz_id'],
          ParamType.int,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.int,
          false,
        ),
        questionCategoryId: deserializeParam(
          data['question_category_id'],
          ParamType.int,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'QuestionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is QuestionsStruct &&
        id == other.id &&
        titleEn == other.titleEn &&
        titleAr == other.titleAr &&
        agree == other.agree &&
        neutral == other.neutral &&
        disagree == other.disagree &&
        answer == other.answer &&
        quizId == other.quizId &&
        userId == other.userId &&
        questionCategoryId == other.questionCategoryId &&
        status == other.status &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        titleEn,
        titleAr,
        agree,
        neutral,
        disagree,
        answer,
        quizId,
        userId,
        questionCategoryId,
        status,
        createdAt,
        updatedAt
      ]);
}

QuestionsStruct createQuestionsStruct({
  int? id,
  String? titleEn,
  String? titleAr,
  String? agree,
  String? neutral,
  String? disagree,
  String? answer,
  int? quizId,
  int? userId,
  int? questionCategoryId,
  int? status,
  String? createdAt,
  String? updatedAt,
}) =>
    QuestionsStruct(
      id: id,
      titleEn: titleEn,
      titleAr: titleAr,
      agree: agree,
      neutral: neutral,
      disagree: disagree,
      answer: answer,
      quizId: quizId,
      userId: userId,
      questionCategoryId: questionCategoryId,
      status: status,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
