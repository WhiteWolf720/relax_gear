import 'package:flutter/material.dart';
import 'package:relax_gear/screens/active_page.dart';
import 'package:relax_gear/screens/ambient_screen.dart';
import 'package:relax_gear/screens/sound_screen.dart';
import 'package:wear/wear.dart';

const img = 'assets/images/';
List<String> screens = ['rain', 'forest', 'sunset', 'ocean'];

class RelaxView extends StatelessWidget {
  final screenHeight;
  final screenWidth;
  const RelaxView(this.screenHeight, this.screenWidth, {super.key});

  @override
  Widget build(BuildContext context) {
    return AmbientMode(
      builder: (context, mode, child) => mode == WearMode.active
          ? const HomeRoute()
          : const AmbientWatchFace(),
    );
  }
}

class HomeRoute extends StatelessWidget {
  const HomeRoute({super.key});

  soundBtn(sound, context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => PlayRoute(sound)));
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Image.asset(
              'assets/icons/$sound.png',
              scale: 1.2,
            ),
          ),
          Text(sound.toUpperCase(),
              style: const TextStyle(
                  color: Colors.white, fontSize: 16, letterSpacing: 3.0))
        ],
      ),
    );
  }

  @override
  build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              '${img}bkgnd_2.jpg',
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/outline_arrow.png',
                    scale: 1.8,
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    'Back',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  )
                ],
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          Positioned(
            top: 40,
            width: width,
            child: const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Center(
                child: Text(
                  'RELAX',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      letterSpacing: 13.0,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70.0),
            child: Center(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    soundBtn('rain', context),
                    soundBtn('forest', context),
                    soundBtn('sunset', context),
                    soundBtn('ocean', context),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}