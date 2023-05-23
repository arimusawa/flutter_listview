import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_listview/main.dart';

class listView extends StatefulWidget {
  const listView({super.key});

  @override
  State<listView> createState() => _listViewState();
}

class _listViewState extends State<listView> {
  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8'
    ];
    final List<int> colorCodes = <int>[600, 500, 400, 300, 200, 100, 90, 50];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text("List View")),
          body: ListView.builder(
            padding: EdgeInsets.all(10),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MyApp(
                      ),
                    ),
                  );
                },
                child: Container(
                  height: 75,
                  color: Colors.blue[colorCodes[index]],
                  child: Center(child: Text(entries[index])),
                ),
              );
            },
          )),
    );
  }
}
