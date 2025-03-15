import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerproject/provider_container/counter_provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Course"),
        centerTitle: true,
        backgroundColor: Colors.cyanAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Count is ${context.watch<CounterProvider>().count}",style: TextStyle(fontWeight: FontWeight.bold),),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(onPressed: (){
                context.read<CounterProvider>().incrementCounter();
              },child: Icon(Icons.add),),
              FloatingActionButton(onPressed: (){
                context.read<CounterProvider>().decrementCounter();
              },child: Icon(Icons.remove),),
            ],
          )
        ],
      ),
    );
  }
}
