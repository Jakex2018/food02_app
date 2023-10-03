import 'package:flutter/material.dart';
import 'package:food02_app/constant.dart';
class HomeDescriptionIcon extends StatelessWidget {
  const HomeDescriptionIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Orange is so delicuis dsdsdd',style: TextStyle(
            color: Colors.black,fontWeight: FontWeight.bold
          ),),
          Row(
            children: [
              Icon(Icons.star, color: kPrimaryColor,),
              Text('4.7',style: TextStyle(
                color: Colors.black,fontWeight: FontWeight.bold
              ),)
            ],
          )
        ],
      ),
    );
  }
}