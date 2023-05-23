import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';
import 'package:soabanque/widgets/textlink.dart';
import 'package:soabanque/widgets/textformfield.dart';

class ActivationScreen extends StatefulWidget {
  const ActivationScreen({super.key});

  @override
  State<ActivationScreen> createState() => _ActivationScreenState();
}

class _ActivationScreenState extends State<ActivationScreen> {
  late TextEditingController _controller;
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
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text("Renseignements Personnels "),
            Text("Veuillez fournir les renseignements personnels ci-dessous"),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  label: Text("Prénoms")
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  label: Text("Nom")
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  label: Text("Entrez votre addresse Email")
                ),
              ),
            ),
            Text("Veuillez sélectionner le sexe "),
            TextLink(clef: 'Continuer')
          ],
        ),
      ),
    );
  }
}