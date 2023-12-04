import 'package:flutter/material.dart';

class ScreeOnePage extends StatefulWidget {
  const ScreeOnePage({super.key});

  @override
  State<ScreeOnePage> createState() => _ScreeOnePageState();
}

class _ScreeOnePageState extends State<ScreeOnePage> {
  final titles = ["List 1", "List 2", "List 3"];
  final subtitles = [
    "Here is list 1 subtitle",
    "Here is list 2 subtitle",
    "Here is list 3 subtitle"
  ];
  final icons = [Icons.ac_unit, Icons.access_alarm, Icons.access_time];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView.builder(
          itemCount: titles.length,
          itemBuilder: (context, index) {
            return Card(
                child: ListTile(
                    onTap: () {},
                    title: Text(titles[index]),
                    subtitle: Text(subtitles[index]),
                    leading: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1547721064-da6cfb341d50")),
                    trailing: Icon(icons[index])));
          }),
    ));
  }
}
