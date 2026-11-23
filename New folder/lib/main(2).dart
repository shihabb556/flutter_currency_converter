import 'package:get/get.dart';
import 'package:material_ui/material_ui.dart';
import 'package:new_code/home_screen.dart';

void main (){
  runApp(const Myapk());
}
class Myapk extends StatelessWidget {
  const Myapk({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(

      ),
    );
  }
}
