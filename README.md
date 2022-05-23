# ValkyrieApp

The mobile application for [Valkyrie](https://github.com/sentrionic/Valkyrie) written in Flutter.

For the APK check out the [Release tab](https://github.com/sentrionic/ValkyrieApp/releases).

## Screenshots

<table><tr>
  <tr>
    <td><img src="./assets/github/auth.gif" width="180"></td>
    <td><img src="./assets/github/account.jpg" width="180"></td>
    <td><img src="./assets/github/friends.gif" width="180"></td>
    <td><img src="./assets/github/channels.gif" width="180"></td>
    </tr>
    <tr>
    <td><img src="./assets/github/chat.gif" width="180"></td>
    <td><img src="./assets/github/guilds.gif" width="180"></td>
    <td><img src="./assets/github/directmessage.gif" width="180"></td>
    <td><img src="./assets/github/notifications.gif" width="180"></td>
  </tr>
  </table>

## Stack

- Flutter

- [Bloc and Cubit](https://bloclibrary.dev/#/) for state management

- [get_it](https://pub.dev/packages/get_it) for dependency injection

- REST for data fetching and websockets for real time events

For all features check out the parent [repository](https://github.com/sentrionic/Valkyrie).
For the socket.io version check out the `v1` branch.

The architecture of this app is based on Reso Coder's [Domain Driven Design Principles](https://resocoder.com/2020/03/09/flutter-firebase-ddd-course-1-domain-driven-design-principles/):

![DDD architecture](https://resocoder.com/wp-content/uploads/2020/03/DDD-Flutter-Diagram-v3.svg)

> **Application** contains all the Use Cases

> **Domain** contains the business logic (entities and validation)

> **Infrastructure** contains the repositories and network calls as well as Data Transfer Objects

> **Presentation** contains all the UI components and the web sockets

## Installation

This app was created and tested on `Flutter 3.0.0` and `Dart 2.17.0` .

```
git clone https://github.com/sentrionic/ValkyrieApp.git
cd ValkyrieApp
flutter packages get
```

For debug mode run `flutter run` and for production mode run `flutter run --release`

To run the code generator using `freezed`, run `flutter pub run build_runner watch --delete-conflicting-outputs`.

If you want to use your own server you will need to change the `BaseUrl` in `InjectableModule`.

If said server runs locally you will also need to add `android:usesCleartextTraffic="true"` to the Android manifest.

**Note**: Instead of `localhost` you need to specify your `IPv4 Address` (e.g. `192.168.2.xxx`), otherwise the HttpClient won't be able to connect to the server.

## Tests

Tests were written for all Use Cases in the `Application` directory and the repositories and DTOs in the `Infrastructure` directory.

To run all tests run `flutter test`

## Additional Information

This app was tested and is working on Android and the general design is based on Discord's Android version.

The iOS version will need additional configuration done to the packages to run.
As I do not own a Mac I cannot work on it.

## Credits

[Reso Coder](https://resocoder.com/): This app's structure is based on his DDD tutorial and the tests are based on his TDD tutorial.
