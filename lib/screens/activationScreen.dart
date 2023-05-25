import 'package:flutter/material.dart';
import 'package:soabanque/screens/identite.dart';
import 'package:soabanque/widgets/boutton.dart';
//import 'package:country_picker/country_picker.dart';
import 'package:soabanque/widgets/textformfield.dart';
import 'package:soabanque/widgets/textlink.dart';

class ActivationScreen extends StatefulWidget {
  const ActivationScreen({super.key});

  @override
  State<ActivationScreen> createState() => _ActivationScreenState();
}

class _ActivationScreenState extends State<ActivationScreen> {
  late TextEditingController _controller;

  String? monchoix = "Masculin";

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();

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
        backgroundColor: Color.fromRGBO(146, 188, 26, 1),
      ),
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  Text(
                    "Renseignements Personnels",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
           const Row(
              children: [
                 Text(
                    "Veuillez remplir soigneusement tous les champs de renseignement indiqués ci-dessous",
                    style: TextStyle(fontSize: 13)),
              ],
            ),
            const Textformfield(
              Label: 'Prénoms',
            ),
            const Textformfield(Label: 'Nom'),
            DateText(
              Label: 'Date de naissance (aaaa/mm/jj)',
              icn: Icon(Icons.date_range_outlined),
            ),
            const Textformfield(Label: "Entrez votre addresse Email"),
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
            Text("$monchoix"),
            const Padding(
              padding: EdgeInsets.only(top: 48.0),
              child: TextLink(clef: "Continuer"),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40),
              child: Button(link: Identity()),
            )
            /*  Padding(
              padding: const EdgeInsets.only(left:38.0,right: 38),
              child: ElevatedButton(
                  onPressed: () {},
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100)
                    ),
                    child: Text("Connexion"))),
            ) */
          ],
        ),
      ),
    );
  }
}
