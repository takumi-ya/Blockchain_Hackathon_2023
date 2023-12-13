import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:voting_app/screen.dart';

final routemaster = RoutemasterDelegate(routesBuilder: (context) => routes);

final routes = RouteMap(
  routes: {
    '/': (route) => MaterialPage(
          child: Screen(),
        )
  },
);
