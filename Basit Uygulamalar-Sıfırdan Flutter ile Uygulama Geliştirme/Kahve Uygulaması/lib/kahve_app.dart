import 'package:flutter/material.dart';

void main() {
  runApp(const BenimUyg());
}

class BenimUyg extends StatelessWidget {
  const BenimUyg({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown[200],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 70.0,
                  backgroundColor: Colors.lime,
                  backgroundImage: AssetImage("images/kahve.jpg"),
                ),
                Text(
                  "Flutter Kahvesicisi",
                  style: TextStyle(
                    fontSize: 45,
                    color: Colors.brown[900],
                  ),
                ),
                Container(
                  width: 200,
                  child: Divider(
                    //divider için width yok bu yuzden container içine aldık
                    height: 30,
                    color: Colors.black,
                    thickness: 1.5,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: 45), //tüm satırı kaplamamasını sağladı
                  padding: EdgeInsets.all(10.0),
                  color: Colors.brown[800],
                  child: Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.white,
                        size: 40,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "flutter@gmail.com",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Card(
                    //CARDLAR GENELDE LİSTTİLE İLE KULLANILIR. PADDINGE İHTİYAC YOKTUR
                    margin: EdgeInsets.symmetric(horizontal: 45),
                    color: Colors.brown[800],
                    child: ListTile(
                      leading: Icon(
                        Icons.local_phone,
                        color: Colors.white,
                        size: 20,
                      ),
                      title: Text(
                        "+90 555 55 55",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
