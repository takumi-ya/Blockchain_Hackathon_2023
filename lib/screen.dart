import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// 一旦デモの画面、後で消す
class Screen extends HookConsumerWidget {
  Screen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: Center(child: Text('メインの画面')),
    );
  }
}
