import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/layout/default_layout.dart';
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
              builder: (context) => GithubApiScreen(),
            ));
          },
          child: Text("github_commits"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
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
      ]),
    );
  }
}
