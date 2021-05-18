import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed_event.dart';
part 'feed_state.dart';
part 'feed_bloc.freezed.dart';

class FeedBloc extends Bloc<FeedEvent, FeedState> {
  FeedBloc() : super(_Initial());

  @override
  Stream<FeedState> mapEventToState(
    FeedEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
