// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:async';
import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:bloc/bloc.dart';
import 'package:get_stream/app/app.dart';
import 'package:get_stream/app/app_bloc_observer.dart';
import 'package:stream_feed/stream_feed.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  runZonedGuarded(
    () {
      final feedClient = StreamFeedClient.connect(
        AppConfig.key,
        secret: AppConfig.secret,
      );

      runApp(App(feedClient: feedClient));
    },
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
