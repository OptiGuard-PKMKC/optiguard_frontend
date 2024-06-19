import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

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
          ),
          const Text(
            'Selamat datang di',
            style: TextStyle(fontSize: 20),
          ),
          const Text(
            'Optiguard',
            style: TextStyle(fontSize: 30),
          ),
          FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, '/loginpage');
              },
              child: const Text('Login')),
          const Text('atau'),
          FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, '/registerpage');
              },
              child: const Text('Register'))
        ],
      ),
    ));
  }
}
