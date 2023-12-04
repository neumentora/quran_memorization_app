import 'package:flutter/material.dart';

class QuranHomePage extends StatefulWidget {
  const QuranHomePage({Key? key}) : super(key: key);

  @override
  State<QuranHomePage> createState() => _QuranHomePageState();
}

class _QuranHomePageState extends State<QuranHomePage> {
  List<String> surahs = [
    'Al-Fatiha',
    'Al-Baqarah',
    'Aali Imran',
  ];
  String filter = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quran Home Page'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  filter = value;
                });
              },
              decoration: const InputDecoration(
                labelText: 'Search',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: surahs.length,
              itemBuilder: (context, index) {
                return filter == ""
                    ? Card(
                  child: ListTile(
                    title: Text(surahs[index]),
                  ),
                )
                    : surahs[index]
                    .toLowerCase()
                    .contains(filter.toLowerCase())
                    ? Card(
                  child: ListTile(
                    title: Text(surahs[index]),
                  ),
                )
                    : Container();
              },
            ),
          ),
        ],
      ),
    );
  }
}
