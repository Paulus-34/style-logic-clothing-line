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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Text('Home'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Text('Shop All'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Text('Essentials'),
            label: '',
          ),
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
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.black),
                        borderRadius: BorderRadius.circular(50.0),
                        
                      ),
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.black),
                        borderRadius: BorderRadius.circular(50.0),
                      )),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 11, 0, 20),
                child: Image.asset(
                  'images/HomepageImage1.png',
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'February Collection',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                    ),
                    Icon(Icons.east)
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 10, 5, 0),
                child: Stack(
                  children: [
                    GridView.count(
                      physics: const ScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      padding: const EdgeInsets.fromLTRB(15.0, 0, 15.0, 12.0),
                      childAspectRatio: .9,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      children: <Widget>[
                        Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const Padding(padding: EdgeInsets.only(top: 10)),
                              AspectRatio(
                                aspectRatio: 18.0 / 12.0,
                                child: Image.asset('images/prodimg1.png'),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const <Widget>[
                                      Text(
                                        'STYLE LOGIC',
                                        style: TextStyle(
                                          fontSize: 8,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1,
                                      ),
                                      Text(
                                        'Wool Lapelles Jacket',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1,
                                      ),
                                      Text(
                                        '₱‌101,100.00',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Card(
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const Padding(padding: EdgeInsets.only(top: 10)),
                              AspectRatio(
                                aspectRatio: 18.0 / 12.0,
                                child: Image.asset('images/prodimg2.png'),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const <Widget>[
                                      Text(
                                        'STYLE LOGIC',
                                        style: TextStyle(
                                          fontSize: 8,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1,
                                      ),
                                      Text(
                                        'Wool Beige Suit Pant',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1,
                                      ),
                                      Text(
                                        '₱56,700.00',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Card(
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const Padding(padding: EdgeInsets.only(top: 10)),
                              AspectRatio(
                                aspectRatio: 18.0 / 12.0,
                                child: Image.asset('images/prodimg3.png'),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const <Widget>[
                                      Text(
                                        'STYLE LOGIC',
                                        style: TextStyle(
                                          fontSize: 8,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1,
                                      ),
                                      Text(
                                        'Wool Mohair Lapelless Jacket',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1,
                                      ),
                                      Text(
                                        '₱124,000.00',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Card(
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const Padding(padding: EdgeInsets.only(top: 10)),
                              AspectRatio(
                                aspectRatio: 18.0 / 12.0,
                                child: Image.asset('images/prodimg4.png'),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const <Widget>[
                                      Text(
                                        'STYLE LOGIC',
                                        style: TextStyle(
                                          fontSize: 8,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1,
                                      ),
                                      Text(
                                        'Wool Black Suit Pant',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1,
                                      ),
                                      Text(
                                        '₱56,700.00',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Card(
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const Padding(padding: EdgeInsets.only(top: 10)),
                              AspectRatio(
                                aspectRatio: 18.0 / 12.0,
                                child: Image.asset('images/prodimg5.png'),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const <Widget>[
                                      Text(
                                        'STYLE LOGIC',
                                        style: TextStyle(
                                          fontSize: 8,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1,
                                      ),
                                      Text(
                                        'Cotton Hat',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1,
                                      ),
                                      Text(
                                        '₱29,600.00',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Card(
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const Padding(padding: EdgeInsets.only(top: 10)),
                              AspectRatio(
                                aspectRatio: 18.0 / 12.0,
                                child: Image.asset('images/prodimg6.png'),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const <Widget>[
                                      Text(
                                        'STYLE LOGIC',
                                        style: TextStyle(
                                          fontSize: 8,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1,
                                      ),
                                      Text(
                                        'Cotton Hat',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1,
                                      ),
                                      Text(
                                        '₱‌29,600.00',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Center(
                    child: Image.asset(
                      'images/HomepageImage2.png',
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(50),
                    child: Align(
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white.withOpacity(0.5),
                          foregroundColor: Colors.black,
                          minimumSize: const Size(105, 32),
                          side: const BorderSide(color: Colors.black, width: 1),
                          shape: const StadiumBorder(),
                        ),
                        child: const Text('Shop All'),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
