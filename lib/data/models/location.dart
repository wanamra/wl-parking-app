class Location {

  Location(this.val, this.label);

  String val;
  String label;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        json["val"],
        json["label"],
      );

  Map<String, dynamic> toJson() => {
        "val": val,
        "label": label,
      };
}
