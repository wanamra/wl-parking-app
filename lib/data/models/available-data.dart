class AvailableData {
    AvailableData(
        this.location,
        this.spaces,
        this.distance,
    );

    String location;
    int spaces;
    String distance;

    factory AvailableData.fromJson(Map<String, dynamic> json) => AvailableData(
        json["location"],
        json["spaces"],
        json["distance"],
    );

    Map<String, dynamic> toJson() => {
        "location": location,
        "spaces": spaces,
        "distance": distance,
    };
}
