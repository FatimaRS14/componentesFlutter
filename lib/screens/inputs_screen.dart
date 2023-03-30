import 'package:flutter/material.dart';

class InputsSreen extends StatefulWidget {
  const InputsSreen ({super.key});

  @override
  State<InputsSreen> createState() => _InputsSreenState();
}

class _InputsSreenState extends State<InputsSreen> {
  //Variables que guardarán lo que usuario esccriba en los TextFiles
  String userName = '';
  String password = '';
  String email = '';
  String date = '';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Entradas de datos'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 20.0),
          children: [
            _entradaUserName(),
            const Divider(),
            _entradaPassword(),
            const Divider(),
          ],
        ),
      
    ); 
  }
  Widget _entradaUserName(){
    return TextField(
      autofocus: true, //un TextField por ventana puede tenerla
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
           ),
           labelText: 'User name:',
           hintText: 'Escribe aquí tu nombre de usuario',
           //icon: const Icon(Icons.person),
           prefixIcon: const Icon(Icons.person),
           suffixIcon: const Icon(Icons.edit),
           suffixIconColor: Colors.purpleAccent,

         //  helperText: 'Escribe tu nombre de usuario con minúsculas',

      ),
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Colors.amber,
        fontWeight: FontWeight.bold,
      ),
      //Cambiar el color del cursor
      //Ocupar la caja de texto para pequeñas cosas
      cursorColor: Color.fromARGB(255, 118, 23, 120),
      cursorRadius: const Radius.circular(16.0),
      cursorWidth: 10.0,
      //maxLines: 3, El TextField crece a 3 lineas del scroll
      onChanged: (value){
        userName = value;
        print(userName);
      },//Para cambair el valor
     // onSubmitted: , 
     // onEditingComplete: , este funciona con el enter


    );
  }

 Widget _entradaPassword(){
    return TextField(
     // autofocus: true, //un TextField por ventana puede tenerla
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
           ),
           labelText: 'Password:',
           hintText: 'Escribe aquí tu contraseña',
           //icon: const Icon(Icons.person),
           prefixIcon: const Icon(Icons.key),
           suffixIcon: const Icon(Icons.edit_attributes),
           suffixIconColor: Colors.purpleAccent,
           //counter: Text('Caracteres: ${password.length}')

         //  helperText: 'Escribe tu nombre de usuario con minúsculas',

      ),
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Colors.amber,
        fontWeight: FontWeight.bold,
      ),
      //Cambiar el color del cursor
      //Ocupar la caja de texto para pequeñas cosas
      cursorColor: Color.fromARGB(255, 118, 23, 120),
      cursorRadius: const Radius.circular(16.0),
      cursorWidth: 10.0,
      //maxLines: 3, El TextField crece a 3 lineas del scroll
      obscureText: true,
        maxLength: 8,
        keyboardType: TextInputType.number,


      onChanged: (value){
        password = value;
        print(password);
      },//Para cambair el valor
     // onSubmitted: , 
     // onEditingComplete: , este funciona con el enter


    );
  }
  
}