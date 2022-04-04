class InboxData {
  InboxData(
    this.title,
    this.subtitle,
    this.date,
    this.isRead,
  );

  String title;
  String subtitle;
  String date;
  bool isRead;

  factory InboxData.fromJson(Map<String, dynamic> json) => InboxData(
        json["title"],
        json["subtitle"],
        json["date"],
        json["isRead"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "subtitle": subtitle,
        "date": date,
        "isRead": isRead,
      };
}
