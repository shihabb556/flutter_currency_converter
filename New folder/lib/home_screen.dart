import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_controller.dart';
import 'package:get/get.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
                  if(controller.homeInProgress==true){
                    return Text("No Data Found");
                  }
                  return ListView.builder(
                    itemCount: controller.postModel.length,
                    itemBuilder: (context, index) {
                      final data =controller.postModel[index];
                      return Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.lightBlue,width: 2),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 17),
                          child: Column(
                            crossAxisAlignment: .start,
                            mainAxisSize: .min,
                            children: [
                              Text("User id: ${data.userId}", style: TextStyle(fontSize: 16,fontWeight: .w500),),
                              Text("id: ${data.id}", style: TextStyle(fontSize: 16, fontWeight: .w500),),
                              Text("title ${data.title}", style: TextStyle(fontSize: 16,fontWeight: .w500),),
                              Text("body ${data.body}",style: TextStyle(fontWeight: .w500, fontSize: 16),)
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
      ),

    );
  }
}
