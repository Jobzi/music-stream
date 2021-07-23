import 'package:flutter/material.dart';

class MusicNav extends StatelessWidget {
  const MusicNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: LinearProgressIndicator(
              color: Colors.blue,
              value: 20,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(5),
                height: 40,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      offset: Offset(0, 0.5),
                      blurRadius: 1,
                      spreadRadius: 0.7,
                    ),
                  ],
                ),
                child: Icon(Icons.fast_rewind),
              ),
              Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 0.5,
                      offset: Offset(0, 0.5),
                      spreadRadius: 2,
                    ), //BoxSh
                  ],
                ),
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                height: 40,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      offset: Offset(0, 0.5),
                      blurRadius: 1,
                      spreadRadius: 0.7,
                    ),
                  ],
                ),
                child: Icon(Icons.fast_forward),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Icon(Icons.arrow_drop_up),
          Text('LYRICS'),
        ],
      ),
    );
  }
}
