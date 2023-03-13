class PlaneMenuResponse {
  String name, image;
  PlaneMenuType menuType;

  PlaneMenuResponse({
    required this.name,
    required this.image,
    required this.menuType,
  });
}

enum PlaneMenuType {
  ticketOffice,
  onlinePlaneTicket
}

