import 'package:flutter/material.dart';
import 'package:music_stream/screens/player/widgets/ImageContent.dart';
import 'package:music_stream/screens/player/widgets/MusicNav.dart';

class PlayMusicUI extends StatelessWidget {
  const PlayMusicUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SafeArea(
        child: Container(
          color: Colors.grey[100],
          child: ImageContent(),
        ),
      ),
      bottomNavigationBar: MusicNav(),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [
        Icon(Icons.more_vert),
      ],
      backgroundColor: Colors.grey[100],
      elevation: 0,
      centerTitle: true,
      title: Text('NOW PLAYING'),
    );
  }
}
