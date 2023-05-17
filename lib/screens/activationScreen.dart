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
      body: Column(
        children: [
          Text("Renseignements Personnels "),
          Text("Veuillez fournir les renseignements personnels ci-dessous"),
          Textformfield("Prénoms"),
          Textformfield("Nom"),
          Textformfield("Entrez votre adresse Email"),
          Text("Veuillez sélectionner le sexe "),
          TextLink(clef: 'Continuer')
        ],
      ),
    );
  }
}
