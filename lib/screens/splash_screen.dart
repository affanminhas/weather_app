import 'package:flutter/material.dart';
import 'package:weather/screens/landing_screen.dart';

class SplashView extends StatefulWidget {

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //_navigateToMenuScreen();
  }

  _navigateToMenuScreen()async{
    await Future.delayed(const Duration(milliseconds: 5000),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LandingScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              child: const Image(
                image: AssetImage("images/splash_frame.png"),
              ),
            ),
            SizedBox(height: 100,),
            Positioned(
              top: 150,
                child: Column(
                  children: [
                    Text(
                      "Powered By Tech Idara"
                    ),
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
