import 'package:flutter/material.dart';

class GeneroItem extends StatelessWidget {
  final int index;
  const GeneroItem({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 10, right: 10, top: 30),
          child: Text('Music $index'),
        ),
        Offstage(
          offstage: false,
          child: Container(
            height: 5.0,
            width: 30.0,
            decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        )
      ],
    );
  }
}
