import 'package:flutter/material.dart';
import 'package:food02_app/constant.dart';
import 'package:food02_app/screen/home/components/category_list.dart';

class HomeRestaurant extends StatelessWidget {
  const HomeRestaurant({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 13),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text('Restaurant',style: TextStyle(
                  color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold
                ),),
              ),
               CircleAvatar(
                backgroundColor: Colors.white,
                child: Text('R' ,style: TextStyle(
                  fontWeight: FontWeight.bold,color: Colors.black,fontSize: 28
                ),),
          ),
            ],
          ),
        
          CategoryList(color: kListColor, color2: kListLightColor, categories: [
            '20-30 min','2.4 km','Restaurant'
          ], number: 8,)
        ],
      ),
    );
  }
}