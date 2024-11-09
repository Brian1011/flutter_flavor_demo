# Flutter flavors example

# About
With flutter you can use the same codebase to produce different apps for Android and iOS.

But what if you want to produce different apps for different clients? Or different apps for different environments (dev, staging, production, etc.)? 
This is where flavors come in handy.
This project illustrates how this is possible.

The same codebase can produce apps with different colors, names and logos. Below is an example of how this project looks like when running the dev and prod flavors.

# Demonstration
## Dev flavor
![Dev flavor](https://github.com/Brian1011/flutter_flavor_demo/blob/main/images/dev.png)

## Prod flavor
![Prod flavor](https://github.com/Brian1011/flutter_flavor_demo/blob/main/images/prod.png)

## App name and logo
The app name and logo changes based on the flavor. 
Below is a screenshot of the app logo for the dev and prod flavors.

![App logos](https://github.com/Brian1011/flutter_flavor_demo/blob/main/images/app_logos.png)

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

# How to add more flavors
1. Create a new file in under the <b><u>lib</u></b> folder. The file name should be in the format main_<flavor_name>.dart. For example, main_prod.dart.
2. Copy the contents of main_dev.dart into the newly created file.
3. Update the <b><u>app_config.dart</u></b> file to include the new flavor.
4. Update <b></u>app/build.gradle</u></b> file under "productFlavors" tag to include the new flavor.
5. To have the app icon change based on the flavor, update <b><u>android/app/src/flavor/res/mipmap*</u></b> folders with the new icons.

# Credits
1. This project was inspired by [this](https://dwirandyh.medium.com/create-build-flavor-in-flutter-application-ios-android-fb35a81a9fac) article.
2. You can read more about flavors [here](https://flutter.dev/docs/deployment/flavors).
