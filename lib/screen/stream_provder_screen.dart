import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/layout/default_layout.dart';
import 'package:riverpod_test/riverpod/stream_provder.dart';

class StreamProviderScreen extends ConsumerWidget {
  const StreamProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(multipleStramProvider);
    return DefaultLayout(
        title: "StreamProviderScreen",
        body: Center(
          child: state.when(
            data: (data) => Text(data.toString()),
            error: (error, stackTrace) => Text(error.toString()),
            loading: () => CircularProgressIndicator(),
          ),
        ));
  }
}
