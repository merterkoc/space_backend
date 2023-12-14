# space_backend

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]
[![Powered by Dart Frog](https://img.shields.io/endpoint?url=https://tinyurl.com/dartfrog-badge)](https://dartfrog.vgv.dev)

An example application built with dart_frog

[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg

[license_link]: https://opensource.org/licenses/MIT

[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg

[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis

# Get Started

## Create run configuration

1. Open `Run/Debug Configurations` dialog
2. Click `+` button and select `Shell Script`
3. Set `Name` to `build_run`
4. Set `Script path` to `script/build_run.sh`
5. Apply changes
6. Run `build_run` configuration
7. Open `Run/Debug Configurations` dialog
8. Click `+` button and select `Dart Command Line App`
9. Set `Name` to `run`
10. Set `Dart file` to `.dart_frog/server.dart`
11. Set `before launch` to `build_run` with `Run Another Configuration` option
12. Apply changes
13. Run `run` configuration
14. Open `http://localhost:8080` in browser
15. Enjoy!

Things to know about the project

* When a new route or middleware is created and removed, the automatically created server file must
  be recreated with the dart_frog dev command.
* The project will not run unless shared environment variables are defined.
  FIREBASE_SERVER_KEY, JWT_SECRET_KEY, MONGO_URI
* It is important to run script/build_run.sh before running the project.
* The path to the created server file is: /.dart_frog/server.dart. You can add this path to your run configuration