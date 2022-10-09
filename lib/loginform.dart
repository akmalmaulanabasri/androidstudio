import 'package:flutter/material.dart';
import 'package:flutter_application_1/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Akmal Form Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Login SMK Wikrama"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 30, left: 30, top: 10, bottom: 30),
              child: Text("SMK WIKRAMA BOGOR",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                ),
              ),
            ),
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
            Image.network('https://1.bp.blogspot.com/-E-W1IsWcAMY/X4gd0Sho_rI/AAAAAAAAA6Q/FoKveEC10pM_bmdT21XF5iCoCts0w_OTgCLcBGAsYHQ/s1024/DSC06940.JPG'),
            Padding(
              padding: EdgeInsets.only(right: 30, left: 30, top: 30),
              child : TextFormField(
                decoration: InputDecoration(
                    hintText: "Email",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1,
                            color: Colors.green
                        )
                    )
                ),
              ),
            ),Padding(
              padding: EdgeInsets.only(right: 30, left: 30, top: 15),
              child : TextFormField(
                decoration: InputDecoration(
                    hintText: "Password",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1,
                            color: Colors.green
                        )
                    )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 30, left: 30, top: 30),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Dashboard())
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
                ),
                child: Text("Login"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
