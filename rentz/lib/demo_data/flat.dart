import 'User.dart';

class Flat {
  final String id;
  final List<String> imageUrl;
  final List<String> videoUrl;
  final List<String> facilities;
  final String description;
  final String location;
  final double lat;
  final double long;
  final User owner;
  final String size;
  final double amount;
  final List<String> nearby;
  final bool occupied;

  const Flat({
    this.id,
    this.imageUrl,
    this.videoUrl,
    this.facilities,
    this.description,
    this.location,
    this.lat,
    this.long,
    this.owner,
    this.size,
    this.amount,
    this.nearby,
    this.occupied,
  });
}
