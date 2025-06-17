# FP Design System

A comprehensive design system for FP applications, built with Flutter and showcased using Widgetbook.

## 🚀 Quick Start

### Prerequisites
- Install [Flutter](https://flutter.dev/docs/get-started/install) (latest stable version)
- Install [VS Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio)
- Install the Flutter extension for your IDE
- Enable web support: `flutter config --enable-web`
- Install [Node.js](https://nodejs.org/) (for Firebase deployment)

### Running the Design System

1. **Clone and Setup**
   ```bash
   # Clone the repository
   git clone [repository-url]
   cd fp_design

   # Install dependencies
   flutter pub get
   npm install
   ```

2. **Run Widgetbook**
   ```bash
   # Run in Chrome (Recommended for designers)
   flutter run -d chrome lib/widgetbook/main.dart
   
   # Run in desktop app
   flutter run -d macos lib/widgetbook/main.dart    # For macOS
   flutter run -d windows lib/widgetbook/main.dart  # For Windows
   flutter run -d linux lib/widgetbook/main.dart    # For Linux
   
   # Run on Android emulator
   flutter run -d android lib/widgetbook/main.dart
   ```

3. **Access Widgetbook**
   - **Browser**: Automatically opens at `http://localhost:XXXX` (check terminal output)
   - **Desktop**: Launches the native app
   - **Mobile**: Runs on connected device or emulator

## 🌐 Firebase Hosting Deployment

The design system is configured for secure deployment to Firebase Hosting using environment variables.

### Prerequisites
- Firebase account and project
- Firebase CLI installed: `npm install -g firebase-tools`
- Node.js (for environment variable processing)

### Setup Firebase Project

1. **Create Firebase Project**
   - Go to [Firebase Console](https://console.firebase.google.com/)
   - Create a new project or use existing one
   - Enable Hosting

2. **Configure Environment Variables**
   - Copy the example environment file:
   ```bash
   npm run setup
   ```
   - Update `.env` with your Firebase credentials:
   ```bash
   FIREBASE_API_KEY=your-actual-api-key
   FIREBASE_AUTH_DOMAIN=your-project-id.firebaseapp.com
   FIREBASE_DATABASE_URL=https://your-project-id.firebaseio.com
   FIREBASE_PROJECT_ID=your-project-id
   FIREBASE_STORAGE_BUCKET=your-project-id.firebasestorage.app
   FIREBASE_MESSAGING_SENDER_ID=your-messaging-sender-id
   FIREBASE_APP_ID=your-app-id
   FIREBASE_MEASUREMENT_ID=your-measurement-id
   ```

3. **Update Project Configuration**
   - Update `.firebaserc` with your project ID:
   ```json
   {
     "projects": {
       "default": "your-project-id"
     }
   }
   ```

### Security Features

- ✅ **Environment Variables**: Firebase credentials stored in `.env` file
- ✅ **Template System**: `web/index.template.html` with placeholder variables
- ✅ **Secure Build**: Credentials injected during build process
- ✅ **Git Protection**: Generated files with credentials excluded from version control
- ✅ **Validation**: Build script validates all required environment variables

### Deployment Options

1. **Secure Deploy (Recommended)**
   ```bash
   # Build and deploy with environment variables
   ./deploy.sh
   ```

2. **Using npm scripts**
   ```bash
   # Build and deploy securely
   npm run build:deploy
   
   # Or step by step
   npm run build:secure
   npm run deploy
   ```

3. **Manual deployment**
   ```bash
   # Build with environment variables
   npm run build:secure
   
   # Deploy to Firebase
   firebase deploy --only hosting
   ```

4. **Test locally before deployment**
   ```bash
   # Build securely
   npm run build:secure
   
   # Serve locally
   npm run serve
   ```

### Environment Variable Management

The project uses a secure template system:

1. **Template File**: `web/index.template.html` (tracked in git)
2. **Environment File**: `.env` (excluded from git)
3. **Build Script**: `scripts/build-web.js` (processes variables)
4. **Generated File**: `web/index.html` (excluded from git)

### Deployment URLs
- **Production**: `https://your-project-id.web.app`
- **Preview**: `https://your-project-id.web.app` (with preview channels)

### Continuous Deployment
For automatic deployments, you can set up GitHub Actions or other CI/CD pipelines using the provided scripts.

## 🎨 Design System Features

### Interactive Typography Showcase
The design system includes a comprehensive typography showcase with **interactive knobs** that allow you to:

- **Edit text content** for all typography samples in real-time
- **Test typography hierarchy** across all sections
- **Preview typography** in both light and dark themes
- **Explore typography scale** with live text editing

#### Typography Sections Available:
- **Display**: Large, Medium, Small variants
- **Headline**: Large, Medium, Small variants  
- **Title**: Large, Medium, Small variants
- **Body**: Large, Medium, Small variants
- **Label**: Large, Medium, Small variants

### Color System
- **Material Design 3** color tokens
- **Primary, Secondary, and Tertiary** color schemes
- **System colors** (Positive, Critical, Warning, Info)
- **Light and Dark theme** variants
- **Accessibility-focused** color combinations

### Component Library
- **Material Design 3** components with custom theming
- **Interactive states** and variations
- **Responsive design** testing
- **Accessibility features** built-in

## 🔧 Using Widgetbook

### Navigation
1. **Left Sidebar**: Navigate between design system sections
2. **Search Bar**: Quickly find specific components
3. **Theme Toggle**: Switch between light and dark themes
4. **Viewport Controls**: Test at different screen sizes

### Interactive Features
1. **Typography Knobs**: Edit text content for all typography samples
2. **Component Testing**: View components in isolation
3. **Theme Testing**: Test components in both light and dark themes
4. **Responsive Testing**: Test at different screen sizes

### Available Sections
- **Foundation**
  - **Typography Showcase**: Interactive typography with editable text knobs
  - **Colors**: Color tokens and combinations
  - **Spacing**: Spacing scale and utilities
- **Components**: Material Design 3 components with custom theming

## 📚 Design System Usage

### Typography

The design system provides a comprehensive typography system with consistent text styles.

#### Available Text Styles

1. **Display Text** (`TypographyTokens.display`)
   - Large, attention-grabbing text for hero sections
   - Variants: `large`, `medium`, `small`
   - Usage: Hero sections, main headlines

2. **Headline Text** (`TypographyTokens.headline`)
   - Section headers and important titles
   - Variants: `large`, `medium`, `small`
   - Usage: Section headers, card titles

3. **Title Text** (`TypographyTokens.title`)
   - Subsection headers and card titles
   - Variants: `large`, `medium`, `small`
   - Usage: Card titles, subsection headers

4. **Body Text** (`TypographyTokens.body`)
   - Main content text
   - Variants: `large`, `medium`, `small`
   - Usage: Paragraphs, descriptions, general content

5. **Label Text** (`TypographyTokens.label`)
   - Small, functional text
   - Variants: `large`, `medium`, `small`
   - Usage: Labels, captions, helper text

#### Usage Example

```dart
// Using typography tokens
Text(
  'Welcome to FP Design',
  style: TypographyTokens.display.large,
)

// Using theme text styles
Text(
  'Section Title',
  style: Theme.of(context).textTheme.headlineLarge,
)
```

### Colors

The design system provides semantic color tokens for consistent usage.

#### Color Categories

1. **Primary Colors** (`ColorsToken.primary`)
   - Main brand colors
   - Dark mode variants: `ColorsToken.primaryDark`

2. **Secondary Colors** (`ColorsToken.secondary`)
   - Supporting brand colors
   - Dark mode variants: `ColorsToken.secondaryDark`

3. **System Colors** (`ColorsToken.system`)
   - Semantic colors for system states
   - Categories: `positive`, `critical`, `warning`, `info`

4. **Material Colors** (`ColorsToken.materialLight` / `ColorsToken.materialDark`)
   - Surface and background colors

#### Usage Example

```dart
// Using color tokens
Container(
  color: ColorsToken.primary.primary,
  child: Text(
    'Primary Button',
    style: TextStyle(color: ColorsToken.primary.onPrimary),
  ),
)

// Using theme colors
Container(
  color: Theme.of(context).colorScheme.primary,
  child: Text(
    'Primary Button',
    style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
  ),
)
```

### Theme

The design system provides a complete theme system that automatically adapts to light and dark modes.

#### Theme Usage

```dart
final theme = Theme.of(context);

// Access typography
theme.textTheme.headlineLarge

// Access colors
theme.colorScheme.primary

// Check theme mode
theme.brightness == Brightness.dark
```

## 🏗️ Architecture

The design system follows a structured approach:

### Core
- **Theme** (`lib/core/theme/`): Design tokens, colors, typography, spacing
- **Constants** (`lib/core/constants/`): Global constants and configuration

### Widgetbook
- **Main** (`lib/widgetbook/main.dart`): Widgetbook configuration and setup
- **Typography Showcase** (`lib/widgetbook/typography_showcase.dart`): Interactive typography with knobs

### Components
- **Atoms**: Basic building blocks (buttons, inputs, icons)
- **Molecules**: Combinations of atoms (cards, forms, lists)
- **Organisms**: Complex UI components (headers, navigation, layouts)

## 🛠️ Development

### Project Structure
```
lib/
├── core/
│   ├── theme/
│   │   ├── colors.dart
│   │   ├── typography.dart
│   │   ├── spacing.dart
│   │   └── theme.dart
│   └── constants/
├── widgetbook/
│   ├── main.dart
│   └── typography_showcase.dart
└── components/
    ├── atoms/
    ├── molecules/
    └── organisms/
```

### Running Widgetbook
```bash
# For web (recommended for designers)
flutter run -d chrome lib/widgetbook/main.dart

# For desktop
flutter run -d macos lib/widgetbook/main.dart

# For mobile
flutter run -d android lib/widgetbook/main.dart
```

### Building for Production
```bash
# Build for web
flutter build web

# Build for mobile
flutter build apk
flutter build ios
```

### Testing
```bash
# Run all tests
flutter test

# Run specific test file
flutter test test/widget_test.dart
```

## 🎯 Best Practices

### Typography
- Always use typography tokens instead of hardcoded styles
- Use appropriate text styles for hierarchy
- Test text in both light and dark themes
- Consider accessibility and readability

### Colors
- Use semantic color tokens instead of hardcoded colors
- Consider color contrast for accessibility
- Test colors in both light and dark themes
- Use appropriate color combinations

### Components
- Use theme tokens for colors and typography
- Support both light and dark themes
- Consider accessibility
- Test at different screen sizes
- Document component usage and variants

## 🐛 Troubleshooting

### Common Issues

1. **Widgetbook not loading**
   - Ensure all dependencies are installed: `flutter pub get`
   - Check if the correct entry point is used: `lib/widgetbook/main.dart`

2. **Knobs not showing**
   - Make sure you're viewing the "Typography Showcase" use case
   - Check the right sidebar for the knobs panel
   - Try refreshing the page or restarting Widgetbook

3. **Theme not switching**
   - Use the theme toggle in the Widgetbook interface
   - Ensure the theme is properly configured in the code

### Getting Help

If you encounter issues:
1. Check the terminal output for error messages
2. Ensure Flutter is up to date: `flutter upgrade`
3. Clean and rebuild: `flutter clean && flutter pub get`
4. Create an issue in the repository with detailed steps

## 📖 Additional Resources

- [Material Design Guidelines](https://m3.material.io/)
- [Flutter Documentation](https://flutter.dev/docs)
- [Widgetbook Documentation](https://docs.widgetbook.io/)
- [Accessibility Guidelines](https://www.w3.org/WAI/standards-guidelines/wcag/)

---

**Happy designing! 🎨**