import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start event Group Code

class EventGroup {
  static String baseUrl = 'https://kongshumapi.net';
  static Map<String, String> headers = {};
  static GeteventCall geteventCall = GeteventCall();
  static PosteventCall posteventCall = PosteventCall();
  static GeteventbyidCall geteventbyidCall = GeteventbyidCall();
  static UpdateeventCall updateeventCall = UpdateeventCall();
  static DeleteeventCall deleteeventCall = DeleteeventCall();
}

class GeteventCall {
  Future<ApiCallResponse> call({
    int? page = 1,
    int? per = 4,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getevent',
      apiUrl: '${EventGroup.baseUrl}/event',
      callType: ApiCallType.GET,
      headers: {
        ...EventGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic items(dynamic response) => getJsonField(
        response,
        r'''$.items''',
        true,
      );
  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.items[:].id''',
        true,
      );
  dynamic value(dynamic response) => getJsonField(
        response,
        r'''$.items[:].value''',
        true,
      );
  dynamic walletAddress(dynamic response) => getJsonField(
        response,
        r'''$.items[:].walletAddress''',
        true,
      );
  dynamic createdAt(dynamic response) => getJsonField(
        response,
        r'''$.items[:].createdAt''',
        true,
      );
  dynamic factor(dynamic response) => getJsonField(
        response,
        r'''$.items[:].factor''',
        true,
      );
  dynamic typeId(dynamic response) => getJsonField(
        response,
        r'''$.items[:].typeId''',
        true,
      );
  dynamic sourceId(dynamic response) => getJsonField(
        response,
        r'''$.items[:].sourceId''',
        true,
      );
  dynamic orderId(dynamic response) => getJsonField(
        response,
        r'''$.items[:].orderId''',
        true,
      );
  dynamic metadata(dynamic response) => getJsonField(
        response,
        r'''$.metadata''',
      );
}

class PosteventCall {
  Future<ApiCallResponse> call({
    double? value,
    String? walletAddress = '',
    String? typeId = '',
  }) {
    final body = '''
{
  "value": ${value},
  "walletAddress": "${walletAddress}",
  "typeId": "${typeId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'postevent',
      apiUrl: '${EventGroup.baseUrl}/event',
      callType: ApiCallType.POST,
      headers: {
        ...EventGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GeteventbyidCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'geteventbyid',
      apiUrl: '${EventGroup.baseUrl}/event/${id}',
      callType: ApiCallType.GET,
      headers: {
        ...EventGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UpdateeventCall {
  Future<ApiCallResponse> call({
    String? walletAddress = '',
    double? value,
    String? typeId = '',
    double? factor,
    String? sourceId = '',
    String? orderId = '',
    String? id = '',
  }) {
    final body = '''
{
  "walletAddress": "${walletAddress}",
  "value": ${value},
  "typeId": "${typeId}",
  "factor": ${factor},
  "sourceId": "${sourceId}",
  "orderId": "${orderId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateevent',
      apiUrl: '${EventGroup.baseUrl}/event/${id}',
      callType: ApiCallType.PATCH,
      headers: {
        ...EventGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class DeleteeventCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'deleteevent',
      apiUrl: '${EventGroup.baseUrl}/event/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        ...EventGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End event Group Code

/// Start eventtype Group Code

class EventtypeGroup {
  static String baseUrl = 'https://kongshumapi.net';
  static Map<String, String> headers = {};
  static GetetCall getetCall = GetetCall();
  static DeleteetCall deleteetCall = DeleteetCall();
  static PostetCall postetCall = PostetCall();
  static GetetbyidCall getetbyidCall = GetetbyidCall();
  static UpdateetCall updateetCall = UpdateetCall();
}

class GetetCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? name = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getet',
      apiUrl: '${EventtypeGroup.baseUrl}/eventtype',
      callType: ApiCallType.GET,
      headers: {
        ...EventtypeGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
        true,
      );
  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$[:].name''',
        true,
      );
}

class DeleteetCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'deleteet',
      apiUrl: '${EventtypeGroup.baseUrl}/eventtype/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        ...EventtypeGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class PostetCall {
  Future<ApiCallResponse> call({
    String? name = '',
  }) {
    final body = '''
{
  "name": "${name}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'postet',
      apiUrl: '${EventtypeGroup.baseUrl}/eventtype',
      callType: ApiCallType.POST,
      headers: {
        ...EventtypeGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetetbyidCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getetbyid',
      apiUrl: '${EventtypeGroup.baseUrl}/eventtype/${id}',
      callType: ApiCallType.GET,
      headers: {
        ...EventtypeGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UpdateetCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? id = '',
  }) {
    final body = '''
{
  "name": "${name}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateet',
      apiUrl: '${EventtypeGroup.baseUrl}/eventtype/${id}',
      callType: ApiCallType.PATCH,
      headers: {
        ...EventtypeGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End eventtype Group Code

/// Start source Group Code

class SourceGroup {
  static String baseUrl = 'kongshumapi.net';
  static Map<String, String> headers = {};
  static GetsourceCall getsourceCall = GetsourceCall();
  static PostsourceCall postsourceCall = PostsourceCall();
  static DeletesourceCall deletesourceCall = DeletesourceCall();
  static GetsourcebyidCall getsourcebyidCall = GetsourcebyidCall();
  static UpdatesourceCall updatesourceCall = UpdatesourceCall();
}

class GetsourceCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getsource',
      apiUrl: '${SourceGroup.baseUrl}/source',
      callType: ApiCallType.GET,
      headers: {
        ...SourceGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class PostsourceCall {
  Future<ApiCallResponse> call({
    String? name = '',
  }) {
    final body = '''
{
  "name": "${name}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'postsource',
      apiUrl: '${SourceGroup.baseUrl}/source',
      callType: ApiCallType.POST,
      headers: {
        ...SourceGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class DeletesourceCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'deletesource',
      apiUrl: '${SourceGroup.baseUrl}/source/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        ...SourceGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetsourcebyidCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getsourcebyid',
      apiUrl: '${SourceGroup.baseUrl}/source/${id}',
      callType: ApiCallType.GET,
      headers: {
        ...SourceGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UpdatesourceCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? id = '',
  }) {
    final body = '''
{
  "name": "${name}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updatesource',
      apiUrl: '${SourceGroup.baseUrl}/source/${id}',
      callType: ApiCallType.PATCH,
      headers: {
        ...SourceGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End source Group Code

/// Start order Group Code

class OrderGroup {
  static String baseUrl = 'kongshumapi.net';
  static Map<String, String> headers = {};
  static GetorderCall getorderCall = GetorderCall();
  static PostorderCall postorderCall = PostorderCall();
  static UpdateorderCall updateorderCall = UpdateorderCall();
}

class GetorderCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getorder',
      apiUrl: '${OrderGroup.baseUrl}/order',
      callType: ApiCallType.GET,
      headers: {
        ...OrderGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class PostorderCall {
  Future<ApiCallResponse> call({
    String? merchantId = '',
  }) {
    final body = '''
{
  "merchantId": "${merchantId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'postorder',
      apiUrl: '${OrderGroup.baseUrl}/order',
      callType: ApiCallType.POST,
      headers: {
        ...OrderGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UpdateorderCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? merchantId = '',
  }) {
    final body = '''
{
  "merchantId": "${merchantId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateorder',
      apiUrl: '${OrderGroup.baseUrl}/order/${id}',
      callType: ApiCallType.PATCH,
      headers: {
        ...OrderGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End order Group Code

/// Start auth Group Code

class AuthGroup {
  static String baseUrl = 'kongshumapi.net';
  static Map<String, String> headers = {};
  static LoginCall loginCall = LoginCall();
  static SignupCall signupCall = SignupCall();
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
  }) {
    final body = '''
{
  "username": "${username}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: '${AuthGroup.baseUrl}/auth/login',
      callType: ApiCallType.POST,
      headers: {
        ...AuthGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SignupCall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
  }) {
    final body = '''
{
  "username": "${username}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'signup',
      apiUrl: '${AuthGroup.baseUrl}/auth/signup',
      callType: ApiCallType.POST,
      headers: {
        ...AuthGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End auth Group Code

/// Start user Group Code

class UserGroup {
  static String baseUrl = 'kongshumapi.net';
  static Map<String, String> headers = {};
  static PostuserCall postuserCall = PostuserCall();
}

class PostuserCall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
  }) {
    final body = '''
{
  "username": "${username}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'postuser',
      apiUrl: '${UserGroup.baseUrl}/user',
      callType: ApiCallType.POST,
      headers: {
        ...UserGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End user Group Code

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
