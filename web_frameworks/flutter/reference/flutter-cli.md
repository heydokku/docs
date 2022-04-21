```terminal
$ flutter --help --verbose
```
flutter create --org=com.mosimos dautruongtiengNhat
flutter build appbundle
flutter emulators --launch test

```terminal
$ flutter create my_app
$ cd my_app
$ flutter analyze
$ flutter test
$ flutter run lib/main.dart
$ flutter pub get
$ flutter pub outdated
$ flutter pub upgrade
$ flutter --version
```

# change package name. Can not have the same package name on play store

flutter pub run change_app_package_name:main com.mosimos.learning_japanese

# pub

flutter pub get # get all packages in pubspec.yaml
flutter pub add modal_bottom_sheet

# build-runner

flutter packages pub run build_runner build

# with firebase

firebase apps:list

firebase apps:create ANDROID

|---------+--------------------------------+-----------------------------------|
| Command | Example of use                 | More information                  |
|---------|--------------------------------|-----------------------------------|
| analyze | `flutter analyze -d <DEVICE_ID>`     | Analyzes the project's Dart source code.<br>Use instead of [`dartanalyzer`][]. |
| assemble | `flutter assemble -o <DIRECTORY>` | Assemble and build flutter resources. |
| attach | `flutter attach -d <DEVICE_ID>` | Attach to a running application. |
| bash-completion | `flutter bash-completion` | Output command line shell completion setup scripts. |
| build | `flutter build <DIRECTORY>` | Flutter build commands. |
| channel | `flutter channel <CHANNEL_NAME>` | List or switch flutter channels. |
| config | `flutter config --build-dir=<DIRECTORY>` | Configure Flutter settings. To remove a setting, configure it to an empty string. |
| create  | `flutter create <DIRECTORY>`      | Creates a new project. |
| devices | `flutter devices -d <DEVICE_ID>` | List all connected devices. |
| doctor | `flutter doctor` | Show information about the installed tooling. |
| downgrade | `flutter downgrade` | Downgrade Flutter to the last active version for the current channel. |
| drive | `flutter drive` | Runs Flutter Driver tests for the current project. |
| emulators | `flutter emulators` | List, launch and create emulators. |
| format  | `flutter format <DIRECTORY|DART_FILE>` | Formats Flutter source code.<br>Use instead of [`dartfmt`][]. |
| gen-l10n | `flutter gen-l10n <DIRECTORY>` | Generate localizations for the Flutter project. |
| install | `flutter install -d <DEVICE_ID>` | Install a Flutter app on an attached device. |
| logs | `flutter logs` | Show log output for running Flutter apps. |
| precache | `flutter precache <ARGUMENTS>` | Populates the Flutter tool's cache of binary artifacts. |
| pub     | `flutter pub <PUB_COMMAND>`       | Works with packages.<br>Use instead of [`pub`][]. |
| run     | `flutter run <DART_FILE>`         | Runs a Flutter program. |
| symbolize | `flutter symbolize --input=<STACK_TRACK_FILE>` | Symbolize a stack trace from the AOT compiled flutter application. |
| test    | `flutter test [<DIRECTORY|DART_FILE>]` | Runs tests in this package.<br>Use instead of [`pub run test`][`pub`]. |
| upgrade | `flutter upgrade` | Upgrade your copy of Flutter. |
{:.table .table-striped .nowrap}
