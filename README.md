# EZ Flutter Translation Generator

EZ Flutter Translation Generator package is a small package for generating and updating translation file for the [EZ-Flutter framework](https://ez-flutter.de).

## Table of Contentsb

1. [Install](#install)
2. [Usage](#usage)
3. [Changelog](#changelog)
4. [Copyright And license](#copyright-and-license)

## Install

Update the pubspec.yaml file and add the following line to your *dev* dependencies.

```yaml
dev_dependencies:
  ez_flutter_translation_generator: ^1.0.1
```

## Usage

Create some translation files an */locale*. For more information check out the documentation at <https://ez-flutter.de/docs/translation>.

Run the following command in your command line:

```bash
flutter pub run build_runner build
```

This will scan the code for translations and update the translation files by adding the missing translation labels.

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
