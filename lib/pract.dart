import 'package:flutter/material.dart';

class Pract extends StatelessWidget {
  const Pract({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: 200,
      height: 200,
      child: buildBurger(),
    );
  }
}

Widget buildBurger() {
  const urlBurger =
      'https://images.unsplash.com/photo-1586190848861-99aa4a171e90?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80';

  return ClipRRect(
    borderRadius: BorderRadius.circular(20),
    child: Container(
      padding: const EdgeInsets.all(12),
      color: const Color(0xFF010101),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(urlBurger,
              width: 100, height: 100, fit: BoxFit.contain),
          const Text(
            'Beef Burger',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Onion with cheese',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          const SizedBox(height: 8),
          const Text(
            '\$24.00',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    ),
  );
}
