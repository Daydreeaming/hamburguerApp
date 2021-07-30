import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HamburguerApp extends StatefulWidget {
  @override
  _HamburguerAppState createState() => _HamburguerAppState();
}

class _HamburguerAppState extends State<HamburguerApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 60,
                child: Image.asset('assets/burguinho.png', fit: BoxFit.cover),
              ),
              Container(
                margin: EdgeInsets.only(top: 6),
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Menu',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Text(
                      'Snack',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Drink',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 6),
                width: MediaQuery.of(context).size.width * 0.25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.search),
                    Icon(Icons.person),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: Container(
        color: Color(0XFF111111),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'LUQUINHAS',
                      style: TextStyle(color: Colors.white, fontSize: 36),
                    ),
                    Text(
                      'BURGUER',
                      style: TextStyle(color: Colors.grey, fontSize: 24),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 5,
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Color(0XFF0f0e0e),
                child: Column(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            top: 20,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                'BURGUER',
                                style: TextStyle(
                                    fontSize: 72, color: Colors.white),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 35,
                            right: 16,
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color(0Xffffb304),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: GestureDetector(
                                    child: Icon(Icons.arrow_left),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 20),
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  child: Image.asset(
                                    'assets/hamburguer1.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color(0Xffffb304),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: GestureDetector(
                                    child: Icon(Icons.arrow_right),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.18,
                      margin: EdgeInsets.only(bottom: 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 16),
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: Text(
                              'OUR CLASSIC BURGUER',
                              style:
                                  TextStyle(fontSize: 24, color: Colors.yellow),
                              textAlign: TextAlign.end,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 8),
                            width: MediaQuery.of(context).size.width * 0.1,
                            height: MediaQuery.of(context).size.height * 0.005,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.yellow,
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            height: MediaQuery.of(context).size.height * 0.1,
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tincidunt lacus id dui sollicitudin, vitae.',
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.end,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(MdiIcons.twitter, color: Colors.white),
                          Icon(MdiIcons.facebook, color: Colors.white),
                          Icon(MdiIcons.instagram, color: Colors.white),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Color(0XFFf3a30c),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: Text(
                        'Order Now',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
