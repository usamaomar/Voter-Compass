// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PartyStruct extends BaseStruct {
  PartyStruct({
    int? id,
    String? nameEn,
    String? nameAr,
    String? logo,
    String? descriptionEn,
    String? descriptionAr,
    String? scoreX,
    String? scoreY,
    String? percentageScoreX,
    String? percentageScoreY,
    String? createdAt,
    String? updatedAt,
    String? name,
    String? description,
    String? logoPath,
  })  : _id = id,
        _nameEn = nameEn,
        _nameAr = nameAr,
        _logo = logo,
        _descriptionEn = descriptionEn,
        _descriptionAr = descriptionAr,
        _scoreX = scoreX,
        _scoreY = scoreY,
        _percentageScoreX = percentageScoreX,
        _percentageScoreY = percentageScoreY,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _name = name,
        _description = description,
        _logoPath = logoPath;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "name_en" field.
  String? _nameEn;
  String get nameEn => _nameEn ?? '';
  set nameEn(String? val) => _nameEn = val;

  bool hasNameEn() => _nameEn != null;

  // "name_ar" field.
  String? _nameAr;
  String get nameAr => _nameAr ?? '';
  set nameAr(String? val) => _nameAr = val;

  bool hasNameAr() => _nameAr != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  set logo(String? val) => _logo = val;

  bool hasLogo() => _logo != null;

  // "description_en" field.
  String? _descriptionEn;
  String get descriptionEn => _descriptionEn ?? '';
  set descriptionEn(String? val) => _descriptionEn = val;

  bool hasDescriptionEn() => _descriptionEn != null;

  // "description_ar" field.
  String? _descriptionAr;
  String get descriptionAr => _descriptionAr ?? '';
  set descriptionAr(String? val) => _descriptionAr = val;

  bool hasDescriptionAr() => _descriptionAr != null;

  // "score_x" field.
  String? _scoreX;
  String get scoreX => _scoreX ?? '';
  set scoreX(String? val) => _scoreX = val;

  bool hasScoreX() => _scoreX != null;

  // "score_y" field.
  String? _scoreY;
  String get scoreY => _scoreY ?? '';
  set scoreY(String? val) => _scoreY = val;

  bool hasScoreY() => _scoreY != null;

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

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "logo_path" field.
  String? _logoPath;
  String get logoPath => _logoPath ?? '';
  set logoPath(String? val) => _logoPath = val;

  bool hasLogoPath() => _logoPath != null;

  static PartyStruct fromMap(Map<String, dynamic> data) => PartyStruct(
        id: castToType<int>(data['id']),
        nameEn: data['name_en'] as String?,
        nameAr: data['name_ar'] as String?,
        logo: data['logo'] as String?,
        descriptionEn: data['description_en'] as String?,
        descriptionAr: data['description_ar'] as String?,
        scoreX: data['score_x'] as String?,
        scoreY: data['score_y'] as String?,
        percentageScoreX: data['percentage_score_x'] as String?,
        percentageScoreY: data['percentage_score_y'] as String?,
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        name: data['name'] as String?,
        description: data['description'] as String?,
        logoPath: data['logo_path'] as String?,
      );

  static PartyStruct? maybeFromMap(dynamic data) =>
      data is Map ? PartyStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name_en': _nameEn,
        'name_ar': _nameAr,
        'logo': _logo,
        'description_en': _descriptionEn,
        'description_ar': _descriptionAr,
        'score_x': _scoreX,
        'score_y': _scoreY,
        'percentage_score_x': _percentageScoreX,
        'percentage_score_y': _percentageScoreY,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'name': _name,
        'description': _description,
        'logo_path': _logoPath,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name_en': serializeParam(
          _nameEn,
          ParamType.String,
        ),
        'name_ar': serializeParam(
          _nameAr,
          ParamType.String,
        ),
        'logo': serializeParam(
          _logo,
          ParamType.String,
        ),
        'description_en': serializeParam(
          _descriptionEn,
          ParamType.String,
        ),
        'description_ar': serializeParam(
          _descriptionAr,
          ParamType.String,
        ),
        'score_x': serializeParam(
          _scoreX,
          ParamType.String,
        ),
        'score_y': serializeParam(
          _scoreY,
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
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'logo_path': serializeParam(
          _logoPath,
          ParamType.String,
        ),
      }.withoutNulls;

  static PartyStruct fromSerializableMap(Map<String, dynamic> data) =>
      PartyStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        nameEn: deserializeParam(
          data['name_en'],
          ParamType.String,
          false,
        ),
        nameAr: deserializeParam(
          data['name_ar'],
          ParamType.String,
          false,
        ),
        logo: deserializeParam(
          data['logo'],
          ParamType.String,
          false,
        ),
        descriptionEn: deserializeParam(
          data['description_en'],
          ParamType.String,
          false,
        ),
        descriptionAr: deserializeParam(
          data['description_ar'],
          ParamType.String,
          false,
        ),
        scoreX: deserializeParam(
          data['score_x'],
          ParamType.String,
          false,
        ),
        scoreY: deserializeParam(
          data['score_y'],
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
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        logoPath: deserializeParam(
          data['logo_path'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PartyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PartyStruct &&
        id == other.id &&
        nameEn == other.nameEn &&
        nameAr == other.nameAr &&
        logo == other.logo &&
        descriptionEn == other.descriptionEn &&
        descriptionAr == other.descriptionAr &&
        scoreX == other.scoreX &&
        scoreY == other.scoreY &&
        percentageScoreX == other.percentageScoreX &&
        percentageScoreY == other.percentageScoreY &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        name == other.name &&
        description == other.description &&
        logoPath == other.logoPath;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        nameEn,
        nameAr,
        logo,
        descriptionEn,
        descriptionAr,
        scoreX,
        scoreY,
        percentageScoreX,
        percentageScoreY,
        createdAt,
        updatedAt,
        name,
        description,
        logoPath
      ]);
}

PartyStruct createPartyStruct({
  int? id,
  String? nameEn,
  String? nameAr,
  String? logo,
  String? descriptionEn,
  String? descriptionAr,
  String? scoreX,
  String? scoreY,
  String? percentageScoreX,
  String? percentageScoreY,
  String? createdAt,
  String? updatedAt,
  String? name,
  String? description,
  String? logoPath,
}) =>
    PartyStruct(
      id: id,
      nameEn: nameEn,
      nameAr: nameAr,
      logo: logo,
      descriptionEn: descriptionEn,
      descriptionAr: descriptionAr,
      scoreX: scoreX,
      scoreY: scoreY,
      percentageScoreX: percentageScoreX,
      percentageScoreY: percentageScoreY,
      createdAt: createdAt,
      updatedAt: updatedAt,
      name: name,
      description: description,
      logoPath: logoPath,
    );
