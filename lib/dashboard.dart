import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Halaman Utama"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 30, left: 30, top: 20, bottom: 30),
                child: Text("SMK WIKRAMA BOGOR",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 30
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 30, left: 30, top: 10, bottom: 30),
                child: Text("Berhasil Login...",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Kembali ke halaman dashboard")),
              Padding(
                padding: EdgeInsets.only(right: 30, left: 30, top: 5, bottom: 5),
                child: Text("Akmal Maulana Basri",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
