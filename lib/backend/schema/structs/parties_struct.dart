// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PartiesStruct extends BaseStruct {
  PartiesStruct({
    int? id,
    int? quizId,
    int? partyId,
    String? distance,
    String? percentageScoreX,
    String? percentageScoreY,
    String? percentageScore,
    String? createdAt,
    String? updatedAt,
    PartyStruct? party,
  })  : _id = id,
        _quizId = quizId,
        _partyId = partyId,
        _distance = distance,
        _percentageScoreX = percentageScoreX,
        _percentageScoreY = percentageScoreY,
        _percentageScore = percentageScore,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _party = party;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "quiz_id" field.
  int? _quizId;
  int get quizId => _quizId ?? 0;
  set quizId(int? val) => _quizId = val;

  void incrementQuizId(int amount) => quizId = quizId + amount;

  bool hasQuizId() => _quizId != null;

  // "party_id" field.
  int? _partyId;
  int get partyId => _partyId ?? 0;
  set partyId(int? val) => _partyId = val;

  void incrementPartyId(int amount) => partyId = partyId + amount;

  bool hasPartyId() => _partyId != null;

  // "distance" field.
  String? _distance;
  String get distance => _distance ?? '';
  set distance(String? val) => _distance = val;

  bool hasDistance() => _distance != null;

  // "percentage_score_x" field.
  String? _percentageScoreX;
  String get percentageScoreX => _percentageScoreX ?? '';
  set percentageScoreX(String? val) => _percentageScoreX = val;

  bool hasPercentageScoreX() => _percentageScoreX != null;

  // "percentage_score_y" field.
  String? _percentageScoreY;
  String get percentageScoreY => _percentageScoreY ?? '';
  set percentageScoreY(String? val) => _percentageScoreY = val;

  bool hasPercentageScoreY() => _percentageScoreY != null;

  // "percentage_score" field.
  String? _percentageScore;
  String get percentageScore => _percentageScore ?? '';
  set percentageScore(String? val) => _percentageScore = val;

  bool hasPercentageScore() => _percentageScore != null;

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

  // "party" field.
  PartyStruct? _party;
  PartyStruct get party => _party ?? PartyStruct();
  set party(PartyStruct? val) => _party = val;

  void updateParty(Function(PartyStruct) updateFn) {
    updateFn(_party ??= PartyStruct());
  }

  bool hasParty() => _party != null;

  static PartiesStruct fromMap(Map<String, dynamic> data) => PartiesStruct(
        id: castToType<int>(data['id']),
        quizId: castToType<int>(data['quiz_id']),
        partyId: castToType<int>(data['party_id']),
        distance: data['distance'] as String?,
        percentageScoreX: data['percentage_score_x'] as String?,
        percentageScoreY: data['percentage_score_y'] as String?,
        percentageScore: data['percentage_score'] as String?,
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        party: PartyStruct.maybeFromMap(data['party']),
      );

  static PartiesStruct? maybeFromMap(dynamic data) =>
      data is Map ? PartiesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'quiz_id': _quizId,
        'party_id': _partyId,
        'distance': _distance,
        'percentage_score_x': _percentageScoreX,
        'percentage_score_y': _percentageScoreY,
        'percentage_score': _percentageScore,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'party': _party?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'quiz_id': serializeParam(
          _quizId,
          ParamType.int,
        ),
        'party_id': serializeParam(
          _partyId,
          ParamType.int,
        ),
        'distance': serializeParam(
          _distance,
          ParamType.String,
        ),
        'percentage_score_x': serializeParam(
          _percentageScoreX,
          ParamType.String,
        ),
        'percentage_score_y': serializeParam(
          _percentageScoreY,
          ParamType.String,
        ),
        'percentage_score': serializeParam(
          _percentageScore,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'party': serializeParam(
          _party,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static PartiesStruct fromSerializableMap(Map<String, dynamic> data) =>
      PartiesStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        quizId: deserializeParam(
          data['quiz_id'],
          ParamType.int,
          false,
        ),
        partyId: deserializeParam(
          data['party_id'],
          ParamType.int,
          false,
        ),
        distance: deserializeParam(
          data['distance'],
          ParamType.String,
          false,
        ),
        percentageScoreX: deserializeParam(
          data['percentage_score_x'],
          ParamType.String,
          false,
        ),
        percentageScoreY: deserializeParam(
          data['percentage_score_y'],
          ParamType.String,
          false,
        ),
        percentageScore: deserializeParam(
          data['percentage_score'],
          ParamType.String,
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
        party: deserializeStructParam(
          data['party'],
          ParamType.DataStruct,
          false,
          structBuilder: PartyStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'PartiesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PartiesStruct &&
        id == other.id &&
        quizId == other.quizId &&
        partyId == other.partyId &&
        distance == other.distance &&
        percentageScoreX == other.percentageScoreX &&
        percentageScoreY == other.percentageScoreY &&
        percentageScore == other.percentageScore &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        party == other.party;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        quizId,
        partyId,
        distance,
        percentageScoreX,
        percentageScoreY,
        percentageScore,
        createdAt,
        updatedAt,
        party
      ]);
}

PartiesStruct createPartiesStruct({
  int? id,
  int? quizId,
  int? partyId,
  String? distance,
  String? percentageScoreX,
  String? percentageScoreY,
  String? percentageScore,
  String? createdAt,
  String? updatedAt,
  PartyStruct? party,
}) =>
    PartiesStruct(
      id: id,
      quizId: quizId,
      partyId: partyId,
      distance: distance,
      percentageScoreX: percentageScoreX,
      percentageScoreY: percentageScoreY,
      percentageScore: percentageScore,
      createdAt: createdAt,
      updatedAt: updatedAt,
      party: party ?? PartyStruct(),
    );
