import 'package:flutter/material.dart';

class SetIconsUtil{
  SetIconsUtil();//DSi se quiere tener informacion diferente para presentar
  //se debe de cambiar el JSON 
  final _icons = <String, IconData>{
    'add_alert' : Icons.add_alert,
    'Imput' : Icons.input,
    'camera' : Icons.camera_alt_outlined,
    'data' : Icons.data_exploration_outlined,
  };
  Icon getIcon(String iconName){
    return Icon(
      _icons[iconName],
      color: Color.fromARGB(255, 255, 59, 199),
    );
  }
}