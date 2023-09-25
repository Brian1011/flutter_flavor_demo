# flutter_flavor

# About
With flutter you can use the same codebase to produce different apps for Android and iOS.
But what if you want to produce different apps for different clients? Or different apps for different environments (dev, staging, production, etc.)? This is where flavors come in handy.
This project illustrates how this is possible.

The same codebase can produce apps with different colors, names and logos. Below is an example of how this project looks like when running the dev and prod flavors.

# Demonstration
## Dev flavor

## Prod flavor

# How to use
This project consist of two flavors (dev and prod).

## Environment setup
1. Flutter version: 3.13.3
2. Dart version: 3.1.1

## Run on debug mode
To run the dev flavor, run the following command:
```
fvm flutter run -t lib/main_dev.dart --flavor dev
```

To run the prod flavor, run the following command:
```
fvm flutter run -t lib/main_prod.dart --flavor prod
```

## Run on release mode
To run the dev flavor, run the following command:
```
fvm flutter run -t lib/main_dev.dart --flavor dev --release
```

To run the prod flavor, run the following command:
```
fvm flutter run -t lib/main_prod.dart --flavor prod --release
```

# How it works
Create an app_config.dart file in the root of your project. This file will contain the configuration for each flavor.
Checkout the app_config.dart file in this project to see how it works.

# Credits
This project was inspired by [this](https://dwirandyh.medium.com/create-build-flavor-in-flutter-application-ios-android-fb35a81a9fac) article.
