import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        useMaterial3: true,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )),
        ),
      ),
      home: const MyHomePage(title: 'Calculator'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              width: 400,
              height: 90,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.centerRight,
              child: Text(
                "0", // user input
                style: TextStyle(
                  background: Paint()..color = Colors.grey,
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
            ),

            // First Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Clear button
                  },
                  child: Text("C"),
                ),
                ElevatedButton(
                  onPressed: () {
                    // +/- button
                  },
                  child: const Text("0"),
                ),
                ElevatedButton(
                  onPressed: () {
                    // operator
                  },
                  child: const Text("÷"),
                ),
                ElevatedButton(
                  onPressed: () {
                    // operator
                  },
                  child: const Text("x"),
                ),
              ],
            ),

            // Second Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("7"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("8"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("9"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("-"),
                ),
              ],
            ),

            // Third Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("4"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("5"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("6"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("+"),
                ),
              ],
            ),

            // Fourth Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("1"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("2"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("3"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("="),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
