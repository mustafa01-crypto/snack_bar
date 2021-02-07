import 'package:flutter/material.dart';

class Rules extends StatefulWidget {
  @override
  _RulesState createState() => _RulesState();
}

class _RulesState extends State<Rules> {
  @override
  Widget build(BuildContext context) {
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
      body: Column(

          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("KURALLAR",style: TextStyle(
                  color: Colors.pink,fontSize: 36,fontWeight: FontWeight.bold
              ),textAlign: TextAlign.center),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("*- Oyundaki amaç 1 ile 100 arasında seçilen sayıyı bulmaktır.",style: TextStyle(

                        color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("*- Oyuncuya 5 tahmin hakkı verilir.",style: TextStyle(
                        color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),
                    ),

                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("*- Tahminlerden sonra verilen ipuçları sayıya yaklaşmanızı sağlar.",style: TextStyle(

                        color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                  ),

                ],
              ),
            )

          ],
      ),

    );
  }
}
