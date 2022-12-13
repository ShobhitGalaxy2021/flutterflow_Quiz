import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _accessToken = prefs.getString('ff_accessToken') ?? _accessToken;
    _staticSuccessValue =
        prefs.getString('ff_staticSuccessValue') ?? _staticSuccessValue;
    _completeValue = prefs.getString('ff_completeValue') ?? _completeValue;
    if (prefs.containsKey('ff_StaticjsonForDashboard')) {
      try {
        _StaticjsonForDashboard =
            jsonDecode(prefs.getString('ff_StaticjsonForDashboard') ?? '');
      } catch (e) {
        print("Can't decode persisted json. Error: $e.");
      }
    }

    _selectedItem = prefs.getString('ff_selectedItem') ?? _selectedItem;
    _updateProfileStatus =
        prefs.getString('ff_updateProfileStatus') ?? _updateProfileStatus;
    if (prefs.containsKey('ff_LoginStaticValue')) {
      try {
        _LoginStaticValue =
            jsonDecode(prefs.getString('ff_LoginStaticValue') ?? '');
      } catch (e) {
        print("Can't decode persisted json. Error: $e.");
      }
    }

    _QuestionNumber = prefs.getString('ff_QuestionNumber') ?? _QuestionNumber;
  }

  late SharedPreferences prefs;

  String _accessToken = '';
  String get accessToken => _accessToken;
  set accessToken(String _value) {
    notifyListeners();

    _accessToken = _value;
    prefs.setString('ff_accessToken', _value);
  }

  String _staticSuccessValue = '';
  String get staticSuccessValue => _staticSuccessValue;
  set staticSuccessValue(String _value) {
    notifyListeners();

    _staticSuccessValue = _value;
    prefs.setString('ff_staticSuccessValue', _value);
  }

  String _completeValue = '';
  String get completeValue => _completeValue;
  set completeValue(String _value) {
    notifyListeners();

    _completeValue = _value;
    prefs.setString('ff_completeValue', _value);
  }

  dynamic _StaticjsonForDashboard = jsonDecode(
      '{\"forLetMeComplete\":\"2\",\"forCompleted\":\"3\",\"message\":\"Profile found.\",\"editprofileStatusValue\":\"true\",\"given_ans\":\"\",\"total_result\":\"pass\"}');
  dynamic get StaticjsonForDashboard => _StaticjsonForDashboard;
  set StaticjsonForDashboard(dynamic _value) {
    notifyListeners();

    _StaticjsonForDashboard = _value;
    prefs.setString('ff_StaticjsonForDashboard', jsonEncode(_value));
  }

  String _selectedItem = '\"true\"';
  String get selectedItem => _selectedItem;
  set selectedItem(String _value) {
    notifyListeners();

    _selectedItem = _value;
    prefs.setString('ff_selectedItem', _value);
  }

  String _updateProfileStatus = '';
  String get updateProfileStatus => _updateProfileStatus;
  set updateProfileStatus(String _value) {
    notifyListeners();

    _updateProfileStatus = _value;
    prefs.setString('ff_updateProfileStatus', _value);
  }

  String _array = '';
  String get array => _array;
  set array(String _value) {
    notifyListeners();

    _array = _value;
  }

  dynamic _LoginStaticValue = jsonDecode(
      '{\"response\":\"S\",\"message\":\"Logged in successfully\",\"errors\":[],\"data\":{\"user_id\":\"1165\",\"access_token\":\"sbdXgbjhrrIuLHbe6oH9btGeVxiVaMBtlnp0269epcy6NCQ3IMq6g3HTdkEqkJtM\",\"roles\":[\"3\"]}}');
  dynamic get LoginStaticValue => _LoginStaticValue;
  set LoginStaticValue(dynamic _value) {
    notifyListeners();

    _LoginStaticValue = _value;
    prefs.setString('ff_LoginStaticValue', jsonEncode(_value));
  }

  String _QuestionNumber = '1';
  String get QuestionNumber => _QuestionNumber;
  set QuestionNumber(String _value) {
    notifyListeners();

    _QuestionNumber = _value;
    prefs.setString('ff_QuestionNumber', _value);
  }

  String _questionId = '3790';
  String get questionId => _questionId;
  set questionId(String _value) {
    notifyListeners();

    _questionId = _value;
  }

  dynamic _testDetail;
  dynamic get testDetail => _testDetail;
  set testDetail(dynamic _value) {
    notifyListeners();

    _testDetail = _value;
  }

  dynamic _studentTestStatus;
  dynamic get studentTestStatus => _studentTestStatus;
  set studentTestStatus(dynamic _value) {
    notifyListeners();

    _studentTestStatus = _value;
  }

  dynamic _questionJson = jsonDecode(
      '{\"data\":{\"all_in_one\":{},\"test\":{},\"questions\":{\"1\":{\"question_id\":\"3791\",\"questopn_type\":\"5\",\"is_flagged\":0,\"is_skipped\":0,\"text\":\"Loadiing.......\",\"sub_question_type\":\"null\",\"essayId\":\"3745\",\"question_attempt_status\":\"true\",\"explanation_description\":\"\",\"essay_content\":\"\",\"is_assay_avail\":0,\"given_ans\":\"\\\"\\\"\",\"correct_options\":[\"B\"],\"answer\":[{\"id\":\"A\",\"text\":\"True\",\"img\":\"\",\"option_explanation\":\"\"},{\"id\":\"B\",\"text\":\"False\",\"img\":\"\",\"option_explanation\":\"\"}]}}}}');
  dynamic get questionJson => _questionJson;
  set questionJson(dynamic _value) {
    notifyListeners();

    _questionJson = _value;
  }

  String _htmlText =
      '<p>\n<span style=\"color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font- size: 18px; font-style: normal; font-variant- ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text- stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration- color: initial; display: inline !important; float: none;\">React component names must begin with an uppercase letter. and</span></p>';
  String get htmlText => _htmlText;
  set htmlText(String _value) {
    notifyListeners();

    _htmlText = _value;
  }

  bool _showErrorMsg = false;
  bool get showErrorMsg => _showErrorMsg;
  set showErrorMsg(bool _value) {
    notifyListeners();

    _showErrorMsg = _value;
  }

  dynamic _studentDetail;
  dynamic get studentDetail => _studentDetail;
  set studentDetail(dynamic _value) {
    notifyListeners();

    _studentDetail = _value;
  }

  int _randomNum = 0;
  int get randomNum => _randomNum;
  set randomNum(int _value) {
    notifyListeners();

    _randomNum = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
