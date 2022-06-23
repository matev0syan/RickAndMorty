import 'package:flutter/material.dart';

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
        child: Column(
          children: [
            Container(
              // borderRadius: BorderRadius.circular(20),
              //   child: SizedBox.fromSize(
              // size: const Size.fromRadius(40),
              child: Image.network(
                imgUrl,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              'Name',
              style: TextStyle(color: Colors.red),
            ),
            Text(
              'Alive',
              style: TextStyle(color: Colors.red),
            ),
            Text(
              'Loction',
              style: TextStyle(color: Colors.red),
            ),
            Text(
              'loc',
              style: TextStyle(color: Colors.red),
            ),
            Text(
              'First seen',
              style: TextStyle(color: Colors.red),
            ),
            Text(
              'Place',
              style: TextStyle(color: Colors.red),
            )
          ],
        ),
      ),
    );
  }
}
