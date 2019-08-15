import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter_flavors/config/flavor_config.dart';
import 'package:flutter_flavors/data/model.dart';
import 'package:http/http.dart';

class PhotoApi {
  final String _url = FlavorConfig.instance.values.apiUrl;

  final String _baseUrl = FlavorConfig.isProduction() ? 'jsonplaceholder.typicode.com'  : 'api.myjson.com';

  Photo photoResponse;

  Future<List<Photo>> getphotos() async {
    final uri = Uri.http(_baseUrl, _url);
    final response = await _getJson(uri);
    if (response == null) {
      return null;
    }
    return _convert(response);
  }

  Future<List<dynamic>> _getJson(Uri uri) async {
    try {
      var response = await get(uri);
      print('the url is ${uri.toString()}');
      if (response.statusCode == HttpStatus.ok) {
        print(response.body);
        return json.decode(response.body);
      } else {
        print('($uri) status code is ${response.statusCode}');
        return null;
      }
    } on Exception catch (e) {
      print('($uri) exception thrown $e');
      return null;
    }
  }

  List<Photo> _convert(List boardItemsJson) {
    List<Photo> menuItems = <Photo>[];
    boardItemsJson.forEach((item) {
      menuItems.add(Photo.fromJson(item));
    });
    return menuItems;
  }
}
