part of '../vizeo_theme.dart';

ThemeData themeDark(BuildContext context) {
  final typo = Typography.material2018(platform: Theme.of(context).platform);
  final textTheme = typo.black.copyWith(
    headline6: typo.black.headline6?.copyWith(
      color: Colors.green,
    ),
    bodyText2: typo.black.bodyText2?.copyWith(
      color: ColorVizeo.textPrimaryDark,
      fontWeight: FontWeight.w400,
      fontFamily: myFontFamily,
      fontSize: 18,
    ),
    bodyText1: typo.black.bodyText1?.copyWith(
      color: ColorVizeo.textPrimaryDark,
      fontWeight: FontWeight.w400,
      fontFamily: myFontFamily,
      fontSize: 18,
    ),
  );

  return ThemeData(
      brightness: Brightness.dark,
      backgroundColor: ColorVizeo.backgroundPrimaryDark,
      focusColor: ColorVizeo.backgroundTertiaryDark,
      buttonColor: ColorVizeo.backgroundSecondaryDark,
      fontFamily: myFontFamily,
      accentColor: ColorVizeo.accentDark,
      primaryColorBrightness: Brightness.dark,
      accentColorBrightness: Brightness.dark,
      scaffoldBackgroundColor: ColorVizeo.backgroundPrimaryDark,
      cardColor: ColorVizeo.backgroundSecondaryDark,
      hintColor: ColorVizeo.textTertiaryDark,
      colorScheme: const ColorScheme(
        primary: ColorVizeo.redVizeo,
        primaryVariant: ColorVizeo.redVizeoSoft,
        secondary: ColorVizeo.backgroundSecondaryLight,
        secondaryVariant: ColorVizeo.backgroundTertiaryLight,
        surface: ColorVizeo.backgroundPrimaryLight,
        background: ColorVizeo.backgroundPrimaryLight,
        error: ColorVizeo.redNegativeWarning,
        onPrimary: ColorVizeo.textOnRedVizeo,
        onSecondary: ColorVizeo.textSecondaryLight,
        onSurface: ColorVizeo.textPrimaryDark,
        onBackground: ColorVizeo.textPrimaryDark,
        onError: ColorVizeo.textOnRedVizeo,
        brightness: Brightness.dark,
      ),
      appBarTheme: AppBarTheme(
        brightness: Brightness.dark,
        color: ColorVizeo.backgroundSecondaryDark,
        elevation: 0,
        textTheme: textTheme.copyWith(
          headline6: const TextStyle(
            color: ColorVizeo.textSecondaryDark,
            fontFamily: myFontFamily,
          ),
        ),
        iconTheme: const IconThemeData(color: ColorVizeo.textSecondaryDark),
        actionsIconTheme: const IconThemeData(
          color: ColorVizeo.textSecondaryDark,
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: ColorVizeo.redVizeo,
        foregroundColor: ColorVizeo.textOnRedVizeo,
      ),
      dividerTheme: const DividerThemeData(
        color: ColorVizeo.backgroundSecondaryLight,
        thickness: 1,
      ));
}
