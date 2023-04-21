import 'dart:convert';
import 'package:http/http.dart' as http;

final String commitsUrl = 'https://api.github.com/repos/{owner}/{repo}/commits';
final String owner = 'jaehee21232';
final String repo = 'TestApp';
final String token =
    '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'; // 인증 정보 (Optional)

Future<List<dynamic>> getCommits(List<String> reponame) async {
  var datas;
  int count = reponame.length;
  print(count);
  for (var i = 0; i < count;) {
    final response = await http.get(
      Uri.parse(
          "https://api.github.com/repos/$owner/${reponame[i].toString()}/commits?per_page=100"),
      headers: {
        if (token != null) 'Authorization': 'Bearer $token', // 인증 헤더 (Optional)
        'Accept': 'application/vnd.github.v3+json', // API 버전
      },
    );
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      print(data.runtimeType);
      print(data[0]["commit"]["message"]);
      return data;
      //여기서 클래스 만들어서 반환해주면 해결될듯한 문제
    } else {
      throw Exception('Failed to load commits');
    }
  }
  return datas;
}

final String reposUrl = 'https://api.github.com/users/jaehee21232/repos';

Future<List<dynamic>> getRepositories() async {
  final response = await http.get(
    Uri.parse(reposUrl),
    headers: {
      if (token != null) 'Authorization': 'Bearer $token', // 인증 헤더 (Optional)
      'Accept': 'application/vnd.github.v3+json', // API 버전
    },
  );

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    return data;
  } else {
    throw Exception('Failed to load repositories');
  }
}
