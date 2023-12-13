import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:routemaster/routemaster.dart';
import 'package:voting_app/const_color.dart';
import 'package:voting_app/route.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: black,
          textTheme: const TextTheme(
            labelMedium: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22.0,
            ),
          )),
      home: Stack(
        children: [
          MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Voting App with BlockChain',
            theme: ThemeData(
              primaryColor: black,
              textTheme: const TextTheme(
                labelMedium: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                ),
              ),
            ),
            routerDelegate: routemaster,
            routeInformationParser: const RoutemasterParser(),
          ),
          // ignore: prefer_const_constructors
          Offstage(
              // TODO: ローディングを作る
              child: const Scaffold(
            backgroundColor: baseColor,
            body: SafeArea(
              child: Text(
                'hoge',
              ),
            ),
          ))
        ],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
