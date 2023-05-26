import 'package:flutter/material.dart';
import 'package:soabanque/screens/activationScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ActivationScreen(),
    );
  }
}






















/* import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo for country picker package',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      supportedLocales: [
        const Locale('en'),
        const Locale('ar'),
        const Locale('es'),
        const Locale('de'),
        const Locale('fr'),
        const Locale('el'),
        const Locale('et'),
        const Locale('nb'),
        const Locale('nn'),
        const Locale('pl'),
        const Locale('pt'),
        const Locale('ru'),
        const Locale('hi'),
        const Locale('ne'),
        const Locale('uk'),
        const Locale('hr'),
        const Locale('tr'),
        const Locale('lv'),
        const Locale('lt'),
        const Locale('ku'),
        const Locale('nl'),
        const Locale('it'),
        const Locale.fromSubtags(
            languageCode: 'zh',
            scriptCode: 'Hans'),  Generic Simplified Chinese 'zh_Hans'
        const Locale.fromSubtags(
            languageCode: 'zh',
            scriptCode: 'Hant'),  Generic traditional Chinese 'zh_Hant'
      ],
      localizationsDelegates: [
        CountryLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo for country picker')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showCountryPicker(
              context: context,
              Optional.  Can be used to exclude(remove) one ore more country from the countries list (optional).
              exclude: <String>['KN', 'MF'],
              favorite: <String>['SE'],
              Optional. Shows phone code before the country name.
              showPhoneCode: true,
              onSelect: (Country country) {
                print('Select country: ${country.displayName}');
              },
               Optional. Sets the theme for the country list picker.
              countryListTheme: CountryListThemeData(
                 Optional. Sets the border radius for the bottomsheet.
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
                 Optional. Styles the search field.
                inputDecoration: InputDecoration(
                  labelText: 'Search',
                  hintText: 'Start typing to search',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: const Color(0xFF8C98A8).withOpacity(0.2),
                    ),
                  ),
                ),
                 Optional. Styles the text in the search field
                searchTextStyle: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                ),
              ),
            );
          },
          child: const Text('Show country picker'),
        ),
      ),
    );
  }
} */

//deuxieme recherche


/* dependencies:
  flutter:
    sdk: flutter
  intl_phone_field: ^1.2.0




IntlPhoneField(
    decoration: InputDecoration(
        labelText: 'Phone Number',
        border: OutlineInputBorder(
            borderSide: BorderSide(),
        ),
    ),
    initialCountryCode: 'NP',
    onChanged: (phone) {
        print(phone.completeNumber);
    },
)



import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
//import package file

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
         home: Home() //set the class here
    );
  }
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
       appBar: AppBar(
         title: Text("Phone Country Code"), //appbar title
         backgroundColor: Colors.redAccent, //appbar color
       ),
       body: Container( 
           padding: EdgeInsets.all(20),
           child: Column(children: <Widget>[
                Container( 
                  child:IntlPhoneField(
                        decoration: InputDecoration( //decoration for Input Field
                            labelText: 'Phone Number',
                            border: OutlineInputBorder(
                                borderSide: BorderSide(),
                            ),
                        ),
                        initialCountryCode: 'NP', //default contry code, NP for Nepal
                        onChanged: (phone) {
                            //when phone number country code is changed
                            print(phone.completeNumber); //get complete number
                            print(phone.countryCode); // get country code only
                            print(phone.number); // only phone number
                        },
                    ) 
                ),
                Container( 
                  margin: EdgeInsets.only(top:20), //make submit button 100% width
                  child:SizedBox( 
                    width:double.infinity,
                    child:RaisedButton(
                      onPressed: (){
                           //action for button
                      },
                      color: Colors.redAccent,
                      child: Text("Submit"),
                      colorBrightness: Brightness.dark,
                      //backgroud color is darker so its birghtness
                   ),
                  ),
                )
           ],)
       ),
    );
  }
}
 */