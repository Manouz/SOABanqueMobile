import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soabanque/data/auth.dart';
import 'package:soabanque/screens/acceuil.dart';

class Connexion extends StatefulWidget {
  const Connexion({super.key});

  @override
  State<Connexion> createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {
   bool _Obsure = true;
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  bool _isLoading = false;

  void _submit(context) async {
    try {
      setState(() => _isLoading = true);
      final auth = Provider.of<AuthBase>(context, listen: false);
      await auth.signInWithEmailAndPassword(
          emailCtrl.text, passwordCtrl.text);
      Navigator.push(context,MaterialPageRoute(builder: (context) => AccueilPage()));
    } on FirebaseAuthException catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/Icons/logoSOA.png', fit: BoxFit.cover,),
            
            const Text('CONNEXION', style: TextStyle(fontSize: 30),),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: 400,
                child: TextFormField(
                  controller: emailCtrl,
                  decoration: InputDecoration(
                    
                    hintText: 'Entrer votre Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                  ),
                ),
              ),
            ),
              Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: 400,
                child: TextFormField(
                  controller: passwordCtrl,
                  obscureText: !_Obsure,
                  decoration: InputDecoration(
                    hintText: 'Mot de passe ',
                      suffixIcon: IconButton(
                      icon: Icon(
                          _Obsure? Icons.visibility: Icons.visibility_off 
                        ),
                        onPressed: (){
                          setState(() {
                            _Obsure = !_Obsure;
                          });
                        }, 
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: (){}, 
              child: Text(
                'Mot de passe oublié?', 
                 style: TextStyle(color: Colors.blue, fontSize: 15, fontStyle: FontStyle.italic),
              )
              ),
            
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Container(
                width: 229,
                height: 52.91,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 101, 198, 16),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Center(
                  child: TextButton(
                    onPressed: (){
                     _submit(context);
                    },
                    child: Text(
                      'CONNEXION',
                      style: TextStyle(fontSize: 15, color: Colors.white),

                    )
                   
                  ), 
                 
                ),
              )
              //  TextButton(
              //   style: TextButton.styleFrom(
              //     backgroundColor: Color.fromARGB(255, 101, 198, 16),
              //     minimumSize:Size(250, 50),

                
              //   ),
              //   onPressed: (){}, 
              //   child: Text(
              //     'CONNEXION',
              //     style: TextStyle(fontSize: 15, color: Colors.white),
              //   )
              //   ),
              )
          ],
      
        ),
      )
      ,);
  }
}