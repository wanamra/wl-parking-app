import 'package:flutter/material.dart';
import 'package:ourcarmyplus/widgets/a-text.dart';
import 'package:ourcarmyplus/widgets/effects/remove-scroll-effect.dart';

class ParkingDetailPage extends StatefulWidget {
  @override
  State<ParkingDetailPage> createState() => _ParkingDetailPageState();
}

class _ParkingDetailPageState extends State<ParkingDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Impiana KLCC Hotel'),
      ),
      body: ScrollConfiguration(
        behavior: RemoveScrollEffect(),
        child: ListView(
          children: [
            Image.asset(
              "assets/imgs/bg2.png",
              height: 250,
              fit: BoxFit.cover,
            ),
            parkingInfo(),
            rateInfo(),
          ],
        ),
      ),
    );
  }

  Widget parkingInfo() {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 15, 15, 7.5),
      padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AText(
            "Carpark Info".toUpperCase(),
            size: 12,
            spacing: .8,
            weight: FontWeight.w600,
            color: Theme.of(context).primaryColor,
          ),
          SizedBox(height: 8),
          itemInfo("Total Spaces", "112", 24, Theme.of(context).primaryColor),
          SizedBox(height: 8),
          itemInfo("Security Guidance", "24 hours", 14, Colors.grey.shade600),
        ],
      ),
    );
  }

  Widget rateInfo() {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 7.5, 15, 15),
      padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AText(
            "Parking Rate".toUpperCase(),
            size: 12,
            spacing: .8,
            weight: FontWeight.w600,
            color: Theme.of(context).primaryColor,
          ),
          SizedBox(height: 2.5),
          AText(
            "Include service tax 6%",
            size: 11,
            color: Colors.grey.shade500,
          ),
          SizedBox(height: 8),
          itemInfo(
              "Operation Day", "Monday - Saturday", 14, Colors.grey.shade600),
          SizedBox(height: 10),
          itemInfo(
            "First 1 hour or part thereof",
            "RM 7/hour",
            14,
            Colors.grey.shade600,
          ),
          SizedBox(height: 10),
          itemInfo(
            "Every subsequent hour or part thereof",
            "RM 4/hour",
            14,
            Colors.grey.shade600,
          ),
          SizedBox(height: 10),
          itemInfo(
            "Dinner and Seminar Guest",
            "RM 15/hour",
            14,
            Colors.grey.shade600,
          ),
          SizedBox(height: 10),
          itemPenalty("Penalty for loss ticket", "RM 50.00", 14),
        ],
      ),
    );
  }

  Widget itemInfo(String label, String subLabel, double size, Color color) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AText(
            label,
            size: 13,
            color: Colors.grey.shade600,
          ),
          AText(
            subLabel,
            size: size,
            weight: FontWeight.bold,
            color: color,
          ),
        ],
      ),
    );
  }

  Widget itemPenalty(String label, String subLabel, double size) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AText(label, size: 13, color: Colors.redAccent),
          AText(
            subLabel,
            size: size,
            weight: FontWeight.bold,
            color: Colors.redAccent,
          ),
        ],
      ),
    );
  }
}
