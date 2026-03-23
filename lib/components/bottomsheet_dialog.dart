import 'package:flutter/material.dart';
import 'package:get/get.dart';

void displayBottomSheetDialog() {
  Get.bottomSheet(
    Container(
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
      ),
      child: Column(
        children: [
          Container(height: 2, width: 100, color: Colors.black54,),
          SizedBox(height: 20,),
          Text("BottomSheet Title", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          SizedBox(height: 15,),
          Text("This is BottomSheet content. If you like the design please hit Like button else Cancel button.", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(onPressed: (){}, child: Text("Cancel")),
              ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(backgroundColor: Colors.purple), child: Text("Like", style: TextStyle(color: Colors.white),),)
            ],
          )
        ],
      ),
    )
  );
}