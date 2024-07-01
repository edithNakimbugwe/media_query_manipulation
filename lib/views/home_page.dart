import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    // return Scaffold(
    //   body: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: [
    //       Container(
    //         width: _mediaQuery.size.width * 0.33,
    //         decoration: const BoxDecoration(color: Colors.black),
    //       ),
    //       Container(
    //         width: _mediaQuery.size.width * 0.333,
    //         decoration: const BoxDecoration(color: Colors.yellow),
    //       ),
    //       Container(
    //         width: _mediaQuery.size.width * 0.333,
    //         decoration: const BoxDecoration(color: Colors.red),
    //       )
    //     ],
    //   ),
    // );

    return Scaffold(
      body: Builder(builder: (context) {
        if (_mediaQuery.orientation == Orientation.portrait) {
          return portraitWidget(_mediaQuery.size);
        } else {
          return landscapeWidget(_mediaQuery.size);
        }
      }),
    );
  }

  Widget portraitWidget(Size size) {
    return Center(
      child: Container(
        width: size.width * 0.8,
        height: size.height * 0.8,
        decoration: const BoxDecoration(color: Colors.amber),
        child: const Center(child: Text('This is the Potrait view')),
      ),
    );
  }

  Widget landscapeWidget(Size size) {
    return Center(
      child: Container(
        width: size.width * 0.8,
        height: size.height * 0.8,
        decoration: const BoxDecoration(color: Colors.blue),
        child: const Center(child: Text('This is the Landscape HFFVDJFDHGJFGGFGFGJGFJFGFGFGFG view')),
      ),
    );
  }
}
