
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Example.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ExampleController exampleController =Get.put(ExampleController());

  double opacity = 0.4;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override

  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
        title: Text('getx tutorial'),
      ),
      body: Column(
        children: [
        Obx(( )=>
        Container(
           height: 200,
           width: 200,
           color: Colors.blue.withOpacity(exampleController.opacity.value),
         )),
          Obx(( )=>
              Slider(value: exampleController.opacity.value, onChanged: (value){

                exampleController.setOpacity(value);

              })
              ),

        ],
      ),



     /* floatingActionButton: FloatingActionButton(
     onPressed: (){
       controller.incrementCounter();
       setState(() {
      controller.incrementCounter();
       });
     },
   ),*/
    );
  }
}
