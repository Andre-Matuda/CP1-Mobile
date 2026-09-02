import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CP1 - Mobile',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.white)),
      home: const MyHomePage(title: 'CP1-Mobile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void decrement() {
    setState(() {
      _counter--;
    });
  }

  void increment() {
    setState(() {
      _counter++;
    });
  }

  bool get isEmpty => _counter == 0;
  bool get isFull => _counter == 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Controole de lotação",
          style: TextStyle(
            color: Colors.white,
          )),
      ),

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/restaurante.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text(
              isFull ? "Restaurante lotado" : "Pode entrar",
              style: TextStyle(
                fontSize: 26,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),

            Text(
              _counter.toString(),
              style: TextStyle(fontSize: 125, color: Colors.black),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: isEmpty ? null : decrement,
                  style: TextButton.styleFrom(
                    backgroundColor: isEmpty
                        ? Colors.white.withAlpha(90)
                        : Colors.white,
                    fixedSize: Size(100, 20),
                  ),
                  child: Text(
                    "Saiu",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
                TextButton(
                  onPressed: isFull ? null : increment,
                  style: TextButton.styleFrom(
                    backgroundColor: isFull
                        ? Colors.white.withAlpha(90)
                        : Colors.white,
                    fixedSize: Size(100, 20),
                  ),
                  child: Text(
                    "Entrou",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
