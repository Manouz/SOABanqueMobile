import 'package:flutter/material.dart';
import 'package:soabanque/screens/identite.dart';
import 'package:soabanque/widgets/boutton.dart';
import 'package:soabanque/widgets/entetePage.dart';
//import 'package:country_picker/country_picker.dart';
import 'package:soabanque/widgets/textformfield.dart';
import 'package:soabanque/widgets/textlink.dart';

class ActivationScreen extends StatefulWidget {
  const ActivationScreen({super.key});

  @override
  State<ActivationScreen> createState() => _ActivationScreenState();
}

class _ActivationScreenState extends State<ActivationScreen> {
  TextEditingController _controller = TextEditingController();
  TextEditingController _nom = TextEditingController();
  TextEditingController _date = TextEditingController();
  TextEditingController _prenoms = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _mdp = TextEditingController();

  String? monchoix = "Masculin";

void _selectDate() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1690),
            lastDate: DateTime.now())
        .then((picked) {
      if (picked == null) {
        return;
      }
      setState(() {
        _date.text = picked.toString();
      });
    });
  }



  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _nom = TextEditingController();
    _date = TextEditingController();
    _prenoms = TextEditingController();
    _email = TextEditingController();
    _mdp = TextEditingController();
    
  }

  @override
  void dispose() {
    _controller.dispose();
    _nom.dispose();
    _date.dispose();
    _prenoms.dispose();
    _email.dispose();
_mdp.dispose();
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
        backgroundColor: Color.fromRGBO(0, 146, 255, 1),
      ),
      body: Center(
        child: Column(
          children: [
           entetePage(h4: "Renseignements Personnels", h6: "Veuillez fournir les renseignements personnels ci-dessous",),
            Padding(
              padding: const EdgeInsets.only(left:28,right: 28),
              child: TextField(
                controller: _prenoms,
                decoration: InputDecoration(label: Text("Prénoms")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:28,right:28),
              child: TextField(
                controller: _nom,
                decoration: InputDecoration(label: Text("Nom")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:28,right: 28),
              child: TextField(
                controller: _date,
                onTap: _selectDate,
                decoration:
                    InputDecoration(label: Text("Date de naissance(JJ/MM/AA)"), suffixIcon: Icon(Icons.date_range_outlined)),
                  ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:28,right:28),
              child: TextField(
                controller: _email,
                decoration: InputDecoration(label: Text("Email")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:28,right:28),
              child: TextField(
                controller: _mdp,
                decoration: InputDecoration(label: Text("Mot de passe")),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 14.0, left: 14),
              child: Row(
                children: [
                  Text(
                    "Genre",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  const Text("Masculin"),
                  Radio(
                    activeColor: Color.fromRGBO(146, 188, 26, 1),
                    value: "Masculin",
                    groupValue: monchoix,
                    onChanged: (value) {
                      setState(() {
                        monchoix = value;
                      });
                    },
                    /*  title :Text("Masculin") */
                  ),
                  Text("Féminin"),
                  Radio(
                    activeColor: Color.fromRGBO(146, 188, 26, 1),
                    value: "Féminin",
                    groupValue: monchoix,
                    onChanged: (value) {
                      setState(() {
                        monchoix = value.toString();
                      });
                    },
                    /* title: Text("Féminin"), */
                  )
                ],
              ),
            ),
            //Text("$monchoix"),
            const Padding(
              padding: EdgeInsets.only(top: 48.0),
              child: TextLink(clef: "Continuer"),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40),
              child: Button(link: Identity(), txt: 'Continuer',),
            )
          
          ],
        ),
      ),
    );
  }
}
