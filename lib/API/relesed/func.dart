import 'dart:convert';

import 'package:bloc_learn/API/downloads/result.dart';
import 'package:bloc_learn/API/relesed/relesed.dart';
import 'package:bloc_learn/core/constants.dart';
import 'package:bloc_learn/infrastructure/api_key.dart';
import 'package:http/http.dart' as http;

Future<List<dynamic>> getRealeased() async {

  
  try {
    var getresult =
      await http.get(Uri.parse('$domain/movie/popular?api_key=$apiKey'));
  if (getresult.statusCode == 200) {
    var responce = jsonDecode(getresult.body);
    var result = Relesed.fromJson(responce);
    if (result.results != null) {
      return result.results!;
    } else {
      List<Result> empty = [];
      return empty;
    }
  } else {
    return [];
  }
  } catch (e) {
    print('some error occured$e');
    return [];
  }
}
