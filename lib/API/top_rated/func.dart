import 'dart:convert';

import 'package:bloc_learn/API/top_rated/result.dart';
import 'package:bloc_learn/API/top_rated/top_rated.dart';
import 'package:bloc_learn/core/constants.dart';
import 'package:http/http.dart' as http;
import 'package:bloc_learn/infrastructure/api_key.dart';

Future<List<Result>> getTopRated() async {
  var getresult =
      await http.get(Uri.parse('$domain/movie/top_rated?api_key=$apiKey'));
  if (getresult.statusCode == 200) {
    var responce = jsonDecode(getresult.body);
    var result = TopRated.fromJson(responce);
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
