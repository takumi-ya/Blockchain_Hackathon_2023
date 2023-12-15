import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:routemaster/routemaster.dart';
import 'package:voting_app/const/const_color.dart';
import 'package:voting_app/demo_data/demo_data.dart';
import 'package:voting_app/model/vote_model.dart';

// トップの画面。投票画面に遷移する
class TopScreen extends HookConsumerWidget {
  const TopScreen({super.key});

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
      backgroundColor: baseColor,
      body: ListView.builder(
        itemCount: votes.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(votes[index].topic,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              onTap: () {
                Routemaster.of(context).push('/vote/${votes[index].id}');
              },
            ),
          );
        },
      ),
    );
  }
}
