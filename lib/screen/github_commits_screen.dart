import 'package:flutter/material.dart';
import 'package:riverpod_test/screen/github_api.dart';

class GithubApiScreen extends StatelessWidget {
  const GithubApiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getCommits(["code-fac-clone"]),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.separated(
              itemBuilder: (context, index) {
                final item = snapshot.data![index];
                return Text(item["commit"].toString());
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 16.0,
                );
              },
              itemCount: snapshot.data!.length);
        },
      ),
    );
  }
}
