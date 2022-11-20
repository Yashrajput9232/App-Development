import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Engine')),
          actions: [
            IconButton(
                onPressed: () {
                   showSearch(
                    context: context,
                    delegate: customsearch(),
                  );
                },
                icon: const Icon(Icons.search))
          ],
        ),
        backgroundColor: Colors.black12,
      ),
    );
  }
}

class customsearch extends SearchDelegate {
  List<String> alldata = [
    'Yash',
    'Tushar',
    'Sayali',
    'Shubham',
    'Mansi',
    'Sejal'
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = ' ';
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchquery = [];
    for (var item in alldata) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchquery.add(item);
      }
    }
    return ListView.builder(
        itemCount: matchquery.length,
        itemBuilder: (context, index) {
          var result = matchquery[index];
          return ListTile(
            title: Text(result)
            );
        }
        );
  }

  @override
  Widget buildResults(BuildContext context) {
   List<String> matchquery = [];
    for (var item in alldata) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchquery.add(item);
      }
    }
    return ListView.builder(
        itemCount: matchquery.length,
        itemBuilder: (context, index) {
          var result = matchquery[index];
          return ListTile(
            title: Text(result)
            );
        }
        );
  }
}
