import 'package:flutter/material.dart';
import 'package:snack_bar/TahminEkrani.dart';
import 'package:snack_bar/main.dart';



class Sonuc extends StatefulWidget {
  bool res;
  int r;


  Sonuc({this.res, this.r});

  @override
  _SonucState createState() => _SonucState();
}

class _SonucState extends State<Sonuc> {


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
              padding:  EdgeInsets.all(yukseklik/100),
              child: Text("Aradığın sayı :${widget.r.toString()}",style: TextStyle(
                color: Colors.red,fontSize: genislik/14,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic
              ),),
            ),
            widget.res ? Image.asset("images/happy.png",width: genislik/3,) :Image.asset("images/sad.png",width: genislik/3,),
            Padding(
              padding:  EdgeInsets.all(yukseklik/100),
              child: Text(widget.res ? "Kazandınız" : "Kaybettiniz",style: TextStyle(
                  color: Colors.red,fontSize: genislik/15,fontWeight: FontWeight.bold),
              ),
            ),



            RaisedButton(
              child: Text("TEKRAR OYNA",style: TextStyle(fontSize: genislik/15,fontWeight: FontWeight.bold),),
              color: Colors.pink,
              textColor: Colors.white,
              onPressed: (){
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
            )


          ],
        ),
      ),

    );
  }
}
