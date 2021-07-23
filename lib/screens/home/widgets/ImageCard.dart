import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: Container(
        width: 150,
        height: 230,
        child: Stack(
          fit: StackFit.expand,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/chill_out.jpg',
                fit: BoxFit.cover,
                width: 200,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding:
                    EdgeInsets.only(bottom: 20, top: 10, left: 2, right: 2),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                ),
                child: Text(
                  'Chill Out',
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.fade,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
