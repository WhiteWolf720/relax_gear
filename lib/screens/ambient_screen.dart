import 'package:flutter/material.dart';

class AmbientWatchFace extends StatelessWidget
{
  const AmbientWatchFace({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return Container
    (
      color: Colors.transparent,
      child: Center
      (
        child: Column
        (
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          const [
            FlutterLogo
            (
              size: 60
            ),
            SizedBox
            (
              height: 10
            ),
            Text
            (
              "Dieguito Diavlo",
              style: TextStyle
              (
                color: Colors.white54,
                fontSize: 10,
                decoration: TextDecoration.none
              ),
            )
          ],
        ),
      ),
    );
  }
}