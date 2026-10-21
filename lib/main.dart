import 'package:flutter/material.dart';
import 'package:pudinzinho/musicPage.dart';

void main() {
  runApp(const MyApp());
}

const Color kPinkLight = Color(0xFFF1BCD1);
const Color kPinkMedium = Color(0xFFE982B0);
const Color kPinkDark = Color(0xFFE2228E);
const Color kButtonBg = Color(0xFFFBF1F5);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pudinzinho',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: kPinkDark),
        fontFamily: 'Pixelify Sans',
      ),
      home: const MyHomePage(),
      routes: {'/musicPage': (context) => const MusicPage()},
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle pixelStyle = const TextStyle(
      fontFamily: 'Pixelify Sans',
      fontWeight: FontWeight.bold,
      color: kPinkDark,
    );

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
                _buildHeartHeader(),

                Expanded(
                  child: Center(
                    child: Container(
                      width: 300,
                      height: 300,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 10,
                      ),
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: kPinkDark, width: 2.0),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Hey pudinzinho?',
                            style: pixelStyle.copyWith(fontSize: 20),
                          ),
                          const SizedBox(height: 10),
                          Image.asset(
                            'assets/images/amorzinho.png',
                            height: 130,
                            fit: BoxFit.contain,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'In case you miss me:',
                            style: pixelStyle.copyWith(fontSize: 18),
                          ),
                          const SizedBox(height: 15),

                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: kButtonBg,
                              foregroundColor: Colors.black,
                              side: const BorderSide(
                                color: kPinkDark,
                                width: 1,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () => Navigator.pushReplacementNamed(
                              context,
                              '/musicPage',
                            ),
                            child: Text(
                              'click here',
                              style: pixelStyle.copyWith(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
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

  Widget _buildHeartHeader() {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      width: 300,
      height: 50,
      decoration: BoxDecoration(
        gradient: const LinearGradient(colors: [kPinkMedium, kPinkLight]),
        border: Border.all(color: kPinkDark, width: 2.0),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.favorite, color: kPinkDark),
          Icon(Icons.favorite, color: kPinkDark),
          Icon(Icons.favorite, color: kPinkDark),
        ],
      ),
    );
  }
}
