import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:voting_app/demo_data/demo_data.dart';
import 'package:voting_app/src/result/result_screen.dart';
import 'package:voting_app/src/voting/voting_screen.dart';
import 'package:voting_app/top_screen.dart';

final routemaster = RoutemasterDelegate(routesBuilder: (context) => routes);

final routes = RouteMap(
  routes: {
    '/': (route) => const MaterialPage(
          child: TopScreen(),
        ),
    '/vote/:id': (route) {
      final id = route.pathParameters['id']!;
      final vote = votes.firstWhere((vote) => vote.id == id);
      return MaterialPage(
        child: VotingScreen(
          vote: vote,
        ),
      );
    },
    '/vote/:id/result/:id': (route) {
      final id = route.pathParameters['id']!;
      final vote = votes.firstWhere((vote) => vote.id == id);
      return MaterialPage(
        child: ResultScreen(
          vote: vote,
        ),
      );
    },
  },
);
