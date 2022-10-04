import 'package:easy_localization/easy_localization.dart';
import 'package:el_translator/language_page.dart';
import 'package:el_translator/translations/locale_keys.g.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en'), Locale('hi'), Locale('tr')],
        path: 'assets/translations',
        fallbackLocale: Locale('en'),
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        supportedLocales: context.supportedLocales,
        localizationsDelegates: context.localizationDelegates,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        // theme: themeNotifier.getTheme(),
        // darkTheme: darkTheme,
        home: Home());
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // provider = Provider.of<LocaleProvider>(context, listen: false);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var materialButton = MaterialButton(
      color: Colors.amber,
      onPressed: () {
        // Navigator.push(
        //     context, MaterialPageRoute(builder: ((context) => SettingsPage())));
      },
      child: Text("API Call 4"),
    );
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: newMethod(),
        backgroundColor: Theme.of(context).backgroundColor,
      ),
      body: Container(
        child: Column(
          children: [
            // Text(LocaleKeys.title.tr()),
            Text(LocaleKeys.message.tr()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NewWidget2(),
                ElevatedButton(
                  onPressed: () async {
                    await context.setLocale(Locale('en'));
                  },
                  child: Text("English"),
                ),
                ElevatedButton(
                  onPressed: () async {
                    // provider!.setHiLocale(context);
                    await context.setLocale(Locale('hi'));
                  },
                  child: Text("हिन्दी"),
                ),
              ],
            ),
            MaterialButton(
              color: Colors.amber,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => LanguagePage())));
              },
              child: Text("Next"),
            ),

            // MaterialButton(
            //   color: Colors.amber,
            //   onPressed: () {
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: ((context) => SettingsPage())));
            //   },
            //   child: Text("API Call 2"),
            // ),
            // MaterialButton(
            //   color: Colors.amber,
            //   onPressed: () {
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: ((context) => SettingsPage())));
            //   },
            //   child: NewWidget(),
            // ),
            materialButton,
            // MaterialButton(
            //   color: Colors.amber,
            //   onPressed: () {
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: ((context) => SettingsPage())));
            //   },
            //   child: Text("Setting"),
            // )
          ],
        ),
      ),
    );
  }

  Text newMethod() => Text("Home Page");
}

class NewWidget2 extends StatelessWidget {
  const NewWidget2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        await context.setLocale(Locale('tr'));
      },
      child: Text("Turkish"),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("API Call 3");
  }
}
