import 'dart:convert';

import 'package:flutter_application_1/api_service.dart';
import 'package:flutter_application_1/post_model.dart';
import 'package:get/get_state_manager/get_state_manager.dart';


class HomeController extends GetxController {
  bool _homeInProgress=false;
  bool get homeInProgress => _homeInProgress;
  List<PostModel> postModel=[];

  Future<void> viewData()async{
    _homeInProgress=true;
    update();
    try{
      final response =await ApiService.getApiServic("https://jsonplaceholder.typicode.com/posts");
      if(response != null ){
        List<dynamic> decodedResponse= jsonDecode(response.body);
        for(var item in decodedResponse){
          
          postModel.add(PostModel.fromJson(item));
          // print('print data ---postModel-- ${item}');
        }
      }else{
        print("no data ------ ${response}");
      }
    }catch(e){
      throw "Erorr is $e";
    }
    finally{
      _homeInProgress=false;
      update();
    }
  }
  // const HomeController({super.key});

  @override
  void onInit(){
    super.onInit();
    viewData();
  }
}



