import 'package:intl/intl.dart';

String hourFormater(DateTime date) {
  String dateFormat = DateFormat('HH:mm:ss a').format(date).toLowerCase();

  return dateFormat;
}

String dateFormater(DateTime date) {
  String dateFormat = DateFormat('dd/MM/yyyy').format(date).toLowerCase();

  return dateFormat;
}

DateTime convertedDate(int date) {
  DateTime convertedDate = DateTime.fromMillisecondsSinceEpoch(date);

  return convertedDate;
}

String formatNumber(int number) {
  final formatter = NumberFormat('#,##0', 'pt_BR');
  return formatter.format(number);
}
