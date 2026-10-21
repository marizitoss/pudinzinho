# Pudinzinho

A small, personalized Flutter app made to share a sweet message through music.
It opens with a welcoming screen and leads to a collection of song-lyric images.

## Features

- A pink, pixel-art-inspired interface using the Pixelify Sans font.
- A personalized welcome screen with a button to open the music page.
- A collection of 60 lyric images, with a button to display a random image.
- Navigation back to the welcome screen.

## Built With

- Flutter and Dart
- Material Design widgets
- Bundled image and font assets

## Run Locally

Make sure the [Flutter SDK](https://docs.flutter.dev/get-started/install) is installed, then run:

```bash
flutter pub get
flutter run
```

## Project Structure

- `lib/main.dart` contains the app entry point and welcome screen.
- `lib/musicPage.dart` contains the lyric-image screen and its controls.
- `lib/consts/musicData.dart` lists the lyric-image assets.
- `assets/` contains the images and Pixelify Sans font used by the app.
