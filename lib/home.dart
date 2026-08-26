import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Dynamic Counter"),
        elevation: 20,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$_counter",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: _counter >= 10
                        ? null // Otomatis greyed out & tidak memicu setState
                        : () {
                            setState(() {
                              _counter++;
                            });
                          },
                    child: const Icon(Icons.add),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: _counter <= 0
                        ? null // Otomatis greyed out & tidak memicu setState
                        : () {
                            setState(() {
                              _counter--;
                            });
                          },
                    child: const Icon(Icons.remove),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                _counter == 10 || _counter == 0
                    ? "End of the line, buddy 🗿"
                    : "",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
