class PaymentMethodType {
    PaymentMethodType({
        this.label = '',
        this.icon = '',
        this.value,
    });

    String label;
    String icon;
    String? value;

    factory PaymentMethodType.fromJson(Map<String, dynamic> json) => PaymentMethodType(
        label: json["label"],
        icon: json["icon"],
        value: json["value"],
    );

    Map<String, dynamic> toJson() => {
        "label": label,
        "icon": icon,
        "value": value,
    };
}