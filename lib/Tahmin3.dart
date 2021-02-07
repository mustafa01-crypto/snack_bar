import 'dart:math';

import 'package:flutter/material.dart';

import 'Sonuc.dart';

class Tahmin3 extends StatefulWidget {
  @override
  _Tahmin3State createState() => _Tahmin3State();
}

class _Tahmin3State extends State<Tahmin3> {

  var girilenSayi = TextEditingController();
  int kalanHak = 5;
  int rasgeleSayi = 0;
  String ipucu = "";

  @override
  void initState() {
    super.initState();

    rasgeleSayi = Random().nextInt(101);
    print("Sayı : $rasgeleSayi");

  }

  @override
  Widget build(BuildContext context) {

    var ekran =MediaQuery.of(context);
    final double yukseklik = ekran.size.height;
    final double genislik = ekran.size.width;

    return  Scaffold(
      appBar: AppBar(
        title: Text("Tahmin Et"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding:  EdgeInsets.all(yukseklik / 10),
                child: Text("Kalan Hak : $kalanHak",style: TextStyle(
                    color: Colors.pink,fontSize: genislik/14,fontWeight: FontWeight.bold
                ),),
              ),
              Text("İpucu : $ipucu",style: TextStyle(
                  color: Colors.grey,fontSize: genislik/14,fontWeight: FontWeight.bold)
              ),
              Padding(
                padding:  EdgeInsets.all(yukseklik / 10),
                child: TextField(
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  controller: girilenSayi,
                  decoration: InputDecoration(
                      labelText: "tahmin",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      )
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(yukseklik / 10),
                child: SizedBox(
                  width: genislik/2,
                  height: yukseklik/13,
                  child: RaisedButton(
                    child: Text("TAHMİN ET"),
                    color: Colors.pink,
                    textColor: Colors.white,
                    onPressed: (){
                      int tahmin = int.parse(girilenSayi.text);


                      if(tahmin < rasgeleSayi)
                      {
                        setState(() {
                          kalanHak = kalanHak -1;
                          ipucu = "Sayıyı arttır";
                        });
                      }
                      if(tahmin > rasgeleSayi)
                      {
                        setState(() {
                          kalanHak = kalanHak -1;
                          ipucu = "Sayıyı azalt";
                        });
                      }
                      if(tahmin  == rasgeleSayi)
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Sonuc(res: true,r: rasgeleSayi,) ));
                        return;
                      }
                      if(kalanHak == 0)
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Sonuc(res: false,r: rasgeleSayi,) ));
                      }
                      girilenSayi.text = "";

                    },
                  ),
                ),
              ),


            ],
          ),
        ),
      ),

    );
  }
}
