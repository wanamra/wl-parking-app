import 'package:flutter/material.dart';
import 'package:ourcarmyplus/data/models/available-data.dart';
import 'package:ourcarmyplus/widgets/a-text.dart';
import 'package:ourcarmyplus/widgets/effects/remove-scroll-effect.dart';

class ParkingAvailable extends StatelessWidget {
  final List<AvailableData> _spaces = [
    AvailableData("Impiana KLCC Hotel", 221, "10 km"),
    AvailableData("JBCC Mall", 122, "23 km"),
    AvailableData("Paradigm Mall", 334, "60 km"),
    AvailableData("Alamanda", 46, "100 km"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parking Availability'),
      ),
      body: ScrollConfiguration(
        behavior: RemoveScrollEffect(),
        child: ListView.builder(
          padding: EdgeInsets.all(20),
          itemCount: _spaces.length,
          itemBuilder: (_, index) => itemParking(_, _spaces[index]),
        ),
      ),
    );
  }

  Widget itemParking(BuildContext context, AvailableData data) {
    return ListTile(
      title: Text(data.location),
      subtitle: AText(
        "${data.spaces} available spaces \n${data.distance}",
        textAlign: TextAlign.left,
        color: Colors.grey.shade500,
        overflow: TextOverflow.ellipsis,
      ),
      isThreeLine:  true,
    );
  }
}
