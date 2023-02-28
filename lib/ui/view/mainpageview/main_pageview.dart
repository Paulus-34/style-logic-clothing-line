import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      title: 'Style Logic Main Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StyleLogicMain(),
    ),
  );
}

class StyleLogicMain extends StatelessWidget {
  const StyleLogicMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: IconButton(
            iconSize: 28,
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ),
        title: SizedBox(
          width: 179,
          height: 43,
          child: Image.asset('images/stylelogicLogo2.png'),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: IconButton(
              iconSize: 28,
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: const Text(
                  'Explore The \nAll New Clothes',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                      height: 1.2125),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 50),
                height: 55,
                child: TextField(
                  textAlign: TextAlign.justify,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search product, clothes',
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 11, 0, 20),
                child: Image.asset('images/HomepageImage1.png'),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'February Collection',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                      fontSize: 15),
                    ),
                    Icon(Icons.east)
                  ],
                ),
              ),
              Container()
            ],
          ),
        ),
      ),
    );
  }
}
