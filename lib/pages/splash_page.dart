import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/landingpage');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black.withOpacity(0.25), width: 2),
                    borderRadius: BorderRadius.circular(100)),
                padding: const EdgeInsets.all(10),
                child: Hero(
                    tag: 'sponsor',
                    child: Image.asset(
                      'assets/logo/sponsor.png',
                      width: 250,
                    )),
              ),
            ),
            Hero(
              tag: 'logo',
              child: Image.asset(
                'assets/logo/vertical-color@6x.png',
                height: 300,
                width: 300,
              ),
            )
          ],
        ),
      ),
    );
  }
}
