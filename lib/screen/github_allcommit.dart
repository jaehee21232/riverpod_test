import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:riverpod_test/screen/github_api.dart';

class GithubAllCommitScreen extends StatelessWidget {
  const GithubAllCommitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: getRepositories(),
          builder: (context, reponame) {
            if (!reponame.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            List<String> item = [];
            for (var i = 0; i < reponame.data!.length; i++) {
              item.add(reponame.data![i]["name"].toString());
            }
            print(item);
            return FutureBuilder(
              future: getCommits(["code-fac-clone", "TestApp"]),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return ListView.separated(
                    itemBuilder: (context, index) {
                      final item = snapshot.data![index];
                      return Text(item["commit"]["message"].toString());
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 16.0,
                      );
                    },
                    itemCount: snapshot.data!.length);
              },
            );
          }),
    );
  }
}
