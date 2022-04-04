import 'package:flutter/material.dart';
import 'package:ourcarmyplus/data/models/ticket-detail.dart';
import 'package:ourcarmyplus/widgets/a-text.dart';
import 'package:ourcarmyplus/widgets/buttons/button.dart';
import 'package:ourcarmyplus/widgets/effects/remove-scroll-effect.dart';

class PaymentDetailPage extends StatelessWidget {
  final List<TicketDetail> _ticketInfo = [
    TicketDetail("Ticket Number", "1239871237918231"),
    TicketDetail("Entry Time", "10/10/2021 08:00:00"),
    TicketDetail("Actual Fee(MYR)", "13.00"),
    TicketDetail("Redemption Amount(MYR)", "5.00"),
    TicketDetail("Fee(MYR)", "8.00"),
  ];

  final List<TicketDetail> _subInfo = [
    TicketDetail("Sub Info (MYR)", "8.00"),
    TicketDetail("Tax - 6% (MYR)", "0.48"),
    TicketDetail("Total (MYR)", "8.48"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Parking Payment"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ScrollConfiguration(
              behavior: RemoveScrollEffect(),
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 20),
                children: [
                  locationInfo(),
                  SizedBox(height: 40),
                  ticketInfo(),
                  SizedBox(height: 40),
                  subTotalInfo(),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Button("Pay", () => Navigator.of(context).pushNamed('/payment-method')),
          )
        ],
      ),
    );
  }

  Widget locationInfo() {
    return Column(
      children: [
        AText("Alamanda Shopping Center", size: 16),
        SizedBox(height: 8),
        AText("Alamanda Shopping Mall", color: Colors.grey.shade500),
        AText("Jalan Alamanda, Presint 1", color: Colors.grey.shade500),
        AText("62000 Putrajaya", color: Colors.grey.shade500),
        AText("Wilayah Persekutuan Putrajaya", color: Colors.grey.shade500),
      ],
    );
  }

  Widget ticketInfo() {
    return Container(
      color: Colors.grey.shade200,
      child: Column(
        children: _ticketInfo.map((data) => itemDetail(15, data)).toList(),
      ),
    );
  }

  Widget subTotalInfo() {
    return Container(
      child: Column(
        children: _subInfo.map((data) => itemDetail(10, data)).toList(),
      ),
    );
  }

  Widget itemDetail(double vertical, TicketDetail _ticket) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: vertical),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AText(_ticket.label),
          AText(_ticket.sublabel, size: 16, weight: FontWeight.w600),
        ],
      ),
    );
  }
}
