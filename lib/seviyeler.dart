import 'package:flutter/material.dart';
import 'package:snack_bar/Tahmin2.dart';
import 'package:snack_bar/Tahmin3.dart';
import 'package:snack_bar/TahminEkrani.dart';

class Seviyeler extends StatefulWidget {
  @override
  _SeviyelerState createState() => _SeviyelerState();
}

class _SeviyelerState extends State<Seviyeler> {
  @override
  Widget build(BuildContext context) {

    var ekran =MediaQuery.of(context);
    final double yukseklik = ekran.size.height;
    final double genislik = ekran.size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Sonuç Ekranı"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.of(context).popUntil((route) => route.isFirst);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: genislik/2,
                height: yukseklik/13,
                child: RaisedButton(
                  child: Text("SEVİYE 1"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: (){

                    Navigator.push(context, MaterialPageRoute(builder: (context) => TahminEt()));
                  },

                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: genislik/2,
                height: yukseklik/13,
                child: RaisedButton(
                  child: Text("SEVİYE 2"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: (){

                    Navigator.push(context, MaterialPageRoute(builder: (context) => Tahmin2()));
                  },

                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: genislik/2,
                height: yukseklik/13,
                child: RaisedButton(
                  child: Text("SEVİYE 3"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: (){

                    Navigator.push(context, MaterialPageRoute(builder: (context) => Tahmin3()));
                  },

                ),
              ),
            ),

          ],
        ),
      ),

    );
  }
}
