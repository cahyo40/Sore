class NotificationModel {
  final String title;
  final String status;
  final String description; // Menambahkan deskripsi
  final DateTime createdDate; // Menambahkan tanggal dibuat
  final String venueName; // Menambahkan nama venue
  bool isRead;

  NotificationModel({
    required this.title,
    required this.status,
    required this.description, // Menambahkan deskripsi ke konstruktor
    required this.createdDate, // Menambahkan tanggal dibuat ke konstruktor
    required this.venueName, // Menambahkan nama venue ke konstruktor
    this.isRead = false,
  });
}
