// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_stream/counter/counter.dart';
import 'package:get_stream/l10n/l10n.dart';
import 'package:stream_feed/stream_feed.dart';

export 'app_config.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
    required StreamFeedClient feedClient,
  })   : _feedClient = feedClient,
        super(key: key);

  final StreamFeedClient _feedClient;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        accentColor: const Color(0xFF13B9FF),
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
      ),
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      home: const CounterPage(),
    );
  }
}
