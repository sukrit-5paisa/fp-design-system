# Deployment Guide

## GitHub Pages Deployment

### Prerequisites
- GitHub repository created
- Flutter project configured

### Steps

1. **Configure GitHub Pages**
   - Go to repository Settings → Pages
   - Set Source to "GitHub Actions"

2. **Trigger Deployment**
   - Go to Actions tab
   - Run "Deploy to GitHub Pages" workflow
   - Or push to main branch to trigger automatic deployment

### App URL
Your app will be available at:
```
https://[username].github.io/[repository-name]/
```

### Build Process
The GitHub Actions workflow will:
1. Set up Flutter environment
2. Install dependencies
3. Build the Flutter web app
4. Deploy to GitHub Pages

### Local Development
```bash
# Run locally
flutter run -d web-server --web-port 8080

# Build for production
flutter build web --release
```

### Security Notes
- No external dependencies or API keys required
- Simple and secure deployment process
- All assets are bundled with the app 