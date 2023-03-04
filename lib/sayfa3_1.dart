import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class PageThree extends StatefulWidget {
  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  num not1 = 0,
      not2 = 0,
      not3 = 0,
      not4 = 0,
      not5 = 0,
      sonuc = 0,
      gecmeNotu = 0;

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  TextEditingController t3 = TextEditingController();
  TextEditingController t4 = TextEditingController();
  TextEditingController t5 = TextEditingController();
  TextEditingController t6 = TextEditingController();

  topla() {
    setState(() {
      not1 = num.parse(t1.text);
      not2 = num.parse(t2.text);
      not3 = num.parse(t3.text);
      not4 = num.parse(t4.text);
      not5 = num.parse(t5.text);
      gecmeNotu = num.parse(t6.text);
      sonuc = ((gecmeNotu - (not1 + not2 + not3 + not4 + not5) * 10 / 100) *
          100 /
          50);
      if (sonuc < 50) {
        sonuc = 50;
      } else {
        sonuc;
      }
      // sonuc = (100 * 50 / 100) - ((not1 * 25 / 100) + (not2 * 25 / 100));
    });
  }

  late ConfettiController _controllerTopCenter;
  @override
  void initState() {
    super.initState();
    _controllerTopCenter =
        ConfettiController(duration: const Duration(seconds: 10));
  }

  @override
  void dispose() {
    _controllerTopCenter.dispose();
    super.dispose();
  }

  Path drawStar(Size size) {
    // Method to convert degree to radians
    double degToRad(double deg) => deg * (pi / 180.0);

    const numberOfPoints = 5;
    final halfWidth = size.width / 2;
    final externalRadius = halfWidth;
    final internalRadius = halfWidth / 2.5;
    final degreesPerStep = degToRad(360 / numberOfPoints);
    final halfDegreesPerStep = degreesPerStep / 2;
    final path = Path();
    final fullAngle = degToRad(360);
    path.moveTo(size.width, halfWidth);

    for (double step = 0; step < fullAngle; step += degreesPerStep) {
      path.lineTo(halfWidth + externalRadius * cos(step),
          halfWidth + externalRadius * sin(step));
      path.lineTo(halfWidth + internalRadius * cos(step + halfDegreesPerStep),
          halfWidth + internalRadius * sin(step + halfDegreesPerStep));
    }
    path.close();
    return path;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('KURUL'),
        ),
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: ConfettiWidget(
                      confettiController: _controllerTopCenter,
                      blastDirectionality: BlastDirectionality
                          .explosive, // don't specify a direction, blast randomly
                      shouldLoop:
                          true, // start again as soon as the animation is finished
                      colors: const [
                        Colors.green,
                        Colors.blue,
                        Colors.pink,
                        Colors.orange,
                        Colors.purple,
                        Colors.yellow,
                        Colors.red,
                      ], // manually specify the colors to be used
                      createParticlePath:
                          drawStar, // define a custom shape/path.
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: TextButton(
                        onPressed: () {
                          _controllerTopCenter.play();
                        },
                        child: _display('a')),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: ConfettiWidget(
                      confettiController: _controllerTopCenter,
                      blastDirectionality: BlastDirectionality
                          .explosive, // don't specify a direction, blast randomly
                      shouldLoop:
                          true, // start again as soon as the animation is finished
                      colors: const [
                        Colors.green,
                        Colors.blue,
                        Colors.pink,
                        Colors.orange,
                        Colors.purple,
                        Colors.yellow,
                        Colors.red,
                      ], // manually specify the colors to be used
                      createParticlePath:
                          drawStar, // define a custom shape/path.
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: TextButton(
                        onPressed: () {
                          _controllerTopCenter.play();
                        },
                        child: _display('a')),
                  ),
                ],
              ),
              Expanded(
                flex: 10,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                          // mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '1. Notu Giriniz:(%10)',
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                              //margin: EdgeInsets.all(1.0),
                              width: 70,
                              child: TextFormField(
                                controller: t1,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ]),
                      Row(
                          //mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '2. Notu Giriniz:(%10)',
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                              //margin: EdgeInsets.all(1.0),
                              width: 70,
                              child: TextFormField(
                                controller: t2,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ]),
                      Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '3. Notu Giriniz:(%10)',
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                              //margin: EdgeInsets.all(1.0),
                              width: 70,
                              child: TextFormField(
                                controller: t3,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ]),
                      Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '4. Notu Giriniz:(%10)',
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                              //margin: EdgeInsets.all(1.0),
                              width: 70,
                              child: TextFormField(
                                controller: t4,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ]),
                      Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '5. Notu Giriniz:(%10)',
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                              //margin: EdgeInsets.all(1.0),
                              width: 70,
                              child: TextFormField(
                                controller: t5,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ]),
                      Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Geçme Notu:',
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(
                              width: 90,
                            ),
                            Container(
                              //margin: EdgeInsets.all(1.0),
                              width: 70,
                              child: TextFormField(
                                controller: t6,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ]),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Gereken Not: $sonuc',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]),
              ),
              Expanded(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purple,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => MyApp()));
                      // Navigator.pop(context);
                    },
                    child: Text('GERİ DÖN'),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purple,
                    ),
                    onPressed: () {
                      setState(() {
                        topla();
                      });
                      _controllerTopCenter.play();
                    },
                    child: Text('HESAPLA'),
                  ),
                ]),
              ),
            ],
          ),
        ));
  }

  Text _display(String text) {
    return Text(
      text,
      style: const TextStyle(color: Colors.grey, fontSize: 20),
    );
  }
}
