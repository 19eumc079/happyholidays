part of styles;

class AppFonts {
  static TextStyle getAppFont({
    FontWeight? fontWeight,
    double? fontSize,
    Color? color,
  }) {
    return GoogleFonts.inter(
        textStyle: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    ));
  }
}

class HeaderFonts {
  static final primaryText = AppFonts.getAppFont(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: TextColor.secondaryColor,
  );
}
