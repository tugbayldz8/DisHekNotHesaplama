import 'package:flutter/material.dart';
import 'package:ort_hesap/main.dart';

class PageTwo extends StatefulWidget {
  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  num not1 = 0, not2 = 0, sonuc = 0, yuzde1 = 0, yuzde2 = 0, gecmeNotu = 0;

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  TextEditingController t3 = TextEditingController();
  TextEditingController t4 = TextEditingController();
  TextEditingController t5 = TextEditingController();

  topla() {
    setState(() {
      not1 = num.parse(t1.text);
      not2 = num.parse(t2.text);
      gecmeNotu = num.parse(t5.text);
      sonuc = ((gecmeNotu - (((not1 + not2) * 25 / 100))) * 100 / 50);
      if (sonuc < 50) {
        sonuc = 50;
      } else {
        sonuc;
      }
      // sonuc = (100 * 50 / 100) - ((not1 * 25 / 100) + (not2 * 25 / 100));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ALAN'),
        ),
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              Expanded(
                flex: 8,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                          // mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '1. Notu Giriniz:(%25)',
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
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '2. Notu Giriniz:(%25)',
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
                              'Geçme Notu:   ',
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(
                              width: 80,
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
                    onPressed: topla,
                    child: Text('HESAPLA'),
                  ),
                ]),
              ),
            ],
          ),
        ));
  }
}
