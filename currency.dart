import 'package:http/http.dart' as http;
import 'dart:convert';

export 'currency.dart';

Future<String> getCurrency({String currency = "USD", int amount = 1}) async {
  currency = currency.toUpperCase();
  var response =
      await http.get(Uri.parse("https://www.cbr-xml-daily.ru/daily_json.js"));
  Map decoded = json.decode(response.body) as Map;
  var calculated = decoded["Valute"][currency]["Value"] * amount;
  return "${currency}: ${calculated}";
}
