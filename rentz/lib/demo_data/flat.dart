import 'User.dart';
// User Profile Object
class Flat {
  final String id;
  final String name;
  final List<String> nearby;
  final List<String> imageUrl;
  final List<String> videoUrl;
  final List<String> facilities;
  final String location;
  final String description;
  final double long;
  final double lat;
  final User owner;
  final String size;
  final double amount;
  final bool occupied;

  const Flat({
    this.id,
    this.name,
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
