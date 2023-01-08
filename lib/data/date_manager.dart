class DateManager {
  final year = DateTime.now().year.toString();

  bool isDay() {
    int hour = DateTime.now().hour;
    return hour >= 6 && hour < 18;
  }
}
