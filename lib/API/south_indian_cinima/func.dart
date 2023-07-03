import 'dart:convert';

import 'package:bloc_learn/API/south_indian_cinima/result.dart';
import 'package:bloc_learn/API/south_indian_cinima/south_indian_cinima.dart';
import 'package:bloc_learn/infrastructure/api_key.dart';
import 'package:http/http.dart' as http;
import '../../core/constants.dart';

Future<List<dynamic>> getTv() async {
  var getresult =
      await http.get(Uri.parse('$domain/trending/tv/day?api_key=$apiKey'));
  if (getresult.statusCode == 200) {
    var responce = jsonDecode(getresult.body);
    var result = SouthIndianCinima.fromJson(responce);
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
