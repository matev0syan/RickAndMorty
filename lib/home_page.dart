import 'package:flutter/material.dart';

import 'image_cards.dart';

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
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: const Text(
                  'Rick and Morti API',
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
              ),
              Container(
                width: double.infinity,
                child: Row(
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
        ]),
      ),
    );
  }
}
