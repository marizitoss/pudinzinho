import 'package:flutter/material.dart';
import 'dart:math';
import 'consts/musicData.dart';
import 'main.dart';

const Color kPinkLight = Color(0xFFF1BCD1);
const Color kPinkMedium = Color(0xFFE982B0);
const Color kPinkDark = Color(0xFFE2228E);
const Color kButtonBg = Color(0xFFFBF1F5);

class MusicPage extends StatelessWidget {
  const MusicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MusicLyrics();
  }
}

class MusicLyrics extends StatefulWidget {
  const MusicLyrics({super.key});

  @override
  State<MusicLyrics> createState() => _MusicLyricsState();
}

class _MusicLyricsState extends State<MusicLyrics> {
  String currentImage = musicLyricsImages[0];

  void changeLyrics() {
    setState(() {
      final random = Random();
      currentImage = musicLyricsImages[random.nextInt(musicLyricsImages.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPinkLight,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background1.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Container(
            width: 400,
            height: 400,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [kPinkLight, kPinkMedium],
              ),
              border: Border.all(color: kPinkDark, width: 2.0),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              children: [
                _buildHeartHeader(context),
                Expanded(
                  child: Center(
                    child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: kPinkDark, width: 2.0),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18.0),
                        child: Image.asset(
                            currentImage,
                            fit: BoxFit.cover,
                          ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeartHeader(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      width: 300,
      height: 50,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [kPinkMedium, kPinkLight],
        ),
        border: Border.all(color: kPinkDark, width: 2.0),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back, color: kPinkDark),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage()),
              );
            },
          ),
          const Icon(Icons.favorite, color: kPinkDark),
          IconButton(
            icon: const Icon(Icons.music_note, color: kPinkDark),
            onPressed: changeLyrics,
          ),
        ],
      ),
    );
  }
}