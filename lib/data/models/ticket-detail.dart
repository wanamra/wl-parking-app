class TicketDetail {
  TicketDetail(
    this.label,
    this.sublabel,
  );

  String label;
  String sublabel;

  factory TicketDetail.fromJson(Map<String, dynamic> json) => TicketDetail(
        json["label"],
        json["sublabel"],
      );

  Map<String, dynamic> toJson() => {
        "label": label,
        "sublabel": sublabel,
      };
}
