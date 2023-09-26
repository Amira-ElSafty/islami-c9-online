
import 'package:flutter/material.dart';
import 'package:flutter_islami_app_c9_online/home/hadeth/hadeth_details_screen.dart';
import 'package:flutter_islami_app_c9_online/home/home_screen.dart';
import 'package:flutter_islami_app_c9_online/home/quran/sura_details_screen.dart';
import 'package:flutter_islami_app_c9_online/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_islami_app_c9_online/providers/app_config_provider.dart';
import 'package:provider/provider.dart';
void main(){
  runApp(
      ChangeNotifierProvider(
        create:(context) => AppConfigProvider() ,
          child: MyApp()));
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName : (context) => HomeScreen(),
        SuraDetailsScreen.routeName : (context) => SuraDetailsScreen(),
        HadethDetailsScreen.routeName : (context) => HadethDetailsScreen(),
      },
      theme: MyTheme.lightTheme,
      themeMode: provider.appTheme,
      darkTheme: MyTheme.darkTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.appLanguage),
    );
  }
}