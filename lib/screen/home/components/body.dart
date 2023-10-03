import 'package:flutter/material.dart';
import 'package:food02_app/constant.dart';
import 'package:food02_app/screen/food/screen_food.dart';
import 'package:food02_app/screen/home/components/category_list.dart';
import 'package:food02_app/screen/home/components/home_description_icon.dart';
import 'package:food02_app/screen/home/components/home_restaurant.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              HomeRestaurant(),
              HomeDescriptionIcon(),
              CategoryList(
                color: kPrimaryColor,
                color2: kListLightColor,
                categories: ['Recomended', 'Popular', 'Noodles', 'Pizzas'],
                number: 15,
              ),
              SizedBox(
                height: 10,
              ),
              HomeFoodCard(),
              SizedBox(height: 20,),
              HomeFoodCard(),
              SizedBox(height: 20,),
              HomeFoodCard(),
              Padding(
                padding: EdgeInsets.only(left: 260, top: 20),
                child: CircleAvatar(
                  backgroundColor: kPrimaryColor,
                  child: Icon(Icons.badge,color: Colors.black),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HomeFoodCard extends StatelessWidget {
  const HomeFoodCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const ScreenFood(),));
        },
        child: Stack(
          children: [
            Container(
              height: 140,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)),
            ),
            Positioned(
              top: 20,
              left: 10,
              child: Row(
                children: [
                  Image.asset('assets/images/plato.png' , height: 100,),
                  const Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Chicken Lunch' , style: TextStyle(
                          color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20
                        ),),
                        SizedBox(height: 5,),
                        Text('N1 on Sales',style: TextStyle(
                          color:kPrimaryColor,fontWeight: FontWeight.bold,fontSize: 15
                        ),),
                        SizedBox(height: 10,),
                        Text('\$12' ,style: TextStyle(
                          color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16
                        ),)
                      ],
                    ),
                  )
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
