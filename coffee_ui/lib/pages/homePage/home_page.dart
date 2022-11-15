import 'package:coffee_ui/pages/homePage/Widgets%20in%20homePage/coffee_type.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Widgets in homePage/coffee_tile.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List coffeeType = [
    // [ coffee type, isSelected ]
    [
      'Cappuchino',
      true,
    ],
    [
      'Latte',
      false,
    ],
    [
      'Black',
      false,
    ],
    [
      'Tea',
      false,
    ],

  ];

  void coffeeTypeSelected(int index) {
    setState(() {
      for(int i = 0; i < coffeeType.length; i++) {
        coffeeType[i][1] = false;
      }
      coffeeType[index][1] = true;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(Icons.person),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text('Find the best coffee for you', style: GoogleFonts.bebasNeue(fontSize: 56),),
          ),

          SizedBox(height: 25,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Find your coffee...',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
              ),
            ),
          ),

          SizedBox(height: 25,),

          Container(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: coffeeType.length,
                itemBuilder: (context, index) {
              return CoffeeType(
                  coffeeType: coffeeType[index][0],
                  isSelected: coffeeType[index][1],
                  onTap: () {
                    coffeeTypeSelected(index);
                  },
              );
            })
          ),

          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CoffeeTile(
                  coffeeImagePath: 'assets/images/latte(1X1).jpg',
                  coffeeName: 'Latte',
                  coffeePrice: '4.20',
                ),
                CoffeeTile(
                  coffeeImagePath: 'assets/images/capuchino1x1.jpg',
                  coffeeName: 'Cappuccino',
                  coffeePrice: '4.10',
                ),
                CoffeeTile(
                  coffeeImagePath: 'assets/images/milk1x1.jpg',
                  coffeeName: 'Milk Coffee thing',
                  coffeePrice: '4.60',
                ),

              ],
            ),
          )

        ],
      ),
    );
  }
}
