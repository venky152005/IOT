class DeviceModel {
  DeviceModel({
    this.id,
    this.name,
    this.frequency,
    this.temperature,
    this.ampere,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  String? id;
  String? name;
  String? frequency;
  String? temperature;
  String? ampere;
  bool? status;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory DeviceModel.fromJson(Map<String, dynamic> json) => DeviceModel(
        id: json["_id"],
        name: json["name"],
        frequency: json["frequency"],
        temperature: json["temperature"],
        ampere: json["ampere"],
        status: json["status"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
      );
}
