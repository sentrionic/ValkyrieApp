import 'dart:ui';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    String color = hexColor.toUpperCase().replaceAll("#", "");
    if (color.length == 6) {
      color = "FF$color";
    }
    return int.parse(color, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
