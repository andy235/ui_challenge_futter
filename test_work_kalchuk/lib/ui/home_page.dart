import 'dart:async';

import 'package:flutter/material.dart';
import 'package:im_animations/im_animations.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var countrySize = [16.0, 16.0, 16.0, 16.0, 16.0, 16.0, 16.0,];
  var selected = [false, false, false, false, false, false, false];
  var pathImage = [
    'assets/images/shadowCountries/canada-black.jpeg',
    'assets/images/shadowCountries/russia-black.jpeg',
    'assets/images/shadowCountries/japan-black.jpeg',
    'assets/images/shadowCountries/usa-black.jpeg',
    'assets/images/shadowCountries/uar-black.jpeg',
    'assets/images/shadowCountries/india-black.jpeg',
    'assets/images/shadowCountries/germany-black.jpeg',
  ];
  var color = [
    Colors.transparent.withOpacity(0),
    Colors.transparent.withOpacity(0),
    Colors.transparent.withOpacity(0),
    Colors.transparent.withOpacity(0),
    Colors.transparent.withOpacity(0),
    Colors.transparent.withOpacity(0),
    Colors.transparent.withOpacity(0),
  ];
  var generalColor = Colors.green;
  var textConnect = ['Connected', 'Connecting', 'Connection failed'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0c0c0c),
      appBar: buildAppBar(),
      body: Stack(
        children: [
          Image(image: AssetImage("assets/images/karta-mira-chernyi-fon-zemlia.jpg"),),
          Column(
            children: [
              SizedBox(height: 50,),
              buildScrollCountry(),
              SizedBox(height: 50,),
              buildRichText(),
              SizedBox(height: 50,),
              buildVpnButton()
            ],
          )
        ],
      ),
    );
  }

  Expanded buildVpnButton() {
    return Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30),),
                  color: generalColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(),
                    ColorSonar(
                      contentAreaRadius: 90,
                      waveFall: 15,
                      innerWaveColor: generalColor,
                      middleWaveColor: Colors.white.withOpacity(0.4),
                      outerWaveColor: Colors.white.withOpacity(0.2),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            generalColor = Colors.amber;
                            textConnect[0] = textConnect[1];
                            Timer(Duration(seconds: 3), () {
                              setState(() {
                                generalColor= Colors.red;
                                textConnect[0] = textConnect[2];
                              });
                            });
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                        ),
                        child: CircleAvatar(
                          radius: 90,
                          backgroundColor: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.power_settings_new, size: 90, color: generalColor,),
                              Text(textConnect[0], style: TextStyle(fontWeight: FontWeight.bold, color: generalColor),),
                              SizedBox(height: 5,),
                              Text('139.99.69.219', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 50,
                          width: 160,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.25),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.arrow_upward),
                              Text("4.36 MB/s", style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 160,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.25),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.arrow_downward),
                              Text("2.68 MB/s", style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),

              ),
            );
  }

  RichText buildRichText() {
    return RichText(
                text: TextSpan(
                  text: "1", style: TextStyle(color: generalColor, fontSize: 52),
                  children: [
                    TextSpan(
                      text: ':', style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: '15', style: TextStyle(color: generalColor),
                          children: [
                            TextSpan(
                              text: ':', style: TextStyle(color: Colors.white),
                              children: [
                                TextSpan(
                                  text: '34', style: TextStyle(color: generalColor),
                                )
                              ]
                            )
                          ]
                        )
                      ]
                    )
                  ]
                )
            );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Color(0xff0c0c0c),
      elevation: 0,
      centerTitle: true,
      title: RichText(
        text: TextSpan(
          text: 'X',
          style: TextStyle(
            fontSize: 36,
            color: Colors.yellow[700],
          ),
          children: [
            TextSpan(
              text: 'vpn',
              style: TextStyle(color: Colors.white, fontSize: 32),
            )
          ]
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {},
          child: ImageIcon(AssetImage("assets/icons/icons8-grid-2-96.png")),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Color(0xff25252c)),
            foregroundColor: MaterialStateProperty.all(Color(0xffdbc261)),
            padding: MaterialStateProperty.all(EdgeInsets.all(10)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
          ),
        ),
      ),
      actions: [
        Container(
          width: 60,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
                onPressed: () {},
                child: ImageIcon(AssetImage("assets/icons/icons8-crown-67.png")),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color(0xffdbc261)),
                    padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                    fixedSize: MaterialStateProperty.all(Size(-1000, 100))
            ),
          ),
          ),
        ),
      ],
    );
  }

  Container buildScrollCountry() {
    return Container(
              height: 110,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 50,),
                      AnimatedContainer(
                        duration: Duration(milliseconds: 500),
                        color: Colors.transparent,
                        child: Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  selected[0] = !selected[0];
                                 if(selected[0] == true) {
                                   countrySize[0] = 30;
                                   pathImage[0] = 'assets/images/countries/canada.jpg';
                                   color[0] = generalColor;

                                 }else if(selected[0] == false){
                                   countrySize[0] = 16;
                                   pathImage[0] = 'assets/images/shadowCountries/canada-black.jpeg';
                                   color[0] = Colors.transparent;
                                 }
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                backgroundColor: Colors.transparent,
                              ),
                              child: CircleAvatar(
                                radius: countrySize[0] + 4,
                                backgroundColor: color[0],
                                child: CircleAvatar(
                                  radius: countrySize[0],
                                  backgroundImage: AssetImage(pathImage[0]),
                                ),
                              ),
                            ),
                            SizedBox(height: 15,),
                            Text('Canada', style: TextStyle(color: color[0]),),
                          ],
                        ),
                      ),
                      AnimatedContainer(
                        duration: Duration(milliseconds: 500),
                        child: Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  selected[1] = !selected[1];
                                  if(selected[1] == true) {
                                    countrySize[1] = 30;
                                    pathImage[1] = 'assets/images/countries/russia.jpg';
                                    color[1] = generalColor;

                                  }else if(selected[1] == false){
                                    countrySize[1] = 16;
                                    pathImage[1] = 'assets/images/shadowCountries/russia-black.jpeg';
                                    color[1] = Colors.transparent;
                                  }
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                backgroundColor: Colors.transparent,
                              ),
                              child: CircleAvatar(
                                radius: countrySize[1] + 4,
                                backgroundColor: color[1],
                                child: CircleAvatar(
                                  radius: countrySize[1],
                                  backgroundImage: AssetImage(pathImage[1]),
                                ),
                              ),
                            ),
                            SizedBox(height: 15,),
                            Text('Russia', style: TextStyle(color: color[1]),),
                          ],
                        ),
                      ),
                      AnimatedContainer(
                        duration: Duration(milliseconds: 500),
                        child: Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  selected[2] = !selected[2];
                                  if(selected[2] == true) {
                                    countrySize[2] = 30;
                                    pathImage[2] = 'assets/images/countries/japan.jpg';
                                    color[2] = generalColor;

                                  }else if(selected[2] == false){
                                    countrySize[2] = 16;
                                    pathImage[2] = 'assets/images/shadowCountries/japan-black.jpeg';
                                    color[2] = Colors.transparent;
                                  }
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                backgroundColor: Colors.transparent,
                              ),
                              child: CircleAvatar(
                                radius: countrySize[2] + 4,
                                backgroundColor: color[2],
                                child: CircleAvatar(
                                  radius: countrySize[2],
                                  backgroundImage: AssetImage(pathImage[2]),
                                ),
                              ),
                            ),
                            SizedBox(height: 15,),
                            Text('Japan', style: TextStyle(color: color[2]),),
                          ],
                        ),
                      ),
                      AnimatedContainer(
                        duration: Duration(milliseconds: 500),
                        child: Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  selected[3] = !selected[3];
                                  if(selected[3] == true) {
                                    countrySize[3] = 30;
                                    pathImage[3] = 'assets/images/countries/usa.jpg';
                                    color[3] = generalColor;

                                  }else if(selected[3] == false){
                                    countrySize[3] = 16;
                                    pathImage[3] = 'assets/images/shadowCountries/usa-black.jpeg';
                                    color[3] = Colors.transparent;
                                  }
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                backgroundColor: Colors.transparent,
                              ),
                              child: CircleAvatar(
                                radius: countrySize[3] + 4,
                                backgroundColor: color[3],
                                child: CircleAvatar(
                                  radius: countrySize[3],
                                  backgroundImage: AssetImage(pathImage[3]),
                                ),
                              ),
                            ),
                            SizedBox(height: 15,),
                            Text('Usa', style: TextStyle(color: color[3]),),
                          ],
                        ),
                      ),
                      AnimatedContainer(
                        duration: Duration(milliseconds: 500),
                        child: Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  selected[4] = !selected[4];
                                  if(selected[4] == true) {
                                    countrySize[4] = 30;
                                    pathImage[4] = 'assets/images/countries/uar.jpg';
                                    color[4] = generalColor;

                                  }else if(selected[4] == false){
                                    countrySize[4] = 16;
                                    pathImage[4] = 'assets/images/shadowCountries/uar-black.jpeg';
                                    color[4] = Colors.transparent;
                                  }
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                backgroundColor: Colors.transparent,
                              ),
                              child: CircleAvatar(
                                radius: countrySize[4] + 4,
                                backgroundColor: color[4],
                                child: CircleAvatar(
                                  radius: countrySize[4],
                                  backgroundImage: AssetImage(pathImage[4]),
                                ),
                              ),
                            ),
                            SizedBox(height: 15,),
                            Text('Uar', style: TextStyle(color: color[4]),),
                          ],
                        ),
                      ),
                      AnimatedContainer(
                        duration: Duration(milliseconds: 500),
                        child: Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  selected[5] = !selected[5];
                                  if(selected[5] == true) {
                                    countrySize[5] = 30;
                                    pathImage[5] = 'assets/images/countries/india.jpg';
                                    color[5] = generalColor;

                                  }else if(selected[5] == false){
                                    countrySize[5] = 16;
                                    pathImage[5] = 'assets/images/shadowCountries/india-black.jpeg';
                                    color[5] = Colors.transparent;
                                  }
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                backgroundColor: Colors.transparent,
                              ),
                              child: CircleAvatar(
                                radius: countrySize[5] + 4,
                                backgroundColor: color[5],
                                child: CircleAvatar(
                                  radius: countrySize[5],
                                  backgroundImage: AssetImage(pathImage[5]),
                                ),
                              ),
                            ),
                            SizedBox(height: 15,),
                            Text('India', style: TextStyle(color: color[5]),),
                          ],
                        ),
                      ),
                      AnimatedContainer(
                        duration: Duration(milliseconds: 500),
                        child: Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  selected[6] = !selected[6];
                                  if(selected[6] == true) {
                                    countrySize[6] = 30;
                                    pathImage[6] = 'assets/images/countries/germany.jpg';
                                    color[6] = generalColor;

                                  }else if(selected[6] == false){
                                    countrySize[6] = 16;
                                    pathImage[6] = 'assets/images/shadowCountries/germany-black.jpeg';
                                    color[6] = Colors.transparent;
                                  }
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                backgroundColor: Colors.transparent,
                              ),
                              child: CircleAvatar(
                                radius: countrySize[6] + 4,
                                backgroundColor: color[6],
                                child: CircleAvatar(
                                  radius: countrySize[6],
                                  backgroundImage: AssetImage(pathImage[6]),
                                ),
                              ),
                            ),
                            SizedBox(height: 15,),
                            Text('Germany', style: TextStyle(color: color[6]),),
                          ],
                        ),
                      ),
                      SizedBox(width: 50,),
                    ],
                  ),
                ],
              ),
            );
  }
}
