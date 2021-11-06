import 'package:flutter/material.dart';

import 'package:myapp/pract.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title:const Text("FoodApp"),
        // centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          iconSize: 30,
          onPressed: () {},
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Icon(
              Icons.account_circle,
              size: 30,
            ),
          )
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.purple, Colors.red],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft)),
        ),
        backgroundColor: Colors.orange,
        title: const TextField(
          autocorrect: true,
          decoration: InputDecoration(
            hintText: 'Type Food Here...',
            hintStyle: TextStyle(color: Colors.grey),
            filled: true,
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              borderSide: BorderSide(color: Colors.white, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        ),

        elevation: 4,
        titleSpacing: 0,
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.purple.withOpacity(.99),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (value) {
          // Respond to item press.
        },
        items: const [
          BottomNavigationBarItem(
            title: Text('Home'),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text('shop'),
            icon: Icon(Icons.shopping_cart_sharp),
          ),
          BottomNavigationBarItem(
            title: Text('Menu'),
            icon: Icon(Icons.menu_book_sharp),
          ),
          BottomNavigationBarItem(
            title: Text('pace'),
            icon: Icon(Icons.location_pin),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: const [
              CategoryItem(title: " All Food", active: true),
              CategoryItem(title: "Pizza"),
              CategoryItem(title: "Burgers"),
            ],
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,

          Wrap(
            direction: Axis.horizontal,
            spacing: 20.0,
            runSpacing: 20,
            children: [
              buildBurger(),
              buildBurger(),
              buildBurger(),
              buildBurger(),
            ],
          )
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String title;
  final bool active;
  const CategoryItem({
    Key? key,
    required this.title,
    this.active = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        children: [
          Text(title,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold)),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            height: 3,
            width: 26,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
          )
        ],
      ),
    );
  }
}
