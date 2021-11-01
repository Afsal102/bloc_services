import 'package:example/features/stream_bloc_example/bloc/stream_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StreamBlocPage extends StatelessWidget {
  const StreamBlocPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StreamBloc(),
      child: Scaffold(
        body: Align(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<StreamBloc, StreamState>(
                builder: (context, state) {
                  return Text('Periodic Value ${state.value}');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
