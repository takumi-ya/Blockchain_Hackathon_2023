import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:voting_app/const/const_color.dart';

// 一旦デモの画面、後で消す
class Screen extends HookConsumerWidget {
  Screen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '投票App',
          style: TextStyle(
            color: white,
          ),
        ),
        backgroundColor: black,
      ),
      body: const Center(
        child: Text('メインの画面'),
      ),
    );
  }
}
