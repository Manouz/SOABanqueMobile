import 'package:flutter/material.dart';


import '../widgets/bouttonVert.dart';
import 'intro_app.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /* late VideoPlayerController _controller; */
  Color couleurunique = Color.fromARGB(255, 101, 198, 16);

  /* @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
        'assets/images/IMG_20230516_145753_202.mp4');

    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);
    _controller.initialize().then((_) => setState(() {}));
    _controller.play();
  }
 */
  /* @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  } */

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(image:  AssetImage("assets/Icons/IMG_20230515_152247_126.jpg"), fit: BoxFit.cover)),
        child: Column(
          children: [
            const Spacer(),
            const Text(
              "Bienvenue à SOABanque mobile",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Simple et securisé avec un accès rapide et à vos comptes.",
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            BouttonVert(
              couleurunique: couleurunique,
              laPage: IntroPage(),
              leText: 'COMMENCER',
              laHauteur: MediaQuery.of(context).size.height / 16,
              laLargeur: MediaQuery.of(context).size.height,
              leraduis: 10,
              laCouleurduText: Colors.white,
              laCouleurDesBordure: couleurunique,
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
