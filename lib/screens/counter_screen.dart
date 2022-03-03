import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  const CounterScreen({Key? key}) : super(key: key);

  
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 10;
  @override
  Widget build(BuildContext context) {

const fontSize30 = TextStyle(fontSize: 50);


    return  Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked ,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.exposure_plus_1_outlined),
            onPressed: (){
              counter++;
              setState(() {
                
              });
              
            }),

            const SizedBox(width: 20),

            FloatingActionButton(
            child: const Icon(Icons.restart_alt_outlined),
            onPressed: (){
              counter=0;
              setState(() {
                
              });
              
            }),

            const SizedBox(width: 20),

            FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1_outlined),
            onPressed: (){
              counter--;
              setState(() {
                
              });
              
            }),
        ],
      ),
    );
   
    
  }
}