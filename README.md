# Recipe Input Showcase

A standalone Flutter portfolio project demonstrating a production-style recipe-input flow: capture or dictate ingredients, review the result, then search for recipe ideas.

## Highlights

- Camera capture and gallery selection, including torch and zoom controls.
- Native audio recording with a live waveform, pause/resume and permission handling.
- Editable ingredient review with quantities, units and validation.
- Recoverable typed `go_router` navigation across camera, audio and manual flows.
- Recipe search results driven by deterministic local demo data—no backend or API keys required.

## Product flow

```mermaid
flowchart LR
  A[Choose input method] --> B[Camera]
  A --> C[Voice]
  A --> D[Manual]
  B --> E[Demo recognition]
  C --> E
  D --> F[Ingredient review and edit]
  E --> F
  F --> G[Recipe search]
  G --> H[Demo recipe results]
```

## Screenshots

<p align="center">
  <img src="assets/screenshots/input-method.jpg" alt="Input method selector" width="220" />
  <img src="assets/screenshots/camera-capture.jpg" alt="Camera capture controls" width="220" />
  <img src="assets/screenshots/camera-recognition.jpg" alt="Camera recognition in progress" width="220" />
</p>

<p align="center">
  <img src="assets/screenshots/audio-recording.png" alt="Voice recording with live waveform" width="220" />
  <img src="assets/screenshots/ingredient-review.jpg" alt="Editable ingredient review" width="220" />
  <img src="assets/screenshots/recipe-results.jpg" alt="Recipe search results" width="220" />
</p>

## Demo boundaries

Camera and microphone interactions use native device APIs and require a physical iOS or Android device. Ingredient recognition and recipe search deliberately use local, deterministic demo data: this project demonstrates the UX, state management and integration boundaries, rather than claiming live AI recognition.

## Run

```bash
flutter pub get
dart run build_runner build
flutter run
```
