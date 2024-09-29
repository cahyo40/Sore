import 'package:intl/intl.dart';

class DateHelper {
  // Mengonversi DateTime ke String dengan format tertentu dan locale
  static String formatDate(DateTime date, {String locale = 'en_US'}) {
    return DateFormat('yyyy-MM-dd', locale).format(date);
  }

  // Mengonversi DateTime ke String dengan format alternatif dan locale
  static String formatDateAlternative(DateTime date,
      {String locale = 'en_US'}) {
    return DateFormat('dd/MM/yyyy', locale).format(date);
  }

  // Mengonversi DateTime ke String dengan format hari dan locale
  static String formatDateWithDay(DateTime date, {String locale = 'en_US'}) {
    return DateFormat('EEEE, dd MMMM yyyy', locale).format(date);
  }

  // Mengonversi String ke DateTime
  static DateTime parseDate(String dateString, {String locale = 'en_US'}) {
    return DateFormat('yyyy-MM-dd', locale).parse(dateString);
  }

  // Mengonversi String ke DateTime dengan format alternatif
  static DateTime parseDateAlternative(String dateString,
      {String locale = 'en_US'}) {
    return DateFormat('dd/MM/yyyy', locale).parse(dateString);
  }

  // Mengonversi DateTime ke String dengan format waktu
  static String formatTime(DateTime time, {String locale = 'en_US'}) {
    return DateFormat('HH:mm', locale).format(time);
  }

  // Mengonversi String ke DateTime dengan waktu
  static DateTime parseTime(String timeString, {String locale = 'en_US'}) {
    return DateFormat('HH:mm', locale).parse(timeString);
  }

  // Mendapatkan tanggal hari ini
  static DateTime getToday() {
    return DateTime.now();
  }

  // Mendapatkan tanggal besok
  static DateTime getTomorrow() {
    return DateTime.now().add(const Duration(days: 1));
  }

  static List<String> generateTimeSlots(int start, int end) {
    if (start >= end || end > 24) {
      throw ArgumentError(
          'Parameter start harus lebih rendah dari parameter end dan end tidak boleh lebih dari 24.');
    }
    List<String> timeSlots = [];
    for (int hour = start; hour < end; hour++) {
      timeSlots.add('${hour.toString().padLeft(2, '0')}:00');
    }
    return timeSlots;
  }
}
