import 'package:fluttrfly/utils/utils.dart';
import 'package:intl/intl.dart';

class NumUtils {
  static final _indianRupeesFormat = NumberFormat.currency(
    locale: 'en_IN',
    decimalDigits: 1,
    symbol: '₹ ',
    name: 'INR',
  );

  static String inRupeesFormat(num value) => _indianRupeesFormat.format(value);

  static String toTwoDigits(int value) {
    return value.toString().padLeft(2, '0');
  }

  static String toStrVal (num? val){
    if(val.isNull){
      return '';
    }else{
      if(val is int){
        return val.toInt().toString();
      }
      return val!.toStringAsFixed(2);
    }
  }
}
