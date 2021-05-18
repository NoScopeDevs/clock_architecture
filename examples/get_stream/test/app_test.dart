// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter_test/flutter_test.dart';
import 'package:get_stream/app/app.dart';
import 'package:get_stream/app/app_config.dart';
import 'package:get_stream/counter/counter.dart';
import 'package:stream_feed/stream_feed.dart';

void main() {
  group('App', () {
    final tFeedClient = StreamFeedClient.connect(
      AppConfig.key,
      secret: AppConfig.secret,
    );

    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(App(feedClient: tFeedClient));
      expect(find.byType(CounterPage), findsOneWidget);
    });
  });
}
