import 'package:flutter/material.dart';
import 'package:music_stream/screens/player/playMusic_ui.dart';

class MusicItem extends StatelessWidget {
  const MusicItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PlayMusicUI()),
      ),
      child: Container(
        padding: EdgeInsets.all(13),
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.15),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 5), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(
              Icons.circle,
              color: Colors.blue,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'A veces',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      letterSpacing: 1,
                      wordSpacing: 1,
                    ),
                  ),
                  Text('los aldeanos'),
                ],
              ),
            ),
            Expanded(child: SizedBox()),
            Text('2:33'),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.favorite,
              size: 15,
            )
          ],
        ),
      ),
    );
  }
}
