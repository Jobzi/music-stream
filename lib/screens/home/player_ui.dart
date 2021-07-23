import 'package:flutter/material.dart';
import 'package:music_stream/screens/home/widgets/GeneroItem.dart';
import 'package:music_stream/screens/home/widgets/ImageCard.dart';
import 'package:music_stream/screens/home/widgets/MusicItem.dart';

class PlayerUI extends StatelessWidget {
  const PlayerUI({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Hi, Jipson Murillo',
                  style: TextStyle(fontSize: 30, letterSpacing: 2),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ...List.generate(
                          5,
                          (index) => GeneroItem(
                            index: index,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ...List.generate(
                          5,
                          (index) => ImageCard(),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 10),
                  child: Text('PLAYLISTS'),
                ),
                ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => MusicItem(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      leading: Icon(Icons.search),
      actions: [
        Icon(Icons.more_vert),
      ],
      backgroundColor: Colors.white30,
      elevation: 0,
    );
  }
}
