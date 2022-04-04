class PaymentHistoryData {
    PaymentHistoryData(
        this.date,
        this.title,
        this.amount,
        this.desc,
    );

    String date;
    String title;
    String amount;
    String desc;

    factory PaymentHistoryData.fromJson(Map<String, dynamic> json) => PaymentHistoryData(
        json["date"],
        json["title"],
        json["amount"],
        json["desc"],
    );

    Map<String, dynamic> toJson() => {
        "date": date,
        "title": title,
        "amount": amount,
        "desc": desc,
    };
}