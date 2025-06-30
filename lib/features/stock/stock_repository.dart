import 'dart:convert';
import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:houlala_app/features/stock/stock.dart';
import 'package:http/http.dart';

class StockRepository {

  Future<Stock> fetchProductStock(int id) async {
    final Response response =
        await get(Uri.parse('${dotenv.env['STOCK_URL']}/$id'));

    if (response.statusCode != HttpStatus.ok) {
      throw const HttpException(
          'les informations recherchees ne sont pas disponibles.');
    }

    return Stock.fromJson(jsonDecode(response.body));
  }

  Future<Response> increaseProductQuantity(int id, int quantity) async {
    var url = '${dotenv.env['STOCK_URL']}/increase/$id/quantities/$quantity';

    return await _editStockQuantity(url);
  }

  Future<Response> decreaseProductQuantity(int id, int quantity) async {
    var url = '${dotenv.env['STOCK_URL']}/decrease/$id/quantities/$quantity';

    return await _editStockQuantity(url);
  }

  Future<Response> _editStockQuantity(String url) async {
    final Response response =
        await put(Uri.parse(url), headers: <String, String> {
          'Content-Type': 'application/json; charset=UTF-8',
        }, body: null );

    if (response.statusCode != HttpStatus.noContent) {
      throw const HttpException("Erreur lors de la mise a jour des Stocks");
    }

    return response;
  }
}
