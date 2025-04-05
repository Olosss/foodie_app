class RegexUtils {
  static final RegExp floatOrIntegerRegex = RegExp(r'^-?\d*\.?\d+$');
  static final RegExp maxTwoDecimalPlacesRegex = RegExp(r'^\d*\.?\d{0,2}');
}