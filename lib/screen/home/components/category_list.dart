

import 'package:flutter/material.dart';
class CategoryList extends StatefulWidget {
  const CategoryList({super.key, required this.color, required this.color2, required this.categories, required this.number});
  final Color color;
  final Color color2;
  final List<String> categories;
  final double number;
  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 7),
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.categories.length,
        itemBuilder: (BuildContext context, int index) => GestureDetector(
          onTap: () {
            setState(() {
              selectIndex = index; 
            });
          },
          child: Container(
            
            alignment: Alignment.center,
            padding:EdgeInsets.symmetric(horizontal:widget.number),
            margin: EdgeInsets.only(left: 5 ,
              right: index == widget.categories.length -1 ? 10: 0),
            decoration: BoxDecoration(
              color: index == selectIndex ? widget.color: widget.color2,
              borderRadius: BorderRadius.circular(15)
            ),
            child:Text(widget.categories[index], style: const TextStyle(
              color: Colors.white
            ),),
          ),
        ),
      ),
    );
  }
}