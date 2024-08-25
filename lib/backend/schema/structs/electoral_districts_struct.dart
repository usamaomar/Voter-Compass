// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ElectoralDistrictsStruct extends BaseStruct {
  ElectoralDistrictsStruct({
    List<AmmanStruct>? amman,
  }) : _amman = amman;

  // "Amman" field.
  List<AmmanStruct>? _amman;
  List<AmmanStruct> get amman => _amman ?? const [];
  set amman(List<AmmanStruct>? val) => _amman = val;

  void updateAmman(Function(List<AmmanStruct>) updateFn) {
    updateFn(_amman ??= []);
  }

  bool hasAmman() => _amman != null;

  static ElectoralDistrictsStruct fromMap(Map<String, dynamic> data) =>
      ElectoralDistrictsStruct(
        amman: getStructList(
          data['Amman'],
          AmmanStruct.fromMap,
        ),
      );

  static ElectoralDistrictsStruct? maybeFromMap(dynamic data) => data is Map
      ? ElectoralDistrictsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Amman': _amman?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Amman': serializeParam(
          _amman,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static ElectoralDistrictsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ElectoralDistrictsStruct(
        amman: deserializeStructParam<AmmanStruct>(
          data['Amman'],
          ParamType.DataStruct,
          true,
          structBuilder: AmmanStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ElectoralDistrictsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ElectoralDistrictsStruct &&
        listEquality.equals(amman, other.amman);
  }

  @override
  int get hashCode => const ListEquality().hash([amman]);
}

ElectoralDistrictsStruct createElectoralDistrictsStruct() =>
    ElectoralDistrictsStruct();
