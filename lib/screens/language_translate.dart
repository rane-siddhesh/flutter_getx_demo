import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageTranslate extends StatelessWidget{
  const LanguageTranslate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Translation"),),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(shape: BoxShape.rectangle, color: Colors.black38, borderRadius: BorderRadius.circular(15)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('header'.tr, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              SizedBox(height: 15,),
              Text('content'.tr, style: TextStyle(color: Colors.white),),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    Get.updateLocale(Locale('hi'));
                  }, style: ElevatedButton.styleFrom(backgroundColor: Colors.purple), child: Text("Hindi", style: TextStyle(color: Colors.white),),),
                  ElevatedButton(onPressed: (){
                    Get.updateLocale(Locale('en'));
                  }, style: ElevatedButton.styleFrom(backgroundColor: Colors.pink), child: Text("English", style: TextStyle(color: Colors.white),),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}