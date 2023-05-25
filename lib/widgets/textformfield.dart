import 'package:flutter/material.dart';

class Textformfield extends StatelessWidget {
  final String Label;
  final Icon? icn;
  const Textformfield({required this.Label, this.icn});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0, left: 20),
      child: TextField(
        decoration: InputDecoration(label: Text(Label), suffixIcon: icn),
      ),
    );
  }
}





class DateText extends StatefulWidget {
  final String Label;
  final Icon? icn;
  const DateText({required this.Label, this.icn});

  @override
  State<DateText> createState() => _DateTextState();
}

class _DateTextState extends State<DateText> {
  TextEditingController _datesCtrl = TextEditingController();
  void _selectDate() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1690),
            lastDate: DateTime.now())
        .then((picked) {
      if (picked == null) {
        return;
      }
      setState(() {
        _datesCtrl.text = picked.toString(); 
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _datesCtrl = TextEditingController();
  }

  @override
  void dispose() {
    _datesCtrl.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  
     
    Padding(
      padding: const EdgeInsets.only(left:38.0,right: 38),
      child: TextField(
          controller: _datesCtrl,
          onTap: _selectDate,
          decoration:
              InputDecoration(label: Text(widget.Label), suffixIcon: widget.icn),
        ),
    )
    ;
      
    
  }
}



