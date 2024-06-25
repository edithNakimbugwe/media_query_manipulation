import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: _mediaQuery.size.width * 0.333,
            decoration: const BoxDecoration(color: Colors.black),
          ),
          Container(
            width: _mediaQuery.size.width * 0.333,
            decoration: const BoxDecoration(color: Colors.yellow),
          ),
          Container(
            width: _mediaQuery.size.width * 0.333,
            decoration: const BoxDecoration(color: Colors.red),
          )
        ],
      ),
    );
  }
}
