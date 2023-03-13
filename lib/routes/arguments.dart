import 'package:camera/camera.dart';
import 'package:soft_cli_sample/data/model/bus/region_bus_place_response.dart';
import 'package:soft_cli_sample/data/model/train/region_train_place_response.dart';

class VerifyArguments {
  final String phone;
  final int seconds;

  VerifyArguments({
    required this.phone,
    required this.seconds,
  });
}

class ChangePhoneVerifyArguments {
  final String phone;

  ChangePhoneVerifyArguments({
    required this.phone,
  });
}

class NotificationDetailArguments {
  final String id;

  NotificationDetailArguments({
    required this.id,
  });
}

class PlaceDetailArguments {
  final String id;

  PlaceDetailArguments({
    required this.id,
  });
}
class HotelDetailArguments {
  final String id;

  HotelDetailArguments({
    required this.id,
  });
}
class GuideDetailArguments {
  final String id;

  GuideDetailArguments({
    required this.id,
  });
}
class RestaurantDetailArguments {
  final String id;

  RestaurantDetailArguments({
    required this.id,
  });
}
class TravelAgencyDetailArguments {
  final String id;

  TravelAgencyDetailArguments({
    required this.id,
  });
}

class CameraArguments {
  final CameraController controller;
  final List<CameraDescription> cameras;

  CameraArguments({
    required this.controller,
    required this.cameras,
  });
}

class RegionBusArguments {
  final bool isRegion;

  RegionBusArguments({required this.isRegion});
}

class SelectRegionBusArguments {
  final bool isRegion;
  final List<RegionBusPlace> regions;

  SelectRegionBusArguments({required this.isRegion, required this.regions});
}

class RegionTrainArguments {
  final bool isRegion;

  RegionTrainArguments({required this.isRegion});
}

class SelectRegionTrainArguments {
  final bool isRegion;
  final List<RegionTrainPlace> regions;

  SelectRegionTrainArguments({required this.isRegion, required this.regions});
}
