import 'package:flutter/material.dart';
import 'package:stylelogic/ui/view/mainpageview/main_pageview.dart';

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
              Container(
                margin: const EdgeInsets.only(top: 10),
                  child: SafeArea(
                      child: Image.asset('images/stylelogicLogo1.png'))),
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
                    Container(
                      margin: const EdgeInsets.only(bottom: 40),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) {
                              return const StyleLogicMain();
                            }));
                          },
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
