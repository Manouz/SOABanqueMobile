/* import 'package:flutter/material.dart';
import 'package:soabanque/screens/valide.dart';
import 'package:soabanque/widgets/boutton.dart';
import 'package:soabanque/widgets/textformfield.dart';

class Identity extends StatefulWidget {
  const Identity({super.key});

  @override
  State<Identity> createState() => _IdentityState();
}

class _IdentityState extends State<Identity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(child: Column(children: [
         Text("data"),
         Text("data"),
         Textformfield(Label: "Label"),
        Row(children: [
          Textformfield(Label: "Label"),
          Textformfield(Label: "Label"),
        ]),
        Button(link: Validation())
      ],),),
    );
  }
} */
import 'package:flutter/material.dart';
import 'package:soabanque/screens/identite.dart';
import 'package:soabanque/widgets/boutton.dart';
//import 'package:country_picker/country_picker.dart';
import 'package:soabanque/widgets/textformfield.dart';
import 'package:soabanque/widgets/textlink.dart';

class Identity extends StatefulWidget {
  const Identity({super.key});

  @override
  State<Identity> createState() => _IdentityState();
}

class _IdentityState extends State<Identity> {
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
        backgroundColor: Color.fromARGB(255, 115, 255, 0),
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
              Label: "Carte Nationale d'Identité",
            ),
           
            //DateTexts(Label: "sqfqsdgfeqdge"),
            
            
            
            
            
          ],
        ),
      ),
    );
  }
}
