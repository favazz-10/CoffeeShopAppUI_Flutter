import 'package:coffee_shop_app/Widgets/CoffeeCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_point_tab_bar/pointTabBar.dart';
import '../Widgets/BottomNav.dart';
import '../Widgets/Drawer.dart';
import '../Widgets/SpecialCoffeeCard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController tabController;
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    tabController = TabController(length: 6, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _key,
        drawer: MyDrawer(),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.all(20),
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 620,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            _key.currentState?.openDrawer();
                          },
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Color(0xFF1b2027),
                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              Icons.menu,
                              color: Color(0xFF4d4f52),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.53,
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Color(0xFF1b2027),
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(
                            Icons.shopping_cart,
                            color: Color(0xFF4d4f52),
                          ),
                        ),
                        Image.asset(
                          'assets/images/avatar.png',
                          height: 40,
                          width: 40,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Find the best\nCoffee for you',
                      style: TextStyle(
                          letterSpacing: 1,
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 5),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Color(0xff141921),
                          borderRadius: BorderRadius.circular(15)),
                      child: TextField(
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                            hintText: 'Find your coffee...',
                            hintStyle: TextStyle(
                              color: Color(0xff3c4046),
                            ),
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey[600],
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: TabBar(
                          controller: tabController,
                          isScrollable: true,
                          indicator: PointTabIndicator(
                            color: Color(0xffd17842),
                            insets: EdgeInsets.only(bottom: 6),
                          ),
                          labelColor: Color(0xffd17842),
                          labelStyle: TextStyle(fontWeight: FontWeight.bold),
                          unselectedLabelColor: Color(0xff3c4846),
                          tabs: [
                            Tab(
                              text: 'Cappuccino',
                            ),
                            Tab(
                              text: 'Americano',
                            ),
                            Tab(
                              text: 'Espresso',
                            ),
                            Tab(
                              text: 'Mocha',
                            ),
                            Tab(
                              text: 'Machiatto',
                            ),
                            Tab(
                              text: 'Doppio',
                            ),
                          ]),
                    ),
                    Container(width: MediaQuery.of(context).size.width,
                      height: 300,
                      child: TabBarView(
                        controller: tabController,
                        children: [
                          CoffeeCard(),
                          Text('2dvs'),
                          Text('3sdvs'),
                          Text('4sdvs'),
                          Text('5sdvs'),
                          Text('6sdvs'),
                        ],
                      ),
                    ),
                    Text(
                      'Special for you',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                  ],
                ),
              ),
              SpecialCoffeeCard()
            ],
          ),
        ),
        bottomNavigationBar: BottomNav());
  }
}

