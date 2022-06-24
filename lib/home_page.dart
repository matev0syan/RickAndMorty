import 'package:flutter/material.dart';

import 'components/image_cards.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final screenHeight = MediaQuery.of(context).size.height;
    // final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: ListView(children: [
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: const Text(
                      'Rick and Morti API',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 0, 0),
                          fontSize: 40,
                          fontFamily: 'Arial'),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const ImageCards(
                          imgUrl:
                              'https://rickandmortyapi.com/api/character/avatar/23.jpeg',
                        ),
                        ImageCards(
                          imgUrl:
                              'https://rickandmortyapi.com/api/character/avatar/617.jpeg',
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ImageCards(
                        imgUrl:
                            'https://rickandmortyapi.com/api/character/avatar/341.jpeg',
                      ),
                      ImageCards(
                        imgUrl:
                            'https://rickandmortyapi.com/api/character/avatar/736.jpeg',
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ImageCards(
                        imgUrl:
                            'https://rickandmortyapi.com/api/character/avatar/422.jpeg',
                      ),
                      ImageCards(
                        imgUrl:
                            'https://rickandmortyapi.com/api/character/avatar/772.jpeg',
                      )
                    ],
                  )
                ],
              ),
            ),
          ]),
        ));
  }
}
