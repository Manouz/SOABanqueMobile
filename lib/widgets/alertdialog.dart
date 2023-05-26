import 'package:flutter/material.dart';

class SuccesAlertDialog extends StatelessWidget {
  const SuccesAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
     
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1)),
                child: Stack(
                  // overfl:OverflowBar.
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      height: 400,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 70, 10, 10),
                        child: Column(
                          children: [
                            Text("Succès",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 80) ,),
                            SizedBox(
                              height: 5,
                            ),
                            Text("Vôtre compte est créer avec succès",style: TextStyle(fontSize: 15),),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:58.0),
                              child: ElevatedButton(
                               style: ElevatedButton.styleFrom(backgroundColor:Color.fromRGBO(146, 188, 26, 1) ),
                                  onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                  child: Container(
                                    width: double.infinity,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100)
                                    ),
                                    child: Center(child: Text("Valider",style: TextStyle(fontSize: 20,color: Colors.white),)))),
                            )
                         ],
                        ),
                      ),
                    )
                  ,Positioned(child: CircleAvatar(
                    
                    backgroundColor: Colors.white,
                    radius: 40,
                    child: CircleAvatar(
                      backgroundColor: Color.fromRGBO(146, 188, 26, 1),
                      radius: 36,
                      child: Icon(Icons.check,size: 50,color: Colors.white,),
                    ),
                    
                  ),
                  top: 10,)
                  ],
                ),
              );
  }
}