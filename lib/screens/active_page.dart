import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:relax_gear/screens/name_screen.dart';
import 'package:wear/wear.dart';

class ActivePage extends StatelessWidget {
  const ActivePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WatchShape(builder: (context, mode, child) {
      var screenSize = MediaQuery.of(context).size;
      log(screenSize.toString());
      final shapeForm = WatchShape.of(context);
      log(shapeForm.toString());
      if (shapeForm == WearShape.round) {
        screenSize = Size(
            (screenSize.width / 2) * 1.4142, (screenSize.height / 2) * 1.4142);
      }
      var screenHeight = screenSize.height;
      var screenWidth = screenSize.width;
      return Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox.expand(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const FlutterLogo(size: 60),
                const SizedBox(height: 10),
                const Text(
                  "Dieguito GOD",
                  style: TextStyle(color: Colors.black, fontSize: 10),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return NameScreen(screenHeight, screenWidth);
                      }));
                    },
                    child: const Text(
                      "The Time Has Come",
                      style: TextStyle(fontSize: 10),
                    ))
              ],
            ),
          ),
        ),
      );
    });
  }
}
