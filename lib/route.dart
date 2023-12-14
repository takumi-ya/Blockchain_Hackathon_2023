import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:voting_app/src/voting/voting_screen.dart';

final routemaster = RoutemasterDelegate(routesBuilder: (context) => routes);

final routes = RouteMap(
  routes: {
    '/': (route) => const MaterialPage(
          child: VotingScreen(),
        )
  },
);
