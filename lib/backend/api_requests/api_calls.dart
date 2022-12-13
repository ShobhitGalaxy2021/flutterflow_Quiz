import 'dart:convert';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class LoginAPiCall {
  static Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
    String? deviceType = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Login APi',
      apiUrl:
          'https://eolxproducts.galaxyweblinks.com/quiz/api/userServices/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'username': username,
        'password': password,
        'device_type': deviceType,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      cache: false,
    );
  }
}

class GetTestListCall {
  static Future<ApiCallResponse> call({
    String? accessToken = '',
  }) {
    final body = '''
{
  "access_token": "${accessToken}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getTestList',
      apiUrl:
          'https://eolxproducts.galaxyweblinks.com/quiz/api/TestInterfaceServices/getTestList',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }
}

class LogoutCall {
  static Future<ApiCallResponse> call({
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Logout',
      apiUrl:
          'https://eolxproducts.galaxyweblinks.com/quiz/api/userServices/logout',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'access_token': accessToken,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      cache: false,
    );
  }
}

class StartTestCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'StartTest',
      apiUrl:
          'https://eolxproducts.galaxyweblinks.com/quiz/api/TestInterfaceServices/start_test_step2',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'device_type': "android",
        'access_type':
            "0GjSFeHAzBoBbGd6cRu5FBnErwC7Egzs3jfjluPV6AMWjh9teVMx4ZPTrkrmWqGM",
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      cache: false,
    );
  }
}

class ViewProfileCall {
  static Future<ApiCallResponse> call({
    String? accessToken = ' ',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'ViewProfile',
      apiUrl:
          'https://eolxproducts.galaxyweblinks.com/quiz/api/userServices/viewProfile',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'access_token': accessToken,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      cache: false,
    );
  }
}

class GetQuestionApiCall {
  static Future<ApiCallResponse> call({
    String? accessToken = '',
    String? tempTestId = '',
    String? sectionId = '',
    String? responseType = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetQuestionApi',
      apiUrl:
          'https://eolxproducts.galaxyweblinks.com/quiz/api/TestInterfaceServices/getTestSheetData',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'access_token': accessToken,
        'temp_test_id': tempTestId,
        'section_id': sectionId,
        'response_type': responseType,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      cache: false,
    );
  }
}

class EditProflleCall {
  static Future<ApiCallResponse> call({
    String? accessToken = '',
    String? firstName = '',
    String? lastName = '',
    String? countryCode = '',
    String? timezoneId = '',
    String? password = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'EditProflle',
      apiUrl:
          'https://eolxproducts.galaxyweblinks.com/quiz/api/userServices/editProfile',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'access_token': accessToken,
        'first_name': firstName,
        'last_name': lastName,
        'country_code': countryCode,
        'timezone_id': timezoneId,
        'password': password,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      cache: false,
    );
  }
}

class GetCountryListCall {
  static Future<ApiCallResponse> call({
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetCountryList',
      apiUrl:
          'https://eolxproducts.galaxyweblinks.com/quiz/api/userServices/getCountryList',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'access_token': accessToken,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      cache: false,
    );
  }
}

class GetTimezonesCall {
  static Future<ApiCallResponse> call({
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetTimezones',
      apiUrl:
          'https://eolxproducts.galaxyweblinks.com/quiz/api/userServices/getTimeZones',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'access_token': accessToken,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      cache: false,
    );
  }
}

class SaveQuestionResponseCall {
  static Future<ApiCallResponse> call({
    String? accessToken = '',
    String? questionId = '',
    String? tempTestId = '',
    String? response = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'saveQuestionResponse',
      apiUrl:
          'https://eolxproducts.galaxyweblinks.com/quiz/api/TestInterfaceServices/saveResponse',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'access_token': accessToken,
        'question_id': questionId,
        'temp_test_id': tempTestId,
        'response': response,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      cache: false,
    );
  }
}

class FinishTestCall {
  static Future<ApiCallResponse> call({
    String? tempTestId = '',
    String? responseType = '',
    String? studentId = '',
    String? testId = '',
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'finishTest',
      apiUrl:
          'https://eolxproducts.galaxyweblinks.com/quiz/api/TestInterfaceServices/finishTest',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'temp_test_id': tempTestId,
        'response_type': responseType,
        'student_id': studentId,
        'test_id': testId,
        'access_token': accessToken,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      cache: false,
    );
  }
}

class SkipQuestionCall {
  static Future<ApiCallResponse> call({
    String? tempTestId = '',
    String? questionId = '',
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'skipQuestion',
      apiUrl:
          'https://eolxproducts.galaxyweblinks.com/quiz/api/TestInterfaceServices/setskippedans_session',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'temp_test_id': tempTestId,
        'question_id': questionId,
        'access_token': accessToken,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      cache: false,
    );
  }
}

class ResultAPICall {
  static Future<ApiCallResponse> call({
    String? accessToken = '',
    int? tempTestId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Result API',
      apiUrl:
          'https://eolxproducts.galaxyweblinks.com/quiz/api/userServices/studentTestResultPage',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'access_token': accessToken,
        'temp_test_id': tempTestId,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      cache: false,
    );
  }
}

class ReportAPICall {
  static Future<ApiCallResponse> call({
    String? accessToken = '',
    int? offset,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Report API',
      apiUrl:
          'https://eolxproducts.galaxyweblinks.com/quiz/api/userServices/studentMyReport',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'access_token': accessToken,
        'offset': offset,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      cache: false,
    );
  }
}

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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
