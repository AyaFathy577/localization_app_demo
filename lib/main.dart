import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:localization_app_demo/localization/demo_localization.dart';
import 'package:localization_app_demo/localization/language_constants.dart';
import 'package:localization_app_demo/router/custom_router.dart';
import 'package:localization_app_demo/router/route_constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  const MyApp({Key key}) : super(key: key);

  static void setLocale(BuildContext context, Locale newLocale) {
    _MyAppState state = context.findAncestorStateOfType<_MyAppState>();
    state.setLocale(newLocale);
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale = Locale("ar", "SA");

  setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void didChangeDependencies() {
    getLocale().then((locale) {
      setState(() {
        this._locale = locale;
      });
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    // if (this._locale == null) {
    //   return Container(
    //     color: Colors.white,
    //     child: Center(
    //       child: CircularProgressIndicator(),
    //     ),
    //   );
    // } else {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Flutter Localization Demo",
        theme: ThemeData(primarySwatch: Colors.blue),
        locale: _locale,
        supportedLocales: [
          Locale("en", "US"),
          Locale("ur", "PK"),
          Locale("ar", "SA"),
        ],
        localizationsDelegates: [
          DemoLocalization.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        localeResolutionCallback: (locale, supportedLocales) {
          for (var supportedLocale in supportedLocales) {
            if (supportedLocale.languageCode == locale.languageCode &&
                supportedLocale.countryCode == locale.countryCode) {
              return supportedLocale;
            }
          }
          return supportedLocales.first;
        },
        onGenerateRoute: CustomRouter.generatedRoute,
        initialRoute: splashRoute,
      );
    }
  // }
}
