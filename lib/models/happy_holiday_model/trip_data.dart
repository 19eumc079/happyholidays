import 'dart:ui';

class TripData {
  String id;
  String place;
  String country;

  TripData({
    required this.id,
    required this.place,
    required this.country,
  });

  factory TripData.fromJson(Map<String, dynamic> json) {
    return TripData(
      id: json['id'],
      place: json['place'],
      country: json['country'],
    );
  }
}
