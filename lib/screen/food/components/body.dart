import 'package:flutter/material.dart';
import 'package:food02_app/constant.dart';
class BodyFood extends StatelessWidget {
  const BodyFood({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          // ignore: sized_box_for_whitespace
          Container(
            height: MediaQuery.of(context).size.height,
            child: Image.asset('assets/images/bg_app.jpg',
            fit: BoxFit.cover),
          ),
          Positioned(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: aDefaultPadding,vertical: aDefaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon:const Icon(Icons.arrow_back,color: Colors.white, size: 30,)),
                  IconButton(onPressed: (){}, icon:const Icon(Icons.favorite,color: Colors.white,size: 30)),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height*0.69,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft:Radius.circular(100),
                  topRight:Radius.circular(100)
                ),
                color: kbackgroundColor
              ),
            ),
          ),
          Positioned(
            top:100,
            left: 20,
            child: Column(
              children: [
                Image.asset('assets/images/plato.png', height: 250,),
                const SizedBox(height: 5,),
                const Text('Chicken Eat',style: TextStyle(
                  color: Colors.black,fontSize: 35,fontWeight: FontWeight.bold
                ),textAlign: TextAlign.center),
                const SizedBox(height: 10,),
                const FoodInfoAndInfoContent(),
                const SizedBox(height: 30,),
                const FoodPriceAndCount(),
                // ignore: prefer_const_constructors
                SizedBox(height: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Ingredients',style: TextStyle(
                      color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20
                    ),),
                    const SizedBox(height: 20,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FoodIngredientsCard(),
                        SizedBox(width: 10,),
                        FoodIngredientsCard(),
                        SizedBox(width: 10,),
                        FoodIngredientsCard(),
                      ],
                    ),
                    Container(
                      width: 80,
                      height: 30,
                      margin: const EdgeInsets.only(left: 240,top: 20),
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal:12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.badge,color: Colors.black,),
                            SizedBox(width: 10,),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 11,
                              child: Text('1',style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FoodIngredientsCard extends StatelessWidget {
  const FoodIngredientsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 110,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color:Colors.white
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
            child: Column(
              children: [
                Image.asset('assets/images/plato.png',height: 70,),
                const Text('Noodle',style: TextStyle(
                  color: Colors.black,fontWeight: FontWeight.bold
                ),)
              ],
            ),
          ),
        )
      ],
    );
  }
}

class FoodPriceAndCount extends StatelessWidget {
  const FoodPriceAndCount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 180,
          height: 40,
          decoration: BoxDecoration(
            color: kListLightColor,
            borderRadius: BorderRadius.circular(20)
          ),
        ),
        const Positioned(
          top:10,
          left: 10,
          child: Center(
            child: Text('\$12',style: TextStyle(
              color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18
            ),),
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: Container(
            width: 130,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: kPrimaryColor,
            ),
            child: Row(
              children: [
                IconButton(onPressed:(){} ,icon: const Icon(Icons.remove,color: Colors.black,)),
                const CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: Text('1',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                ),
                IconButton(onPressed: (){}, icon:const Icon(Icons.add,color:Colors.black))
              ],
            ),
          ),
        )
      ],
    );
  }
}

class FoodInfoAndInfoContent extends StatelessWidget {
  const FoodInfoAndInfoContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        FoodIconAndInfo(icon: Icon(Icons.lock,color: Colors.green,), title: '50 min'),
        SizedBox(width: 10,),
        FoodIconAndInfo(icon: Icon(Icons.star,color: Colors.yellow,), title: '4.8'),
        SizedBox(width: 10,),
        FoodIconAndInfo(icon: Icon(Icons.fire_extinguisher,color: Colors.red,), title: '50 kcal')
      ],
    );
  }
}

class FoodIconAndInfo extends StatelessWidget {
  const FoodIconAndInfo({
    super.key, required this.icon, required this.title,
  });
  final Icon icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        Text(title,style:const TextStyle(
          color:Colors.black,fontWeight: FontWeight.bold,fontSize: 14
        ),)
      ],
    );
  }
}