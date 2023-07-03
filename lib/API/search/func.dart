


import 'dart:convert';

import 'package:bloc_learn/API/downloads/result.dart';
import 'package:bloc_learn/API/search/search.dart';
import 'package:bloc_learn/core/constants.dart';
import 'package:bloc_learn/infrastructure/api_key.dart';
import 'package:http/http.dart' as http;



Future<List<dynamic>> getSearchResult(String text) async {
  var getresult =
  await http.get(Uri.parse('$domain/search/movie?query=$text'));
  if (getresult.statusCode == 200) {
    var responce = jsonDecode(getresult.body);
    var result = Search.fromJson(responce);
    if (result.results != null) {
      return result.results!;
    } else {
      List<Result> empty = [];
      return empty;
    }
  } else {
    return [];
  }
}

Future<List<dynamic>> getSearchResul(String search) async {
  final response = await http.get(Uri.parse(
      '$domain/search/movie?api_key=$apiKey&query=$search'));

  if (response.statusCode == 200) {
    final jsondata = jsonDecode(response.body);
    final result = Search.fromJson(jsondata);
    if (result.results != null) {
      return result.results!;
    }
  }

  List<Result> empty = [];
  return empty;
}
