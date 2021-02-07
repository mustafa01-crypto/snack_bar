import 'package:flutter/material.dart';
import 'package:snack_bar/TahminEkrani.dart';
import 'package:snack_bar/kurallar.dart';
import 'package:snack_bar/seviyeler.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {


  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {


  @override
  Widget build(BuildContext context) {

    var ekran =MediaQuery.of(context);
    final double yukseklik = ekran.size.height;
    final double genislik = ekran.size.width;


    return Scaffold(
      appBar: AppBar(
        title: Text("Tahmin Oyunu Ana Sayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("TAHMİN OYUNU",style: TextStyle(
              color: Colors.blue,fontSize: genislik/14,fontWeight: FontWeight.bold),),
            Image.asset("images/zar.jpg",width: genislik/3,),
            Padding(
              padding:  EdgeInsets.all(yukseklik/100),
              child: SizedBox(
                width: genislik/2.1,
                height: yukseklik/13,
                child: RaisedButton(

                  child: Text("KURALLAR"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: (){

                    Navigator.push(context, MaterialPageRoute(builder: (context) => Rules()));
                  },
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.all(yukseklik/100),
              child: SizedBox(
                width: genislik/2.1,
                height: yukseklik/13,
                child: RaisedButton(

                  child: Text("OYUNA BAŞLA"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: (){

                    Navigator.push(context, MaterialPageRoute(builder: (context) => Seviyeler() ));
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
