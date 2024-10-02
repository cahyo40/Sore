class OrderVenueModel {
  final int id;
  final String venueName;
  final String date;
  final String time; // Menambahkan atribut waktu
  final int total;
  final String status;

  OrderVenueModel({
    required this.id,
    required this.venueName,
    required this.date,
    required this.time, // Menambahkan parameter waktu
    required this.total,
    required this.status,
  });
}
