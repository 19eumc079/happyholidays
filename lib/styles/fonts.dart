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

class WelcomeFonts {
  static final primaryText = AppFonts.getAppFont(
    fontSize: 15,
    color: TextColor.secondaryColor,
  );
  static final secontaryText = AppFonts.getAppFont(
    fontSize: 43,
    fontWeight: FontWeight.bold,
    color: TextColor.secondaryColor,
  );
}

class TextFonts {
  static final primaryText = AppFonts.getAppFont(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: TextColor.primaryColor,
  );
  static final secontaryText = AppFonts.getAppFont(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: TextColor.primaryColor,
  );
  static final teritaryText = AppFonts.getAppFont(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: TextColor.teritaryColor,
  );

  static final qationaryText = AppFonts.getAppFont(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: TextColor.secondaryColor,
  );
}
