import 'package:country_code_picker_x/country_code_picker_x.dart';
import 'package:country_code_picker_x/country_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      supportedLocales: [
        Locale("af"),
        Locale("am"),
        Locale("ar"),
        Locale("az"),
        Locale("be"),
        Locale("bg"),
        Locale("bn"),
        Locale("bs"),
        Locale("ca"),
        Locale("cs"),
        Locale("da"),
        Locale("de"),
        Locale("el"),
        Locale("en"),
        Locale("es"),
        Locale("et"),
        Locale("fa"),
        Locale("fi"),
        Locale("fr"),
        Locale("gl"),
        Locale("ha"),
        Locale("he"),
        Locale("hi"),
        Locale("hr"),
        Locale("hu"),
        Locale("hy"),
        Locale("id"),
        Locale("is"),
        Locale("it"),
        Locale("ja"),
        Locale("ka"),
        Locale("kk"),
        Locale("km"),
        Locale("ko"),
        Locale("ku"),
        Locale("ky"),
        Locale("lt"),
        Locale("lv"),
        Locale("mk"),
        Locale("ml"),
        Locale("mn"),
        Locale("ms"),
        Locale("nb"),
        Locale("nl"),
        Locale("nn"),
        Locale("no"),
        Locale("pl"),
        Locale("ps"),
        Locale("pt"),
        Locale("ro"),
        Locale("ru"),
        Locale("sd"),
        Locale("sk"),
        Locale("sl"),
        Locale("so"),
        Locale("sq"),
        Locale("sr"),
        Locale("sv"),
        Locale("ta"),
        Locale("tg"),
        Locale("th"),
        Locale("tk"),
        Locale("tr"),
        Locale("tt"),
        Locale("uk"),
        Locale("ug"),
        Locale("ur"),
        Locale("uz"),
        Locale("vi"),
        Locale("zh")
      ],
      localizationsDelegates: [
        CountryLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      home: Scaffold(
        appBar: AppBar(
          title: const Text('CountryPicker Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CountryCodePickerX(
                onChanged: print,
                // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                initialSelection: 'IT',
                favorite: ['+39', 'FR'],
                countryFilter: ['IT', 'FR'],
                showFlagDialog: false,
                comparator: (a, b) => b.name!.compareTo(a.name!),
                //Get the country information relevant to the initial selection
                onInit: (code) => print(
                    "on init ${code!.name} ${code.dialCode} ${code.name}"),
              ),
              CountryCodePickerX(
                onChanged: print,
                // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                initialSelection: 'IT',
                favorite: ['+39', 'FR'],
                countryFilter: ['IT', 'FR'],
                // flag can be styled with BoxDecoration's `borderRadius` and `shape` fields
                flagDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
              Container(
                color: Colors.red,
                child: CountryCodePickerX(
                  padding: EdgeInsets.zero,
                //  onChanged: _changeCountryCode,
                  initialSelection: 'US',
                  favorite: const ['+1', 'US'],
                  showFlagDialog: true,
                  showDropDownButton: true,
                  //onInit: init,
                  flagWidth: 25,
                ),
              ),
              SizedBox(
                width: 400,
                height: 60,
                child: CountryCodePickerX(
                  onChanged: print,
                  hideMainText: true,
                  showFlagMain: true,
                  showFlag: false,
                  initialSelection: 'TF',
                  hideSearch: true,
                  showCountryOnly: true,
                  showOnlyCountryWhenClosed: true,
                  alignLeft: true,
                ),
              ),
              SizedBox(
                width: 400,
                height: 60,
                child: CountryCodePickerX(
                  onChanged: (e) => print(e.toLongString()),
                  initialSelection: 'TF',
                  showCountryOnly: true,
                  showOnlyCountryWhenClosed: true,
                  favorite: ['+39', 'FR'],
                ),
              ),
              SizedBox(
                width: 100,
                height: 60,
                child: CountryCodePickerX(
                  enabled: false,
                  onChanged: (c) => c.name,
                  initialSelection: 'TF',
                  showCountryOnly: true,
                  showOnlyCountryWhenClosed: true,
                  favorite: ['+39', 'FR'],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
