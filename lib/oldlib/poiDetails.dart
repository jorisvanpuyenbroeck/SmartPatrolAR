import 'dart:io';

import 'package:flutter/material.dart';

class PoiDetailsState extends State<PoiDetailsWidget> {

  String id;
  String title;
  String description;

  PoiDetailsState({required this.id, required this.title, required this.description});

  AppBar? get appBar {
    if (!Platform.isIOS) {
      return null;
    }
    return AppBar(
      title: const Text("Poi Details"),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 60.0),
        child: Column (
          children: <Widget>[
            Row(
              children: <Widget>[
                const Expanded(flex: 1, child: Text("ID", style: TextStyle(fontWeight: FontWeight.bold))),
                Expanded(flex: 2, child: Text(id))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Row(
                children: <Widget>[
                  const Expanded(flex: 1, child: Text("Name", style: TextStyle(fontWeight: FontWeight.bold))),
                  Expanded(flex: 2, child: Text(title))
                ],
              )
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Row(
                children: <Widget>[
                  const Expanded(flex: 1, child: Text("Description", style: TextStyle(fontWeight: FontWeight.bold))),
                  Expanded(flex: 2, child: Text(description))
                ],
              )
            )
          ],
        ),
      )
    );
  }

}

class PoiDetailsWidget extends StatefulWidget {

  final String id;
  final String title;
  final String description;

  const PoiDetailsWidget({
    Key? key,
    required this.id,
    required this.title,
    required this.description
  });

  @override
  PoiDetailsState createState() => PoiDetailsState(id: id, title: title, description: description);
}