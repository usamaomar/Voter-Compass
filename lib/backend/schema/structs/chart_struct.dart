// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChartStruct extends BaseStruct {
  ChartStruct({
    int? xValue,
    double? yValue,
    int? isParty,
  })  : _xValue = xValue,
        _yValue = yValue,
        _isParty = isParty;

  // "x_value" field.
  int? _xValue;
  int get xValue => _xValue ?? 0;
  set xValue(int? val) => _xValue = val;

  void incrementXValue(int amount) => xValue = xValue + amount;

  bool hasXValue() => _xValue != null;

  // "y_value" field.
  double? _yValue;
  double get yValue => _yValue ?? 0.0;
  set yValue(double? val) => _yValue = val;

  void incrementYValue(double amount) => yValue = yValue + amount;

  bool hasYValue() => _yValue != null;

  // "is_party" field.
  int? _isParty;
  int get isParty => _isParty ?? 0;
  set isParty(int? val) => _isParty = val;

  void incrementIsParty(int amount) => isParty = isParty + amount;

  bool hasIsParty() => _isParty != null;

  static ChartStruct fromMap(Map<String, dynamic> data) => ChartStruct(
        xValue: castToType<int>(data['x_value']),
        yValue: castToType<double>(data['y_value']),
        isParty: castToType<int>(data['is_party']),
      );

  static ChartStruct? maybeFromMap(dynamic data) =>
      data is Map ? ChartStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'x_value': _xValue,
        'y_value': _yValue,
        'is_party': _isParty,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'x_value': serializeParam(
          _xValue,
          ParamType.int,
        ),
        'y_value': serializeParam(
          _yValue,
          ParamType.double,
        ),
        'is_party': serializeParam(
          _isParty,
          ParamType.int,
        ),
      }.withoutNulls;

  static ChartStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChartStruct(
        xValue: deserializeParam(
          data['x_value'],
          ParamType.int,
          false,
        ),
        yValue: deserializeParam(
          data['y_value'],
          ParamType.double,
          false,
        ),
        isParty: deserializeParam(
          data['is_party'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ChartStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChartStruct &&
        xValue == other.xValue &&
        yValue == other.yValue &&
        isParty == other.isParty;
  }

  @override
  int get hashCode => const ListEquality().hash([xValue, yValue, isParty]);
}

ChartStruct createChartStruct({
  int? xValue,
  double? yValue,
  int? isParty,
}) =>
    ChartStruct(
      xValue: xValue,
      yValue: yValue,
      isParty: isParty,
    );
