import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/bloc_bloc.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => AppBloc(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: num1Controller,
                decoration: InputDecoration(hintText: "num1"),
              ),
              TextField(
                controller: num2Controller,
                decoration: InputDecoration(hintText: "num2"),
              ),
              BlocBuilder<AppBloc, AppState>(
                builder: (context, state) {
                  if (state is Calculated) {
                    return Text("Sum is: ${state.sum}");
                  }
                  return const Text("Sum is: 0");
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    context.read<AppBloc>().add(CalculateEvent(
                        int.parse(num1Controller.text),
                        int.parse(num2Controller.text)));
                  },
                  child: const Text("Calculate")),
            ],
          ),
        ),
      ),
    );
  }
}