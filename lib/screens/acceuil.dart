import 'package:flutter/material.dart';
import 'package:soabanque/widgets/mesWidget.dart';
// import 'package:flutter_credit_card/flutter_credit_card.dart';

class AccueilPage extends StatefulWidget {
  const AccueilPage({super.key});

  @override
  State<AccueilPage> createState() => _AccueilPageState();
}

class _AccueilPageState extends State<AccueilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.blue,
         automaticallyImplyLeading: false,
      ),
      endDrawer: Drawer(
         width: 214,
         child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
                 borderRadius: BorderRadius.only(
                 bottomLeft: Radius.circular(30),
                 bottomRight: Radius.circular(30)
               ),

              ),
              child: Column(
                children: [
                  Icon(Icons.account_circle_outlined, size: 40,),
                  Text('userEmail@gmail.com', style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: Colors.white),),
                  Text('User Name',
                   style: TextStyle(
                    fontSize: 20, 
                    fontWeight: FontWeight.bold, 
                    color: Colors.white),
                    ),
                ],
              )
              ),
              ListTile(
                leading: const CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage('assets/Icons/operation.png'),
                ),
                title: TextButton(
                  onPressed: (){},
                  child: const Text(
                    'Opérations', 
                    style: TextStyle(
                      fontSize: 15, 
                      color: Colors.black),) ),
                
              ),
              const Divider(),
               ListTile(
                leading: const CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage('assets/Icons/retrait.png'),
                ),
                title: TextButton(
                  onPressed: (){},
                  child: const Text(
                    "retrait d'argent", 
                    style: TextStyle(
                      fontSize: 15, 
                      color: Colors.black),)),
                
              ),
              const Divider(),
               ListTile(
                leading: const CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage('assets/Icons/paiement.png'),
                ),
                title: TextButton(
                  onPressed: (){}, 
                  child: const Text(
                    'Autres paiements', 
                  style: TextStyle(
                     fontSize: 15, 
                     color: Colors.black),) ),
              ),
              const Divider(),
               ListTile(
                leading: const CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage('assets/Icons/paiement.png'),
                ),
                title: TextButton(
                  onPressed: (){},
                  child: const Text(
                    'Conventions', 
                    style: TextStyle(
                      fontSize: 15, 
                      color: Colors.black),
                      ) ),
              ),
             
          ],
         ),


      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children:[
                 Container(
                width: 500,
                height: 150,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                 borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)
                 ),
                ),
                child: const Text(
                  'Bienvenue, M.Lorem', 
                  style: TextStyle(
                  fontSize: 30,
                ),),
              ),
              Container(
                width: 385,
                height: 206,
                margin: const EdgeInsets.only(left: 12, top: 80),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 3, 32, 83),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Padding(
                  padding:  EdgeInsets.only(right: 200, top: 7),
                  child: Column(
                    children: [
                      TextWidget(
                        title: 'CardNumber', color: Colors.white, size: 25,
                      ),
                      TextWidget(
                        title: 'XXXXXXXXXXX', color: Colors.white, size: 20,
                      ),
                      SizedBox(height: 45,),
                       TextWidget(
                        title: 'Total balance', color: Colors.white, size: 25,
                      ),
                      TextWidget(
                        title: 'XOF 1.700.000', color: Colors.white, size: 16,
                      ),
                    ],
                  ),
                ),
      
              ),
      
              ]
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Opérations', style: TextStyle(fontSize: 20),),
            ),
           Row(
            children: [
              operation(image: Image.asset("assets/Icons/retrait.png"), text: 'RETRAIT D\'ARGENT',),
              operation(image: Image.asset("assets/Icons/paiement.png"), text: 'AUTRE PAIEMENT',),
            ],
           ),
            TextWidget(title: 'HISTORIQUE DES TRANSACTIONS', color: Colors.black, size: 16,),
         
            history(),
            history(),
            history(),
            history(),
            
      
          ],
        ),
      ),
    );
  }
}





