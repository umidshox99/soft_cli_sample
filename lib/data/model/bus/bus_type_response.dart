class BusTypeResponse {
  String name, image;
  BusType type;

  BusTypeResponse({
    required this.name,
    required this.image,
    required this.type,
  });
}

enum BusType {
  cityBus,
  districtBus,
  regionBus,
}