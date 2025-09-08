# Great Places

A comprehensive Flutter mobile application for discovering, managing, and sharing memorable locations with advanced location services and SQLite integration.

## Features

### Core Functionality

- **Location Discovery**: Add and categorize places with detailed information
- **Photo Integration**: Capture and store photos using device camera or gallery
- **Location Services**: Real-time GPS coordinates and reverse geocoding
- **Interactive Maps**: Google Maps integration with custom markers
- **Offline Storage**: SQLite database for reliable local data persistence

### Technical Highlights

- **State Management**: Flutter Riverpod for reactive state management
- **Location Services**: GPS tracking with location permissions handling
- **Database**: SQLite with custom data models and relationships
- **Image Processing**: Camera integration with file system storage
- **Maps Integration**: Google Maps Flutter plugin with custom UI
- **Responsive Design**: Material Design 3 with custom theming

## Architecture

### App Flow Diagram

```
┌─────────────────┐    ┌─────────────────┐    ┌─────────────────┐
│   UI Screens    │    │  State Manager  │    │   Data Layer    │
│                 │    │                 │    │                 │
│ • Places List   │◄──►│ Riverpod        │◄──►│ SQLite DB       │
│ • Add Place     │    │ Providers       │    │ File Storage    │
│ • Place Detail  │    │                 │    │                 │
│ • Map View      │    │                 │    │                 │
└─────────────────┘    └─────────────────┘    └─────────────────┘
         │                       │                       │
         ▼                       ▼                       ▼
┌─────────────────┐    ┌─────────────────┐    ┌─────────────────┐
│   UI Widgets    │    │     Models      │    │ External APIs   │
│                 │    │                 │    │                 │
│ • Image Input   │    │ • Place         │    │ • Google Maps   │
│ • Location Input│    │ • PlaceLocation │    │ • Camera/GPS    │
│ • Places List   │    │                 │    │ • Geocoding     │
└─────────────────┘    └─────────────────┘    └─────────────────┘
```

### Project Structure

```
lib/
├── models/          # Data models and entities
├── providers/       # Riverpod state management
├── screens/         # UI screens and navigation
├── widgets/         # Reusable UI components
├── theme/           # App theming and styling
└── extensions/      # Dart extensions and utilities
```

## Technology Stack

- **Framework**: Flutter 3.3.2+
- **State Management**: Flutter Riverpod 2.5.1
- **Database**: SQLite with sqflite 2.3.3
- **Location Services**: location 6.0.2
- **Maps**: google_maps_flutter 2.6.1
- **Image Handling**: image_picker 1.1.1
- **HTTP Client**: http 1.2.2
- **UI**: Material Design 3 with Google Fonts

## Key Dependencies

```yaml
dependencies:
  flutter_riverpod: ^2.5.1 # State management
  google_maps_flutter: ^2.6.1 # Maps integration
  location: ^6.0.2 # GPS services
  image_picker: ^1.1.1 # Camera/gallery
  sqflite: ^2.3.3+1 # SQLite database
  http: ^1.2.2 # API requests
  google_fonts: ^6.2.1 # Typography
  uuid: ^4.4.0 # Unique identifiers
```

## Screenshots

<div align="center">

| Add New place screen                                                                                      | Demo                                                                                                      | Places List                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| <img width="275" src="https://github.com/user-attachments/assets/22f83b67-2674-44e0-8477-ca24b1a63649" /> | <img width="275" src="https://github.com/user-attachments/assets/e170ca70-b6a5-4c08-ba28-001996558de7" /> | <img width="275" src="https://github.com/user-attachments/assets/01660a47-19a7-4b43-8a7e-309211138141" /> |

</div>

## Installation & Setup

### Prerequisites

- Flutter SDK 3.3.2 or higher
- Android SDK (API level 21+) or iOS 11.0+
- Google Maps API key

### Setup Instructions

1. **Clone the repository**

   ```bash
   git clone https://github.com/yourusername/great-places.git
   cd great-places
   ```

2. **Install dependencies**

   ```bash
   flutter pub get
   ```

3. **Configure Google Maps**

   - Get a Google Maps API key from [Google Cloud Console](https://console.cloud.google.com/)
   - Add the API key to platform-specific configuration files

4. **Run the application**
   ```bash
   flutter run
   ```

## Development Features

- **Clean Architecture**: Separation of concerns with clear data flow
- **Error Handling**: Comprehensive error states and user feedback
- **Performance**: Optimized database queries and image handling
- **Testing**: Widget tests included in test directory
- **Cross-Platform**: iOS and Android support with platform-specific optimizations

## Project Structure

The application follows Flutter best practices with a modular architecture:

- **Models**: Immutable data classes with proper serialization
- **Providers**: Reactive state management with Riverpod
- **Screens**: Feature-based screen organization
- **Widgets**: Reusable components with consistent styling
- **Database**: SQLite integration with migration support

## Skills Demonstrated

- Cross-platform mobile development with Flutter
- State management patterns and reactive programming
- SQLite database design and implementation
- Google Maps SDK integration
- Camera and location services implementation
- Material Design implementation
- Clean code architecture and organization

---

**Built with Flutter | Developed by Yohan Angulo**
