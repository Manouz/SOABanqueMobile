import 'package:flutter/material.dart';

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
      ),
      endDrawer: Drawer(
         width: 214,
         child: ListView(
          children: [
            DrawerHeader(
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
                leading: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage('assets/Icons/operation.png'),
                ),
                title: TextButton(onPressed: (){},child: Text('Opérations', style: TextStyle(fontSize: 15, color: Colors.black),) ),
                
              ),
              Divider(),
               ListTile(
                leading: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage('assets/Icons/retrait.png'),
                ),
                title: TextButton(onPressed: (){},child: Text("retrait d'argent", style: TextStyle(fontSize: 15, color: Colors.black),)),
                
              ),
              Divider(),
               ListTile(
                leading: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage('assets/Icons/paiement.png'),
                ),
                title: TextButton(onPressed: (){},child: Text('Autres paiements', style: TextStyle(fontSize: 15, color: Colors.black),) ),
              ),
              Divider(),

          ],
         ),
        //  child: ListView(
        //   children: [
        //    Container(
        //     width: 214,
        //     height: 143,
        //     decoration: BoxDecoration(
        //        color: Colors.blue,
        //        borderRadius: BorderRadius.only(
        //          bottomLeft: Radius.circular(30),
        //          bottomRight: Radius.circular(30)
        //        ),
        //     ),
        //    )
        //   ],
        //  ),


      ),
      body: Container(
        width: 500,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.blue,
         borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30)
         )

        ),
      ),
    );
  }
}