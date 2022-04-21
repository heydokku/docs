* Use [debug](#debug) mode during development,
  when you want to use [hot reload][].
* Use [profile](#profile) mode when you want to analyze
  performance.
* Use [release](#release) mode when you are ready to release
  your app.

## Debug

In _debug mode_, the app is set up for debugging on the physical
device, emulator, or simulator.

Debug mode for mobile apps mean that:

* [Assertions][] are enabled.
* Service extensions are enabled.
* Compilation is optimized for fast development and run cycles
  (but not for execution speed, binary size, or deployment).
* Debugging is enabled, and tools supporting source level debugging
  (such as [DevTools][]) can connect to the process.

Debug mode for a web app means that:

* The build is _not_ minified and tree shaking has _not_ been
  performed.
* The app is compiled with the [dartdevc][] compiler for
  easier debugging.

## Release

Use _release mode_ for deploying the app
The command `flutter run --release` compiles to release mode.

## Profile

In _profile mode_, some debugging ability is maintained&mdash;enough
to profile your app's performance. Profile mode is disabled on
the emulator and simulator, because their behavior is not representative
of real performance. On mobile, profile mode is similar to release mode,
with the following differences:

The command `flutter run --profile` compiles to profile mode.

[Android]: /docs/deployment/android
[Assertions]: {{site.dart-site}}/guides/language/language-tour#assert
[dart2js]: {{site.dart-site}}/tools/dart2js
[dartdevc]: {{site.dart-site}}/tools/dartdevc
[DevTools]: /docs/development/tools/devtools
[Flutter wiki]: {{site.github}}/flutter/flutter/wiki/Flutter's-modes
[Flutter's build modes]: {{site.github}}/flutter/flutter/wiki/Flutter%27s-modes
[hot reload]: /docs/development/tools/hot-reload
[iOS]:  /docs/deployment/ios
