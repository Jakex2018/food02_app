import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
AppBar AppBarBuild() {
    return AppBarHome();
  }

// ignore: non_constant_identifier_names
AppBar AppBarHome() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    leading: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios),color: Colors.black,alignment: Alignment.centerLeft,iconSize: 24,),
    actions: [
      IconButton(onPressed: (){}, icon: const Icon(Icons.search) ,color:Colors.black,alignment: Alignment.center, iconSize: 24,)
    ],
  );
}