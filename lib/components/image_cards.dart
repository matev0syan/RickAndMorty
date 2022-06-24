import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

var response;
String name = '';

void NameRespon() async {
  Dio dio = Dio();

  response = await dio.get('https://rickandmortyapi.com/api/character/23');
  print(response.data['name']);
  name = '${response.data['name']}';
}

class ImageCards extends StatelessWidget {
  const ImageCards({Key? key, this.imgUrl = ''}) : super(key: key);
  final String imgUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 350,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          decoration: BoxDecoration(
              color: Color.fromARGB(57, 158, 158, 158),
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              Image.network(
                imgUrl,
                fit: BoxFit.cover,
              ),
              Text(
                '${name}',
                style: TextStyle(color: Colors.red),
              ),
              Text(
                'Alive',
                style: TextStyle(color: Colors.red),
              ),
              // Text(
              //   'Loction',
              //   style: TextStyle(color: Colors.red),
              // ),
              // Text(
              //   'loc',
              //   style: TextStyle(color: Colors.red),
              // ),
              // Text(
              //   'First seen',
              //   style: TextStyle(color: Colors.red),
              // ),
              // Text(
              //   'Place',
              //   style: TextStyle(color: Colors.red),
              // ),
              IconButton(
                  onPressed: () {
                    NameRespon();
                  },
                  icon: Icon(Icons.person_pin))
            ],
          ),
        ),
      ),
    );
  }
}
