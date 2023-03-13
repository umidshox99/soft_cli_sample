class TrainTypeResponse {
  String name, image;
  TrainType type;

  TrainTypeResponse({
    required this.name,
    required this.image,
    required this.type,
  });
}

enum TrainType {
  districtTrain,
  regionTrain,
  onlineTrain,
}