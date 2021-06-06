class TempSearch {
  List<String> services = [
    "car",
    "bike",
    "construction",
    "marridge",
    "room",
    "flat",
    "hostel"
  ];
  List<String> search(String query) {
    List<String> filter = [];
    for (int i = 0; i < services.length; i++) {
      if (query.contains(services[i])) {
        filter.add(services[i]);
      }
    }
    return filter;
  }
}
