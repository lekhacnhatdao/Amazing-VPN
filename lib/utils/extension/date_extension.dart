import 'package:intl/intl.dart';

extension DateTimeExt on DateTime {
  String toStringFormatted({String pattern = 'dd/M/yyyy'}) {
    return DateFormat(pattern).format(this);
  }
}
