import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/layout/default_layout.dart';
import 'package:riverpod_test/screen/auto_dispose_screen.dart';
import 'package:riverpod_test/screen/family_modiger_screen.dart';
import 'package:riverpod_test/screen/future_provider_screen.dart';
import 'package:riverpod_test/screen/github_allcommit.dart';
import 'package:riverpod_test/screen/github_commits_screen.dart';
import 'package:riverpod_test/screen/github_api.dart';
import 'package:riverpod_test/screen/github_repos.screen.dart';
import 'package:riverpod_test/screen/state_notifier_provider_screen.dart';
import 'package:riverpod_test/screen/state_provider_screen.dart';
import 'package:riverpod_test/screen/stream_provder_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: "HomeScreen",
      body: ListView(children: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => StateProviderScreen(),
            ));
          },
          child: Text("StateProviderScreen"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => StateNotifierProviderScreen(),
            ));
          },
          child: Text("StateNotifierProviderScreen"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => FutureProviderScreen(),
            ));
          },
          child: Text("FutureProviderScreen"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => StreamProviderScreen(),
            ));
          },
          child: Text("StreamProviderScreen"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
<<<<<<< HEAD
              builder: (context) => GithubApiScreen(),
            ));
          },
          child: Text("github_commits"),
=======
              builder: (context) => FamilyModifierScreen(),
            ));
          },
          child: Text("FamilyModifierScreen"),
>>>>>>> cb8f7f95ae3c84a2084123184286c03b692e1145
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
<<<<<<< HEAD
              builder: (context) => GithubReposScreen(),
            ));
          },
          child: Text("github_repos"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => GithubAllCommitScreen(),
            ));
          },
          child: Text("all_commit"),
        ),
=======
              builder: (context) => AutoDisposeModifierScreen(),
            ));
          },
          child: Text("AutoDisposeModifierScreen"),
        )
>>>>>>> cb8f7f95ae3c84a2084123184286c03b692e1145
      ]),
    );
  }
}
