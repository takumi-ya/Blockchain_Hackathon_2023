import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:voting_app/model/vote_model.dart';
import 'package:voting_app/src/voting/mobile_voting_screen.dart';
import 'package:voting_app/widget/responsive_layout.dart';

// 一旦デモデータで作る
class VotingScreen extends HookConsumerWidget {
  const VotingScreen({super.key, required this.vote});

  final VoteModel vote;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileScreen: MobileVotingScreen(
          vote: vote,
        ),
      ),
    );
  }
}
