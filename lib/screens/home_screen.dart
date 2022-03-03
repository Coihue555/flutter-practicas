import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

const fontSize30 = TextStyle(fontSize: 50);
int counter = 10;

    return  Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        elevation: 10.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             const Text('Contador de taps:', style: fontSize30 ),
             Text('$counter', style: fontSize30),
            ],
          ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerTop ,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){
          counter++;
          print('Hola FAB! $counter' );
          
        }),
    );
   
    
  }
  
}