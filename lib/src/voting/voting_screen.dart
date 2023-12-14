import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:voting_app/const/const_color.dart';
import 'package:voting_app/src/voting/mobile_voting_screen.dart';
import 'package:voting_app/widget/responsive_layout.dart';

// テキストデータなどは後で考える。一旦デモデータ（直書き）で作る
class VotingScreen extends HookConsumerWidget {
  const VotingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: ResponsiveLayout(
        mobileScreen: MobileVotingScreen(),
      ),
    );
  }
}
