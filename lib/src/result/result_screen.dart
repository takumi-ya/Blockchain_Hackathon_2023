import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:voting_app/model/vote_model.dart';
import 'package:voting_app/src/result/mobile_result_screen.dart';
import 'package:voting_app/widget/responsive_layout.dart';

class ResultScreen extends HookConsumerWidget {
  const ResultScreen({super.key, required this.vote});

  final VoteModel vote;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileScreen: MobileResultScreen(
          vote: vote,
        ),
      ),
    );
  }
}
