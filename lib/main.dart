import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_components_demo/featureComps/NavigationDemo/Pages/PageThree.dart';
import 'package:flutter_components_demo/featureComps/NavigationDemo/Pages/UnknownPage.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'Indexpage.dart';

void main() {
  debugPaintSizeEnabled = true;
  return runApp(Myapp());
}

class Myapp extends StatelessWidget {
  DateTime clicktime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        DateTime now = DateTime.now();
        print('123123');
        if (now.difference(clicktime).inMilliseconds > 300) {
          clicktime = now;
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text("再按一次 Back 按钮退出"),
          ));
          return false;
        } else {
          Navigator.of(context).pop(true);
          return true;
        }
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "pagethree": (context) => PageThree(),
        },
        onUnknownRoute: (RouteSettings setting) => MaterialPageRoute(builder: (context) => UnknownPage()),
        theme: ThemeData(
            platform: TargetPlatform.iOS,
            brightness: Brightness.light,
            primaryColor: Colors.cyan,
            dividerTheme:
                DividerThemeData(thickness: 1.0, indent: 5.0, endIndent: 5.0)),
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          const FallbackCupertinoLocalisationsDelegate(),
        ],
        supportedLocales: const [
          const Locale('zh', 'CH'),
          const Locale('en', 'US'),
        ],
        locale: Locale('zh'),
        home: Indexpage(),
      ),
    );
  }
}

class FallbackCupertinoLocalisationsDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalisationsDelegate();

  @override
  bool isSupported(Locale locale) => true;

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      DefaultCupertinoLocalizations.load(locale);

  @override
  bool shouldReload(FallbackCupertinoLocalisationsDelegate old) => false;
}
