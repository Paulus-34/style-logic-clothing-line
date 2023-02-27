import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GetStartedPage(),
    ),
  );
}

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SafeArea(child: Image.asset('images/stylelogicLogo1.png')),
              Expanded(
                child: Stack(
                  children: <Widget>[
                    Center(
                      child: SafeArea(
                        child: Image.asset(
                          'images/getstartedimage.png',
                          height: 646,
                          width: 315,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30.0),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white.withOpacity(0.5),
                            foregroundColor: Colors.black,
                            minimumSize: const Size(180, 45),
                            side:
                                const BorderSide(color: Colors.black, width: 1),
                            shape: const StadiumBorder(),
                          ),
                          child: const Text('Get Started'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
