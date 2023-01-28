import 'package:flutter/material.dart';

class SpecialCoffeeCard extends StatelessWidget {
  List<String> simages = [
    'assets/images/cappu4.jpg',
    'assets/images/cappu2.jpg',
    'assets/images/cappu3.jpg'
  ];
  List<String> coffeename = [
    'Caramel Machiatto',
    'Turkish Coffee',
    'Cafe Special'
  ];
  List<String> ingredients = [
    'Ice, Caramel, Espresso',
    'Turkish Coffee, Sugar',
    'Ground  Coffee, Water'
  ];
  List<String> price = ['4.50', '7.50', '9.00'];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: simages.length,
        itemBuilder: (context, index){
          return Column(
            children: [
              Container(
                height: 140,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 120,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          image: DecorationImage(
                              image: AssetImage(
                                  simages[index]),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.045,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          coffeename[index],
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          ingredients[index],
                          style: TextStyle(
                              color: Color(0xff919293), fontSize: 12),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  '\$ ',
                                  style: TextStyle(
                                      color: Color(0xffd17842),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Text(
                                  "${price[index]}",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 69,
                            ),
                            Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: Color(0xffd17842),
                                    borderRadius:
                                    BorderRadius.circular(10)),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 20,
                                ))
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: Color(0xff141921),
                    borderRadius: BorderRadius.circular(20)),
              ),
              SizedBox(height: 15,),
            ],
          );
        });
  }
}