import 'api_manager.dart';

Future<dynamic> loginCall() {
  return ApiManager.instance.makeApiCall(
    callName: 'Login',
    apiUrl: '10.80.161.222:3000/login',
    callType: ApiCallType.POST,
    headers: {},
    params: {},
    bodyType: BodyType.JSON,
    returnResponse: true,
  );
}

Future<dynamic> signUPCall() {
  return ApiManager.instance.makeApiCall(
    callName: 'SignUP',
    apiUrl: '10.80.161.222:3000/signup',
    callType: ApiCallType.POST,
    headers: {},
    params: {},
    bodyType: BodyType.JSON,
    returnResponse: true,
  );
}

Future<dynamic> iDonlyCall() {
  return ApiManager.instance.makeApiCall(
    callName: 'IDonly',
    apiUrl: '10.80.161.222:3000/signup/id/{id}',
    callType: ApiCallType.POST,
    headers: {},
    params: {},
    bodyType: BodyType.JSON,
    returnResponse: true,
  );
}

Future<dynamic> iDcertifiedCall() {
  return ApiManager.instance.makeApiCall(
    callName: 'IDcertified',
    apiUrl: '10.80.161.222:3000/signup/account/name/{name}',
    callType: ApiCallType.POST,
    headers: {},
    params: {},
    bodyType: BodyType.JSON,
    returnResponse: true,
  );
}

Future<dynamic> accountCheckCall() {
  return ApiManager.instance.makeApiCall(
    callName: 'accountCheck',
    apiUrl: '10.80.161.222:3000/signup/account/check',
    callType: ApiCallType.POST,
    headers: {},
    params: {},
    bodyType: BodyType.JSON,
    returnResponse: true,
  );
}

Future<dynamic> quickloginCall() {
  return ApiManager.instance.makeApiCall(
    callName: 'quicklogin',
    apiUrl: '10.80.161.222:3000/signup/quick',
    callType: ApiCallType.POST,
    headers: {},
    params: {},
    bodyType: BodyType.JSON,
    returnResponse: true,
  );
}
