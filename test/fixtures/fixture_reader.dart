import 'dart:io';

String fixture(String name) =>
    File('test/fixtures/json/$name').readAsStringSync();
