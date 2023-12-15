import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:voting_app/src/result/mobile_result_screen.dart';
import 'package:voting_app/widget/responsive_layout.dart';

class ResultScreen extends HookConsumerWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: ResponsiveLayout(
        mobileScreen: MobileResultScreen(
          topic: 'きのこの山と\nたけのこの里\nどっちが好き？',
          choice1: 'きのこの山',
          numOfChoice1: 35,
          choice2: 'たけのこの里',
          numOfChoice2: 65,
        ),
      ),
    );
  }
}
