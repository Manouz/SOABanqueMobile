import 'package:flutter/material.dart';
import 'package:soabanque/screens/identite.dart';
import 'package:soabanque/widgets/alertdialog.dart';
import 'package:soabanque/widgets/boutton.dart';
import 'package:soabanque/widgets/entetePage.dart';
import 'package:soabanque/widgets/textlink.dart';
//import 'package:country_picker/country_picker.dart';

class Identity extends StatefulWidget {
  const Identity({super.key});

  @override
  State<Identity> createState() => _IdentityState();
}

class _IdentityState extends State<Identity> {
  TextEditingController _cni = TextEditingController();
  TextEditingController _emission = TextEditingController();
  TextEditingController _expiration = TextEditingController();

  void _selectDateEm() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1690),
            lastDate: DateTime.now())
        .then((touchedexp) {
      if (touchedexp == null) {
        return;
      }
      setState(() {
        _emission.text = touchedexp.toString();
      });
    });
  }

  void _selectDateExp() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1690),
            lastDate: DateTime.now())
        .then((touchedexp) {
      if (touchedexp == null) {
        return;
      }
      setState(() {
        _expiration.text = touchedexp.toString();
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _cni = TextEditingController();
    _emission = TextEditingController();
    _expiration = TextEditingController();
  }

  @override
  void dispose() {
    _cni.dispose();
    _emission.dispose();
    _expiration.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text(
          "Renseignements Personnel",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromRGBO(0, 146, 255, 1),
      ),
      body: Center(
        child: Column(
          children: [
            const entetePage(
                h4: "Identification",
                h6: "Ensuite,veuillez fournir les détails de vôtre pièce national d’identité"),
            Padding(
              padding: EdgeInsets.only(left: 28, right: 28),
              child: TextField(
                controller: _cni,
                decoration: InputDecoration(label: Text("L'identifiant CNI")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28, right: 28),
              child: TextField(
                controller: _emission,
                onTap: _selectDateEm,
                decoration: InputDecoration(
                    label: Text("Date d'émission"),
                    suffixIcon: Icon(Icons.date_range_outlined)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28, right: 28),
              child: TextField(
                controller: _expiration,
                onTap: _selectDateExp,
                decoration: InputDecoration(
                    label: Text("Date d'expiration"),
                    suffixIcon: Icon(Icons.date_range_outlined)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 188.0),
              child: TextLink(clef: "Créer un Profil"),
            ),
            Padding(
              padding: const EdgeInsets.only(top:29.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(146, 188, 26, 1)),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return SuccesAlertDialog();
                        });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left:40.0,right: 40,top: 15,
                    bottom: 15),
                    child: Text('Créer un Profil',style: TextStyle(color: Colors.white,fontSize: 20),),
                  ),),
            )
          ],
        ),
      ),
    );
  }
}







