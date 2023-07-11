import 'package:flutter/material.dart';
import 'package:relax_gear/screens/active_page.dart';
import 'package:relax_gear/screens/ambient_screen.dart';
import 'package:wear/wear.dart';
void main()
{
  runApp(
    
   const MaterialApp
   (
     home: MyApp()
   )
  );
}
class MyApp extends StatelessWidget
{
  const MyApp({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return AmbientMode
    (
      builder: (context, mode, child)
      {
        return mode==WearMode.active?const ActivePage():const AmbientWatchFace();
      },
    );
  }
}
