import 'dart:convert';
import 'dart:io';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import '../model/seller.dart';

class SellerRepository {
  Future<List<Seller>> fetchSellers() async {
    String? uri = dotenv.env['SELLER_URL'];
    final Response response = await get(Uri.parse(uri!));
    if (response.statusCode == HttpStatus.ok) {
      List<dynamic> body = jsonDecode(response.body);
      List<Seller> sellers =
          body.map((dynamic seller) => Seller.fromJson(seller)).toList();
      return sellers;
    } else {
      throw 'no sellers';
    }
  }
}
