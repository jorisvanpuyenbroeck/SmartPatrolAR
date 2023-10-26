import 'dart:math';

import 'package:location/location.dart';

import 'poi.dart';

class ApplicationModelPois {
  static Future<List<Poi>> prepareApplicationDataModel() async {
    Random random = Random();
    const int min = 1;
    const int max = 10;
    const int placesAmount = 10;
    final Location location = Location();

    List<Poi> pois = <Poi>[];
    try {
      LocationData userLocation = await location.getLocation();
      for (int i = 0; i < placesAmount; i++) {
        pois.add(Poi(i+1, userLocation.longitude! + 0.001 * (5 - min + random.nextInt(max - min)), userLocation.latitude! + 0.001 * (5 - min + random.nextInt(max - min)), 'This is the description of POI#${i+1}', userLocation.altitude!, 'POI#${i+1}'));
      }
    } catch(e) {
      print("Location Error: $e");
    }
    return pois;
  }
}