# Dart Domainrobot Sdk

The Dart Domainrobot Sdk package provides an easy integration of the domainrobot json api powered by InterNetX GmbH.

## Table of Contentsb

1. [Preamble](#preamble)
2. [Install And Import](#install-and-import)
   * [pubspec.yaml](#pubspec.yaml)
   * [Import](#import)
3. [Usage](#usage)
   * [The Domainrobot Provider](#the-domainrobot-provider)
   * [Example](#example)
4. [Changelog](#changelog)
5. [Copyright And license](#copyright-and-license)

## Preamble

As this Sdk is written in pure [Dart](https://dart.dev), it can be used on all plattforms dart is running. This includes the using of frameworks like [Flutter](https://flutter.dev), [Angular Dart](https://angulardart.dev) and many more.

Important: This package is under developement and more functionalities of the domainrobot api will be covered in the future. Feel free to contribute by creating pull requests or file an issue for bugs, questions and feature requests.

## Install And Import

### pubspec.yaml

Update pubspec.yaml and add the following line to your dependencies.

```yaml
dependencies:
  dart_domainrobot_sdk: ^0.1.0
```

### Import

Import the package with :

```dart
import 'package:basic_utils/basic_utils.dart';
```

## Usage

### The Domainrobot Provider

The main functionality is covered by the [DomainRobotProvider](/lib/foo.dart) class. To use the provider, it must be instanciated with your api credentials and the matching baseUrl of the api.

* Productive System: <https://api.autodns.com/v1>
* Demo System: <https://api.demo.autodns.com/v1>

```dart
String user = "";
String password = "";
String context = "";
String baseUrl = "";
DomainRobotProvider provider = DomainRobotProvider(user,password,context,baseUrl);
```

### Example

See the [example](/example) folder for multiple examples.

* Query expiring domains
* Making a Domainstudio search

## Changelog

For a detailed changelog, see the [CHANGELOG.md](CHANGELOG.md) file

## Copyright and license

MIT License

Copyright (c) 2019 InterNetX GmbH

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
