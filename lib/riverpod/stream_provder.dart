import 'package:flutter_riverpod/flutter_riverpod.dart';

final multipleStramProvider = StreamProvider<List<int>>((ref) async* {
  for (var i = 0; i < 10; i++) {
    await Future.delayed(Duration(seconds: 1));

    yield List.generate(3, (index) => index * i);
  }
});
