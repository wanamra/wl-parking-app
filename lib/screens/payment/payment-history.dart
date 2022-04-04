import 'package:flutter/material.dart';
import 'package:ourcarmyplus/data/models/payment-history-data.dart';
import 'package:ourcarmyplus/widgets/a-text.dart';
import 'package:ourcarmyplus/widgets/effects/remove-scroll-effect.dart';

class PaymentHistoryPage extends StatelessWidget {
  final List<PaymentHistoryData> _histories = [
    PaymentHistoryData(
      "26 Jul",
      "Payment",
      "RM 8.48",
      "To City Square Parking Management ASKDJSAHKDJHASKJD ",
    ),
    PaymentHistoryData(
      "21 Jul",
      "Payment",
      "RM 9.00",
      "To City Square Parking Management",
    ),
    PaymentHistoryData(
      "17 Jul",
      "Payment",
      "RM 9.00",
      "To City Square Parking Management",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment History'),
      ),
      backgroundColor: Colors.white,
      body: ScrollConfiguration(
        behavior: RemoveScrollEffect(),
        child: ListView.builder(
          itemCount: _histories.length,
          itemBuilder: (_, index) => itemHistory(_, index.isOdd, _histories[index]),
        ),
      ),
    );
  }

  Widget itemHistory(BuildContext context, bool isOdd, PaymentHistoryData data) {
    return Container(
      padding: EdgeInsets.all(20),
      color: isOdd ? Colors.grey.shade100 : Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AText(data.date, size: 12, color: Colors.grey.shade500),
              SizedBox(height: 2),
              AText(data.title, size: 16),
              SizedBox(height: 6),
              SizedBox(
                width: MediaQuery.of(context).size.width - 120,
                child: AText(
                  data.desc,
                  textAlign: TextAlign.left,
                  color: Colors.grey.shade600,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          SizedBox(width: 10),
          AText(data.amount, size: 16),
        ],
      ),
    );
  }
}
