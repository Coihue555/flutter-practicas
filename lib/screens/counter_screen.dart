import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  const CounterScreen({Key? key}) : super(key: key);

  
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 10;

void increase(){
  counter++;
  setState(() {
    
  });
}

void decrease(){
  counter--;
  setState(() {
    
  });
}

void zero(){
  counter=0;
  setState(() {
    
  });
}


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
      floatingActionButton: CustomFloatingActions(increaseFn: increase, decreaseFn: decrease, zeroFn: zero,),
    );
   
    
  }
}

class CustomFloatingActions extends StatelessWidget {

final Function increaseFn;
final Function decreaseFn;
final Function zeroFn;

  const CustomFloatingActions({
    Key? key, 
    required this.increaseFn,
    required this.decreaseFn,
    required this.zeroFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.exposure_plus_1_outlined),
          onPressed: () => increaseFn(),
         ),


          FloatingActionButton(
          child: const Icon(Icons.restart_alt_outlined),
          onPressed: () => zeroFn(),
          ),


          FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_outlined),
          onPressed: () => decreaseFn(),
          ),
      ],
    );
  }
}