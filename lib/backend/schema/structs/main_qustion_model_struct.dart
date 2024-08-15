// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MainQustionModelStruct extends BaseStruct {
  MainQustionModelStruct({
    int? currentIdex,
    List<QustionModelStruct>? qustionsList,
  })  : _currentIdex = currentIdex,
        _qustionsList = qustionsList;

  // "currentIdex" field.
  int? _currentIdex;
  int get currentIdex => _currentIdex ?? 0;
  set currentIdex(int? val) => _currentIdex = val;

  void incrementCurrentIdex(int amount) => currentIdex = currentIdex + amount;

  bool hasCurrentIdex() => _currentIdex != null;

  // "qustionsList" field.
  List<QustionModelStruct>? _qustionsList;
  List<QustionModelStruct> get qustionsList => _qustionsList ?? const [];
  set qustionsList(List<QustionModelStruct>? val) => _qustionsList = val;

  void updateQustionsList(Function(List<QustionModelStruct>) updateFn) {
    updateFn(_qustionsList ??= []);
  }

  bool hasQustionsList() => _qustionsList != null;

  static MainQustionModelStruct fromMap(Map<String, dynamic> data) =>
      MainQustionModelStruct(
        currentIdex: castToType<int>(data['currentIdex']),
        qustionsList: getStructList(
          data['qustionsList'],
          QustionModelStruct.fromMap,
        ),
      );

  static MainQustionModelStruct? maybeFromMap(dynamic data) => data is Map
      ? MainQustionModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'currentIdex': _currentIdex,
        'qustionsList': _qustionsList?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'currentIdex': serializeParam(
          _currentIdex,
          ParamType.int,
        ),
        'qustionsList': serializeParam(
          _qustionsList,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static MainQustionModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      MainQustionModelStruct(
        currentIdex: deserializeParam(
          data['currentIdex'],
          ParamType.int,
          false,
        ),
        qustionsList: deserializeStructParam<QustionModelStruct>(
          data['qustionsList'],
          ParamType.DataStruct,
          true,
          structBuilder: QustionModelStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'MainQustionModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is MainQustionModelStruct &&
        currentIdex == other.currentIdex &&
        listEquality.equals(qustionsList, other.qustionsList);
  }

  @override
  int get hashCode => const ListEquality().hash([currentIdex, qustionsList]);
}

MainQustionModelStruct createMainQustionModelStruct({
  int? currentIdex,
}) =>
    MainQustionModelStruct(
      currentIdex: currentIdex,
    );
