import 'package:flutter/material.dart';

class ImageContent extends StatelessWidget {
  const ImageContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/images/chill_out.jpg',
              fit: BoxFit.cover,
              width: 200,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'Let Me Go',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Avril Lavigne',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
