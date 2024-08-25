// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DDlOptionsStruct extends BaseStruct {
  DDlOptionsStruct({
    List<String>? age,
    List<SocialStatusStruct>? socialStatus,
    List<EducationalLevelStruct>? educationalLevel,
    List<GenderStruct>? gender,
    List<GovernateStruct>? governate,
    List<ElectoralDistrictsStruct>? electoralDistricts,
  })  : _age = age,
        _socialStatus = socialStatus,
        _educationalLevel = educationalLevel,
        _gender = gender,
        _governate = governate,
        _electoralDistricts = electoralDistricts;

  // "age" field.
  List<String>? _age;
  List<String> get age => _age ?? const [];
  set age(List<String>? val) => _age = val;

  void updateAge(Function(List<String>) updateFn) {
    updateFn(_age ??= []);
  }

  bool hasAge() => _age != null;

  // "social_status" field.
  List<SocialStatusStruct>? _socialStatus;
  List<SocialStatusStruct> get socialStatus => _socialStatus ?? const [];
  set socialStatus(List<SocialStatusStruct>? val) => _socialStatus = val;

  void updateSocialStatus(Function(List<SocialStatusStruct>) updateFn) {
    updateFn(_socialStatus ??= []);
  }

  bool hasSocialStatus() => _socialStatus != null;

  // "educational_level" field.
  List<EducationalLevelStruct>? _educationalLevel;
  List<EducationalLevelStruct> get educationalLevel =>
      _educationalLevel ?? const [];
  set educationalLevel(List<EducationalLevelStruct>? val) =>
      _educationalLevel = val;

  void updateEducationalLevel(Function(List<EducationalLevelStruct>) updateFn) {
    updateFn(_educationalLevel ??= []);
  }

  bool hasEducationalLevel() => _educationalLevel != null;

  // "gender" field.
  List<GenderStruct>? _gender;
  List<GenderStruct> get gender => _gender ?? const [];
  set gender(List<GenderStruct>? val) => _gender = val;

  void updateGender(Function(List<GenderStruct>) updateFn) {
    updateFn(_gender ??= []);
  }

  bool hasGender() => _gender != null;

  // "governate" field.
  List<GovernateStruct>? _governate;
  List<GovernateStruct> get governate => _governate ?? const [];
  set governate(List<GovernateStruct>? val) => _governate = val;

  void updateGovernate(Function(List<GovernateStruct>) updateFn) {
    updateFn(_governate ??= []);
  }

  bool hasGovernate() => _governate != null;

  // "electoral_districts" field.
  List<ElectoralDistrictsStruct>? _electoralDistricts;
  List<ElectoralDistrictsStruct> get electoralDistricts =>
      _electoralDistricts ?? const [];
  set electoralDistricts(List<ElectoralDistrictsStruct>? val) =>
      _electoralDistricts = val;

  void updateElectoralDistricts(
      Function(List<ElectoralDistrictsStruct>) updateFn) {
    updateFn(_electoralDistricts ??= []);
  }

  bool hasElectoralDistricts() => _electoralDistricts != null;

  static DDlOptionsStruct fromMap(Map<String, dynamic> data) =>
      DDlOptionsStruct(
        age: getDataList(data['age']),
        socialStatus: getStructList(
          data['social_status'],
          SocialStatusStruct.fromMap,
        ),
        educationalLevel: getStructList(
          data['educational_level'],
          EducationalLevelStruct.fromMap,
        ),
        gender: getStructList(
          data['gender'],
          GenderStruct.fromMap,
        ),
        governate: getStructList(
          data['governate'],
          GovernateStruct.fromMap,
        ),
        electoralDistricts: getStructList(
          data['electoral_districts'],
          ElectoralDistrictsStruct.fromMap,
        ),
      );

  static DDlOptionsStruct? maybeFromMap(dynamic data) => data is Map
      ? DDlOptionsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'age': _age,
        'social_status': _socialStatus?.map((e) => e.toMap()).toList(),
        'educational_level': _educationalLevel?.map((e) => e.toMap()).toList(),
        'gender': _gender?.map((e) => e.toMap()).toList(),
        'governate': _governate?.map((e) => e.toMap()).toList(),
        'electoral_districts':
            _electoralDistricts?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'age': serializeParam(
          _age,
          ParamType.String,
          isList: true,
        ),
        'social_status': serializeParam(
          _socialStatus,
          ParamType.DataStruct,
          isList: true,
        ),
        'educational_level': serializeParam(
          _educationalLevel,
          ParamType.DataStruct,
          isList: true,
        ),
        'gender': serializeParam(
          _gender,
          ParamType.DataStruct,
          isList: true,
        ),
        'governate': serializeParam(
          _governate,
          ParamType.DataStruct,
          isList: true,
        ),
        'electoral_districts': serializeParam(
          _electoralDistricts,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static DDlOptionsStruct fromSerializableMap(Map<String, dynamic> data) =>
      DDlOptionsStruct(
        age: deserializeParam<String>(
          data['age'],
          ParamType.String,
          true,
        ),
        socialStatus: deserializeStructParam<SocialStatusStruct>(
          data['social_status'],
          ParamType.DataStruct,
          true,
          structBuilder: SocialStatusStruct.fromSerializableMap,
        ),
        educationalLevel: deserializeStructParam<EducationalLevelStruct>(
          data['educational_level'],
          ParamType.DataStruct,
          true,
          structBuilder: EducationalLevelStruct.fromSerializableMap,
        ),
        gender: deserializeStructParam<GenderStruct>(
          data['gender'],
          ParamType.DataStruct,
          true,
          structBuilder: GenderStruct.fromSerializableMap,
        ),
        governate: deserializeStructParam<GovernateStruct>(
          data['governate'],
          ParamType.DataStruct,
          true,
          structBuilder: GovernateStruct.fromSerializableMap,
        ),
        electoralDistricts: deserializeStructParam<ElectoralDistrictsStruct>(
          data['electoral_districts'],
          ParamType.DataStruct,
          true,
          structBuilder: ElectoralDistrictsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'DDlOptionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DDlOptionsStruct &&
        listEquality.equals(age, other.age) &&
        listEquality.equals(socialStatus, other.socialStatus) &&
        listEquality.equals(educationalLevel, other.educationalLevel) &&
        listEquality.equals(gender, other.gender) &&
        listEquality.equals(governate, other.governate) &&
        listEquality.equals(electoralDistricts, other.electoralDistricts);
  }

  @override
  int get hashCode => const ListEquality().hash([
        age,
        socialStatus,
        educationalLevel,
        gender,
        governate,
        electoralDistricts
      ]);
}

DDlOptionsStruct createDDlOptionsStruct() => DDlOptionsStruct();
