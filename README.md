# Recipe Input Showcase

A standalone Flutter portfolio project demonstrating a production-style ingredient-input flow.

## What it demonstrates

- Camera capture, gallery selection, torch and zoom controls.
- Native audio recording with live waveform, pause/resume and permission handling.
- Manual ingredient editing and validation.
- Typed `go_router` navigation with recoverable back navigation between every step.
- A local deterministic demo data source in place of external AI and backend services.

## Run

```bash
flutter pub get
dart run build_runner build
flutter run
```

Camera and microphone features require a physical iOS or Android device. The result data is intentionally local demo data; no API keys or backend are needed.

A new Flutter project.
