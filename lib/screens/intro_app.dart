import 'package:flutter/material.dart';

import '../widgets/bouttonVert.dart';

class IntroPage extends StatefulWidget {
  IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    Color couleurunique = const Color.fromARGB(255, 101, 198, 16);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 60.0,
                    left: 40,
                  ),
                  child: Container(
                    height: 60,
                    width: 170,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(30)),
                    child: ListTile(
                      title: const Text(
                        "Retour",
                        style: TextStyle(fontSize: 20),
                      ),
                      leading: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            size: 30,
                            color: Color.fromARGB(255, 101, 198, 16),
                          )),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: size.height / 3,
              width: size.width / 1.5,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/photo_2023-05-17_12-57-24.jpg"),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: size.width / 1.2,
              child: const Text(
                "SOABanque mobile, l’appli qui facilite vos transactions dans le monde entier. \n Avez un compte avec nous?",
                style: TextStyle(fontSize: 15),
              ),
            ),
            const Spacer(),
            BouttonVert(
              couleurunique: couleurunique,
              laPage: IntroPage(),
              leText: 'Oui, j\' un compte SOABanque',
              laHauteur: MediaQuery.of(context).size.height / 16,
              laLargeur: MediaQuery.of(context).size.height,
              leraduis: 10,
              laCouleurDesBordure: couleurunique,
              laCouleurduText: Colors.white,
            ),
            BouttonVert(
              couleurunique: Colors.white,
              laPage: IntroPage(),
              leText: 'Non, je suis nouveau à SOABanque',
              laHauteur: MediaQuery.of(context).size.height / 16,
              laLargeur: MediaQuery.of(context).size.height,
              leraduis: 10,
              laCouleurDesBordure: Colors.black45,
              laCouleurduText: const Color.fromARGB(255, 8, 121, 213),
            ),
            const SizedBox(
              height: 8,
            )
          ],
        ),
      ),
    );
  }
}
