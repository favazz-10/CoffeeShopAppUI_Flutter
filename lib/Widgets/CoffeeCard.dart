import 'package:flutter/material.dart';

import 'CoffeeDetails.dart';

class CoffeeCard extends StatelessWidget {
  List<String> images = [
    'assets/images/cappu3.jpg',
    'assets/images/cappu2.jpg',
    'assets/images/cappu1.jpg',
    'assets/images/cappu4.jpg',
  ];
  List<String> ingredients = [
    'With Oat Milk',
    'With Cinnamon Powder',
    'With Chocolate Powder',
    'With Caramel Drizzle'
  ];
  List<String> price = ['4.00', '5.00', '9.50', '7.60'];

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>CoffeeDetails()));
        },
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Container(
                    height: 250,
                    width: 160,
                    decoration: BoxDecoration(
                        color: Color(0xff242931),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 135,
                          width: 143,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage(images[index]),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Cappuccino',
                                    style:
                                        TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    ingredients[index],
                                    style: TextStyle(
                                        color: Color(0xff919293), fontSize: 11),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(children: [Text(
                                        '\$',
                                        style: TextStyle(
                                            color: Color(0xffd17842),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                        Text(
                                          '${price[index]}',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),],),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color(0xffd17842)),
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  )
                ],
              );
            }),
      ),
    );
  }
}
