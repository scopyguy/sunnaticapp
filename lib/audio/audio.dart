import 'package:flutter/material.dart';
import 'package:sunnaticapp/audio/source.dart';

class AudioPlayerState {
  final List audioDataSource;

  AudioPlayerState({
    required this.audioDataSource,
    required this.isPlaying,
    required this.position,
  });
  bool isPlaying = false;
  Duration position = Duration(seconds: 0);
}

class MusicPlayer extends StatefulWidget {
  final List audioDataSource;
  MusicPlayer(this.audioDataSource, {Key? key}) : super(key: key);

  @override
  _MusicPlayerState createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State {
  final AudioPlayer audioPlayer = AudioPlayer();
  late AudioPlayerState selectedAudio;

  @override
  void initState() {
    super.initState();

    selectedAudio = AudioPlayerState(
      audioDataSource: widget.audioDataSource.isNotEmpty
          ? widget.audioDataSource[0]
          : 'assets/audios/سيرة_عائشة_أم_المؤمنين_من_سير_أعلام_النبلاء.opus',
      isPlaying: false,
      position: Duration(seconds: 0),
    );
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  Future playSelectedAudio() async {
    int result = await audioPlayer.play(selectedAudio.audioDataSource);
    if (result == 1) {
      setState(() {
        selectedAudio.isPlaying = true;
      });
    }
  }

  void pauseSelectedAudio() {
    audioPlayer.pause();
    setState(() {
      selectedAudio.isPlaying = false;
    });
  }

  void stopSelectedAudio() {
    audioPlayer.stop();
    setState(() {
      selectedAudio.isPlaying = false;
      selectedAudio.position = Duration(seconds: 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Music Player'),
      ),
      body: ListView.builder(
        itemCount: widget.audioDataSource.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(index == 0
                ? selectedAudio.isPlaying
                    ? 'Pause'
                    : 'Play'
                : 'Stop'),
            onTap: () {
              if (index == 0) {
                if (selectedAudio.isPlaying) {
                  pauseSelectedAudio();
                } else {
                  playSelectedAudio();
                }
              } else {
                stopSelectedAudio();
              }
            },
          );
        },
      ),
    );
  }
}
