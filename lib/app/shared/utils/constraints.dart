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
  String dataString = date.toString();
  DateTime data = DateTime.parse(
      '${dataString.substring(0, 4)}-${dataString.substring(4, 6)}-${dataString.substring(6, 8)}');

  return data;
}

String formatNumber(int number) {
  final formatter = NumberFormat('#,##0', 'pt_BR');
  return formatter.format(number);
}

String formatarData(String dataOriginal) {
  RegExp regex = RegExp(r'(\d{1,2})/(\d{1,2})/(\d{4}) (\d{1,2}):(\d{2})');
  RegExpMatch? match = regex.firstMatch(dataOriginal);

  if (match != null) {
    int dia = int.parse(match.group(1) ?? '');
    int mes = int.parse(match.group(2) ?? '');
    int ano = int.parse(match.group(3) ?? '');

    return '${mes.toString().padLeft(2, '0')}/${dia.toString().padLeft(2, '0')}/$ano';
  } else {
    return '';
  }
}
