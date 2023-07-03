import 'dart:convert';

import 'package:bloc_learn/API/trending/result.dart';
import 'package:bloc_learn/API/trending/trending.dart';
import 'package:bloc_learn/core/constants.dart';
import 'package:bloc_learn/infrastructure/api_key.dart';
import 'package:http/http.dart' as http;
Future<List<dynamic>> getTrending()async {
  var getresult =
      await http.get(Uri.parse('$domain/movie/upcoming?api_key=$apiKey'));
  if (getresult.statusCode == 200) {
    var responce = jsonDecode(getresult.body);
    var result = Trending.fromJson(responce);
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
