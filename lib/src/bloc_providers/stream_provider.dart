import 'package:bloc_services/src/bloc_mixins/bloc_mixins.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc_services/src/core/core.dart';

class StreamProvider<T extends BlocBase<Object?>> extends BlocProvider<T> {
  final CreateBloc<T> create;

  ///* set lazy to `true` if you want the bloc to be created lazily
  ///default behavior fires all the streams when the bloc is created
  StreamProvider({
    required this.create,
    Widget? child,
    bool lazy = false,
  }) : super(
            create: (context) {
              final bloc = create.call(context);
              if (bloc is MultipleStreamMixin) {
                bloc.initialise();
                return bloc;
              }
              return bloc;
            },
            child: child,
            lazy: lazy);
}
