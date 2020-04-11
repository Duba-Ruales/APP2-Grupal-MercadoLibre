import 'package:flutter/material.dart';

class Gps extends StatelessWidget{
  @override
  Widget build(BuildContext context,) {
    return Container(
      child: _accion(),
    );
  }

    Widget _accion(){
    return Container(
      child: Row(
        
        children: <Widget>[
         _crearUbi(Icons.location_on ),
         Text(" Enviar a Usuario Apellido - Cra 16 #2-8 Mocoa Put..>",
            style: TextStyle(color: Colors.grey[600],fontSize: 15, ),),
      ],),
    );
  }
  Widget _crearUbi(IconData icon,){
    
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 2),
        child: Column(
          
          
          children: <Widget>[
            Icon(icon,color: Colors.grey[600],size: 15 ),
          ],
        ),
      );
  }
}
