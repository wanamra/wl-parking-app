import 'package:flutter/material.dart';
import 'package:ourcarmyplus/data/models/ticket-detail.dart';
import 'package:ourcarmyplus/widgets/a-text.dart';
import 'package:ourcarmyplus/widgets/effects/remove-scroll-effect.dart';

class InvoicePage extends StatelessWidget {
  final List<TicketDetail> _itemDetail = [
    TicketDetail("Actual Fee", "13.00"),
    TicketDetail("Redemption Amount", "5.00"),
    TicketDetail("Fee", "8.00"),
  ];

  final List<TicketDetail> _subTotal = [
    TicketDetail("Sub Total", "8.00"),
    TicketDetail("Tax (6%)", "0.48"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Invoice"), centerTitle: true),
      backgroundColor: Colors.grey.shade200,
      body: ScrollConfiguration(
        behavior: RemoveScrollEffect(),
        child: ListView(
          children: [
            header(context),
            receipt(context),
            paymentMethod(context),
          ],
        ),
      ),
    );
  }

  Widget header(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15, 15, 15, 7.5),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AText(
            "City Square JB",
            spacing: 0.8,
          ),
          SizedBox(height: 6),
          AText(
            "City Square Shopping Mall, \nJalan Wong Ah Fok\n81100, Johor Bahru\nJohor",
            size: 13,
            spacing: 0.8,
            color: Colors.grey.shade500,
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 20),
          AText("Ticket Number"),
          SizedBox(height: 5),
          AText(
            "JKWI3891273891278239742342",
            spacing: 0.8,
            color: Colors.grey.shade500,
          ),
        ],
      ),
    );
  }

  Widget receipt(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15, 7.5, 15, 7.5),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AText(
            "RM 8.48",
            size: 20,
            color: Theme.of(context).primaryColor,
            weight: FontWeight.w600,
          ),
          AText("16 Nov 2021, 10:30 AM"),
          SizedBox(height: 10),
          Divider(thickness: 1.2, color: Colors.grey.shade200),
          itemHeaderFooter(
              "Item".toUpperCase(), "Amount (MYR)".toUpperCase(), 14),
          Divider(thickness: 1.2, color: Colors.grey.shade200),
          itemList(_itemDetail),
          Divider(thickness: 1.2, color: Colors.grey.shade200),
          itemList(_subTotal),
          Divider(thickness: 1.2, color: Colors.grey.shade200),
          itemHeaderFooter("Total Paid".toUpperCase(), "8.48", 20),
        ],
      ),
    );
  }

  Widget paymentMethod(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15, 7.5, 15, 15),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AText(
            "Payment Method".toUpperCase(),
            size: 12,
            spacing: .8,
            weight: FontWeight.w400,
          ),
          SizedBox(height: 10),
          AText(
            "Online Banking".toUpperCase(),
            color: Theme.of(context).primaryColor,
            weight: FontWeight.bold,
          ),
        ],
      ),
    );
  }

  Widget itemList(List<TicketDetail> _list) {
    return Column(
      children: _list.map((data) => itemDetail(data)).toList(),
    );
  }

  Widget itemHeaderFooter(String label, String subLabel, double size) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [AText(label), AText(subLabel, size: size)],
      ),
    );
  }

  Widget itemDetail(TicketDetail _ticket) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AText(_ticket.label),
          AText(_ticket.sublabel, weight: FontWeight.w400),
        ],
      ),
    );
  }
}
