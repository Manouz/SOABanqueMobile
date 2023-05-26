import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key, required this.color, required this.size, required this.title,
  });
  final Color color;
  final double size;
  final String title;


  @override
  Widget build(BuildContext context) {
    return Text(
      title,
     style: TextStyle(
      fontSize: size, 
      color: color),
      );
  }
}


class operation extends StatelessWidget {
  const operation({
    super.key, required this.text, required this.image,
  });
  final String text;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 8,
        child: InkWell(
          onTap: (){},
          child: Container(
           width: 150,
           height: 130,
           decoration: BoxDecoration(
            color: const Color.fromARGB(255, 193, 192, 192),
            borderRadius: BorderRadius.circular(10)
                    
           ),
            child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: image,
                  ),
                 
              ),
             TextWidget(
                title: text, 
                color: Colors.black, 
                size: 16,)
            ],  
           ),
           ),
           
        ),
      ),
    );
  }
}

class history extends StatelessWidget {
  const history({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 8,
        child: Container(
             width: 363,
             height: 60,
             decoration: const BoxDecoration(
              color: Color.fromARGB(255, 223, 218, 218),
             ),
             child: const ListTile(
              title: Text('Tejada Kane M', style: TextStyle(fontSize: 18),),
              trailing: Text('-70000fr', style: TextStyle(fontSize: 16),),
              subtitle: Text("DD/MM/AA", style: TextStyle(fontSize: 12),),
            
             ),
            ),
      ),
    );
  }
}