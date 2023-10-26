import 'package:flutter/material.dart';
import '../widgets/armultipletargets.dart';

class LocationCheckPage extends StatefulWidget {
  const LocationCheckPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LocationCheckPageState();
}

class _LocationCheckPageState extends State<LocationCheckPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Location Check"),
        ),
        body: Container(
          child: const Center(
              // Here we load the Widget with the AR view
              child: ArMultipleTargetsWidget()),
        ));
  }
}
