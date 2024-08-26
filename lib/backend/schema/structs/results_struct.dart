// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResultsStruct extends BaseStruct {
  ResultsStruct({
    String? message,
    List<ChartStruct>? chart,
    List<PercentageResultStruct>? percentageResult,
    List<PartiesStruct>? parties,
    String? pdfLink,
  })  : _message = message,
        _chart = chart,
        _percentageResult = percentageResult,
        _parties = parties,
        _pdfLink = pdfLink;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "chart" field.
  List<ChartStruct>? _chart;
  List<ChartStruct> get chart => _chart ?? const [];
  set chart(List<ChartStruct>? val) => _chart = val;

  void updateChart(Function(List<ChartStruct>) updateFn) {
    updateFn(_chart ??= []);
  }

  bool hasChart() => _chart != null;

  // "percentage_result" field.
  List<PercentageResultStruct>? _percentageResult;
  List<PercentageResultStruct> get percentageResult =>
      _percentageResult ?? const [];
  set percentageResult(List<PercentageResultStruct>? val) =>
      _percentageResult = val;

  void updatePercentageResult(Function(List<PercentageResultStruct>) updateFn) {
    updateFn(_percentageResult ??= []);
  }

  bool hasPercentageResult() => _percentageResult != null;

  // "parties" field.
  List<PartiesStruct>? _parties;
  List<PartiesStruct> get parties => _parties ?? const [];
  set parties(List<PartiesStruct>? val) => _parties = val;

  void updateParties(Function(List<PartiesStruct>) updateFn) {
    updateFn(_parties ??= []);
  }

  bool hasParties() => _parties != null;

  // "pdf_link" field.
  String? _pdfLink;
  String get pdfLink => _pdfLink ?? '';
  set pdfLink(String? val) => _pdfLink = val;

  bool hasPdfLink() => _pdfLink != null;

  static ResultsStruct fromMap(Map<String, dynamic> data) => ResultsStruct(
        message: data['message'] as String?,
        chart: getStructList(
          data['chart'],
          ChartStruct.fromMap,
        ),
        percentageResult: getStructList(
          data['percentage_result'],
          PercentageResultStruct.fromMap,
        ),
        parties: getStructList(
          data['parties'],
          PartiesStruct.fromMap,
        ),
        pdfLink: data['pdf_link'] as String?,
      );

  static ResultsStruct? maybeFromMap(dynamic data) =>
      data is Map ? ResultsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'message': _message,
        'chart': _chart?.map((e) => e.toMap()).toList(),
        'percentage_result': _percentageResult?.map((e) => e.toMap()).toList(),
        'parties': _parties?.map((e) => e.toMap()).toList(),
        'pdf_link': _pdfLink,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'chart': serializeParam(
          _chart,
          ParamType.DataStruct,
          isList: true,
        ),
        'percentage_result': serializeParam(
          _percentageResult,
          ParamType.DataStruct,
          isList: true,
        ),
        'parties': serializeParam(
          _parties,
          ParamType.DataStruct,
          isList: true,
        ),
        'pdf_link': serializeParam(
          _pdfLink,
          ParamType.String,
        ),
      }.withoutNulls;

  static ResultsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ResultsStruct(
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        chart: deserializeStructParam<ChartStruct>(
          data['chart'],
          ParamType.DataStruct,
          true,
          structBuilder: ChartStruct.fromSerializableMap,
        ),
        percentageResult: deserializeStructParam<PercentageResultStruct>(
          data['percentage_result'],
          ParamType.DataStruct,
          true,
          structBuilder: PercentageResultStruct.fromSerializableMap,
        ),
        parties: deserializeStructParam<PartiesStruct>(
          data['parties'],
          ParamType.DataStruct,
          true,
          structBuilder: PartiesStruct.fromSerializableMap,
        ),
        pdfLink: deserializeParam(
          data['pdf_link'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ResultsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ResultsStruct &&
        message == other.message &&
        listEquality.equals(chart, other.chart) &&
        listEquality.equals(percentageResult, other.percentageResult) &&
        listEquality.equals(parties, other.parties) &&
        pdfLink == other.pdfLink;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([message, chart, percentageResult, parties, pdfLink]);
}

ResultsStruct createResultsStruct({
  String? message,
  String? pdfLink,
}) =>
    ResultsStruct(
      message: message,
      pdfLink: pdfLink,
    );
