# ValkyrieApp

The mobile application for [Valkyrie](https://github.com/sentrionic/Valkyrie) written in Flutter.

## Stack

- Flutter

- [Bloc and Cubit](https://bloclibrary.dev/#/) for state management

- [get_it](https://pub.dev/packages/get_it) for dependency injection

- REST for data fetching and socket.io for websocket events

For all features check out the parent [repository](https://github.com/sentrionic/Valkyrie).

The architecture of this app is based on Reso Coder's [Domain Driven Design Principles](https://resocoder.com/2020/03/09/flutter-firebase-ddd-course-1-domain-driven-design-principles/):

> **Application** contains all the Use Cases

> **Domain** contains the business logic (entities and validation)

> **Infrastructure** contains the repositories and network calls

> **Presentation** contains all the UI components and the web sockets

## Installation

You will need Flutter Version 2 to run this app.

This app was created and tested on `Flutter 2.0.5` and `Dart 2.12.3` .

```
git clone https://github.com/sentrionic/ValkyrieApp.git
cd ValkyrieApp
flutter packages get
```

For debug mode run `flutter run` and for production mode run `flutter run --release`

If you want to use your own server you will base to change the `BaseUrl` in `InjectableModule`.

If said server runs on `localhost` you will also need to add `android:usesCleartextTraffic="true"` to the Android manifest.

## Additional Information

This app was tested and is working on Android and the general design is based on Discord's Android version.

The iOS version will need additional configuration done to the packages to run.
As I do not own a Mac I cannot work on it.
