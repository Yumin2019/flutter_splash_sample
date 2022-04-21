import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const String splashMethodChannel = "flutter_splash_screen";
  static const platform = MethodChannel(splashMethodChannel);

  Future<void> hideSplash() async {
    try{
      await platform.invokeMethod("hide");
    }
    on PlatformException catch(e) {
      print(e.message);
    }
  }

  @override
  Widget build(BuildContext context) {
    // if your screen is ready, hide dialog on Android
    hideSplash();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50, bottom: 30),
          child: Image.asset("assets/images/meetings_img_main_logo_main.png", width: double.infinity),
        ),
      ),
    );
  }
}
