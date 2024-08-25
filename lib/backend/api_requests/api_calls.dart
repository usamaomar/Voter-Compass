import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start VoteerApiGroup Group Code

class VoteerApiGroupGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://votercompass.completechaintech.com/api';
  static Map<String, String> headers = {
    'Authorization': '[TOKEN]',
  };
  static TokenApiCallCall tokenApiCallCall = TokenApiCallCall();
  static GetDDLOptionsApiCallCall getDDLOptionsApiCallCall =
      GetDDLOptionsApiCallCall();
  static GetDDLOptionsApiCallCopyCall getDDLOptionsApiCallCopyCall =
      GetDDLOptionsApiCallCopyCall();
}

class TokenApiCallCall {
  Future<ApiCallResponse> call({
    String? fcmToken = '',
    String? appVersion = '',
    String? osType = '',
    String? lang = '',
    String? token = '',
  }) async {
    final baseUrl = VoteerApiGroupGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "fcm_token": "$fcmToken",
  "app_version": "$appVersion",
  "os_type": "$osType",
  "lang": "$lang"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'TokenApiCall',
      apiUrl: '$baseUrl/token',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '$token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
}

class GetDDLOptionsApiCallCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = VoteerApiGroupGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getDDLOptionsApiCall',
      apiUrl: '$baseUrl/getDDLOptions',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '$token',
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetDDLOptionsApiCallCopyCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = VoteerApiGroupGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getDDLOptionsApiCall Copy',
      apiUrl: '$baseUrl/getDDLOptions',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '$token',
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End VoteerApiGroup Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
