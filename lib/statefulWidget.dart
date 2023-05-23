import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class stafulWidget extends StatefulWidget {
  const stafulWidget({super.key});

  @override
  State<stafulWidget> createState() => _stafulWidgetState();
}

class _stafulWidgetState extends State<stafulWidget> {
  int number = 0;
  void tekanTombol() {
    setState(() {
      number = number + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stateful Widget"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: 
            <Widget>[
              Text(number.toString()),
              ElevatedButton(
                onPressed: tekanTombol,
                child: const Text("BUTTON!"),
              )
            ],
        )),
        floatingActionButton: FloatingActionButton(onPressed: () {
          Navigator.pop(context);
        }, child: Icon(Icons.arrow_back),),
      ),
    );
  }
}
