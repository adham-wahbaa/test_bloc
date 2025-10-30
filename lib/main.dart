import 'package:flutter/material.dart' ;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/bloc_bloc.dart';

void main() {
  runApp(
      BlocProvider(create:
      (context) => AppBloc(),
      child:
      BlocBuilder <AppBloc, AppState>
        (
        builder: (context, state) {
        return const MyApp();
      },)
      ),
  );

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Demo Home Page')),
        body: Center(
          child: Column(
            children: [
              const TextField( decoration: InputDecoration(hintText: "num1"),),
              const TextField(decoration: InputDecoration(hintText: "num2"),),
              const Text("sum 0"),
              ElevatedButton(onPressed: () {}, child: const Text("Calculate")),
            ],
          ),
        ),
      ),
    );
  }
}
