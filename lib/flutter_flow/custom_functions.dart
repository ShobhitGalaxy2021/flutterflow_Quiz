import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

dynamic returnSpe(dynamic customJson) {
  dynamic data = customJson;
  return data.res;
}

String returnSpecificString(String customString) {
  return customString;
  // Add your function code here!
}

List<String> objectToString(List<String> arrayString) {
  return ["1"];
}

String str2str(
  String str1,
  String str2,
) {
  // Add your function code here!

  return str1 + "hr" + " " + str2 + "min";
}

int test1(List<String>? jsonObj) {
  return 0;
}

dynamic returnStaticJson() {
  dynamic data = {
    "response": "1",
    "message": "Logged in successfully",
    "errors": [],
    "data": {
      "user_id": "1056",
      "access_token":
          "h8K4k6O8jf0ZTYLI0x4jaBHTEvmTuNFvkdRIjyC79qmVFqKHbNBCHRfTx79l36C4",
      "roles": ["3"]
    }
  };
  return data;
}

String addDotWhenTextIsLarge(String string) {
  if (string.length >= 10) {
    var r = string.replaceRange(10, string.length, '...');
    print(r);
    return r;
  } else {
    return string;
  }
}

dynamic testForQuestion(
  dynamic json,
  String? arrayIndex,
) {
  return json['data']['questions'][arrayIndex];
}

String addTwoString(String qustionSeries) {
  var b = qustionSeries; // A string
  var c = int.parse(b);
  var d = (int.parse(qustionSeries) + 1);
  String anotherValue = '$d';
  return anotherValue;
}

String minusFromOne(String number) {
  var b = number; // A string
  var c = int.parse(b);
  var d = (int.parse(number) - 1);
  String anotherValue = '$d';
  return anotherValue;
}

List<String>? joinTwostring(
  List<String> str1,
  List<String> str2,
) {
  var arr = ["ä"];
  for (var i = 0; i < str1.length; i++) {
    var data1 = '${str2[i]}';
    var data = '(GMT ${str1[i]})';
    arr.add(data + data1);
  }
  dynamic arr1 = arr.removeAt(0);
  return arr;
}

List<String>? joinTwostringCopy(
  List<String> str1,
  List<String> str2,
) {
  var arr = ["ä"];
  for (var i = 0; i < str1.length; i++) {
    var data1 = '${str2[i]}';
    var data = '(GMT ${str1[i]})';
    arr.add(data + data1);
  }
  dynamic arr1 = arr.removeAt(0);
  return arr;
}

int firndArraLength(List<dynamic> array) {
  var person = {"first_name": "Harry", "last_name": "Potter", "age": 14};
  var person1 = {
    "data": {
      "questions": {
        "1": {
          "question_id": "3791",
          "answer": [
            {"id": "A", "text": "True", "img": "", "option_explanation": ""},
            {"id": "B", "text": "False", "img": "", "option_explanation": ""}
          ]
        },
        "2": {
          "question_id": "3791",
          "answer": [
            {"id": "A", "text": "True", "img": "", "option_explanation": ""},
            {"id": "B", "text": "False", "img": "", "option_explanation": ""}
          ]
        },
      }
    }
  };
  return person1.length;
}

String nestedmap(
  dynamic array,
  String text,
) {
  var listArray = array['answer'] as List;
  for (var j = 0; j < listArray.length; j++) {
    if (listArray[j]["text"] == text) {
      return listArray[j]["id"];
    }
    if (listArray[j]["id"] == text) {
      return listArray[j]["text"];
    }
  }
  return 'nothing selected';
}

String htmlText(
  dynamic json,
  String index,
) {
  var text = json['data']['questions'][index]['text'];
  var texTNew =
      '<p>\n\t<span style=\"color: rgb(0, 0, 0); font-family: "Segoe UI", Arial, sans-serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">What is the correct command to create a new React project?</span></p>';
  String name = texTNew;
  RegExp exp = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);
  String parsedstring2 = text.replaceAll(exp, ' ');
  return index + '.' + parsedstring2;
}

String getHtmlQuestions(String questions) {
  var text = questions;

  RegExp exp = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);
  String parsedstring2 = text.replaceAll(exp, ' ');
  return parsedstring2;
}

String forSelectedOption() {
  return 'Option 3';
}
