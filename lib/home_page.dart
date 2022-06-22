import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.black,
        extendBody: true,
        body: Center(
          child: ListView(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Rick and Morti API'),
                Image.network(
                  'https://rickandmortyapi.com/api/character/avatar/23.jpeg',
                  height: 500,
                  width: 100,
                ),
                Image.network(
                    'https://rickandmortyapi.com/api/character/avatar/617.jpeg'),
                Image.network(
                    'https://rickandmortyapi.com/api/character/avatar/341.jpeg'),
                Image.network(
                    'https://rickandmortyapi.com/api/character/avatar/736.jpeg'),
                Image.network(
                    'https://rickandmortyapi.com/api/character/avatar/422.jpeg'),
                Image.network(
                    'https://rickandmortyapi.com/api/character/avatar/772.jpeg'),
              ],
            ),
          ]),
        ));
  }
}
