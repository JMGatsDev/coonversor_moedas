import 'package:coonversor_moedas/Constants/constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CoinsRepository {
  Future<Map> getCoins(String coin) async {
    var request = await http.get(Uri.parse(Constants.getCoins));

    return jsonDecode(request.body)["results"]["currencies"][coin];
  }

  Future<Map> getCoinsTotal() async {
    var request = await http.get(Uri.parse(Constants.getCoins));

    return jsonDecode(request.body);
  }
}
