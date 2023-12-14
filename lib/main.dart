import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:routemaster/routemaster.dart';
import 'package:voting_app/const/const_color.dart';
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
