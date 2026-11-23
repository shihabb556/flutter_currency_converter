// import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  static Future<dynamic> getApiServic(String url) async{
    try{
      final response = await http.get(Uri.parse(url),headers:{"Content-type" :"Application/json"} );
      return response ;
    }
    catch (e){
      print("error is $e");
    }
  }
}