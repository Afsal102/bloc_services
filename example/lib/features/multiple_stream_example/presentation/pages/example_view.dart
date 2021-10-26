import 'package:bloc_services/bloc_services.dart';
import 'package:example/features/multiple_stream_example/presentation/bloc/multiple_stream_example_dart_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExampleView extends StatelessWidget {
  const ExampleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamProvider(
        create: (context) => MultipleStreamExampleDartBloc(),
        child: BlocBuilder<MultipleStreamExampleDartBloc, MultipleStreamExampleState>(
          builder: (context, state) {
            return state.when(
              intial: () {
                return const Center(
                  child: Text('Initial'),
                );
              },
              milliUpdated: (value) {
                return Center(
                  child: Text('$value'),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
