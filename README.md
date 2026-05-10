# Flutter Parallax Effect

A Flutter UI that simulates a parallax animations, sliding cards — styled as a ticket.

## Preview

<div align="center">
  <video src="https://github.com/user-attachments/assets/2d8af0a6-26c0-4030-abaa-c14e725a8911" controls autoplay loop muted width="300"></video>
</div>

## Features

- **Animated bottom sheet** — drag or tap to expand from a compact tray to full screen
- **Parallax card transitions** — icons shift position and scale as the sheet opens, creating a sense of depth
- **Layered content** — booked exhibition items animate independently for a staggered reveal
- **Gesture support** — fling velocity detection for natural drag-to-open/close behaviour
- **Custom typography** — uses SF Pro Display across multiple weights for a polished, editorial feel

## Tech Stack

| Layer | Detail |
|---|---|
| Framework | Flutter (Dart) |
| Animation | `AnimationController` + `lerpDouble` |
| Gestures | `GestureDetector` with drag + fling |

## Getting Started

```bash
flutter pub get
flutter run
```

## Requirements

- Flutter SDK `^3.41.6`
- Android / iOS
