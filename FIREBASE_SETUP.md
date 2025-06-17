# Firebase Setup Guide for FP Design System

This guide will help you set up Firebase for your FP Design System deployment.

## 🚀 Quick Setup Steps

### 1. Create Firebase Project

1. Go to [Firebase Console](https://console.firebase.google.com/)
2. Click "Create a project" or select an existing project
3. Enter project name: `fp-design-system` (or your preferred name)
4. Enable Google Analytics (optional but recommended)
5. Click "Create project"

### 2. Enable Firebase Hosting

1. In your Firebase project, click "Hosting" in the left sidebar
2. Click "Get started"
3. Click "Next" through the setup wizard
4. Your project is now ready for hosting

### 3. Get Firebase Configuration

1. In Firebase Console, click the gear icon (⚙️) next to "Project Overview"
2. Select "Project settings"
3. Scroll down to "Your apps" section
4. Click the web app icon (</>)
5. Register app with nickname: `FP Design System`
6. Copy the configuration values

### 4. Update Configuration Files

#### Update `.firebaserc`
```json
{
  "projects": {
    "default": "your-actual-project-id"
  }
}
```

#### Update `web/index.html`
Replace the placeholder values in the `firebaseConfig` object:

```javascript
const firebaseConfig = {
  apiKey: "your-actual-api-key",
  authDomain: "your-project-id.firebaseapp.com",
  projectId: "your-project-id",
  storageBucket: "your-project-id.appspot.com",
  messagingSenderId: "your-messaging-sender-id",
  appId: "your-app-id",
  measurementId: "your-measurement-id"
};
```

### 5. Test Locally

```bash
# Build the app
flutter build web --release

# Serve locally with Firebase
firebase serve --only hosting

# Or use npm script
npm run serve
```

### 6. Deploy to Firebase

```bash
# Quick deploy
./deploy.sh

# Or use npm scripts
npm run build:deploy

# Or manual deployment
flutter build web --release
firebase deploy --only hosting
```

## 🔧 Configuration Details

### Firebase Services Available

The current setup includes:
- ✅ **Firebase Hosting**: Web app hosting
- ✅ **Firebase Analytics**: Usage analytics (enabled by default)
- ❌ **Authentication**: User authentication (disabled by default)
- ❌ **Firestore**: Database (disabled by default)
- ❌ **Storage**: File storage (disabled by default)
- ❌ **Functions**: Serverless functions (disabled by default)

### Enable Additional Services

To enable additional Firebase services:

1. **Authentication**
   ```javascript
   // In web/index.html, add:
   import { getAuth } from "https://www.gstatic.com/firebasejs/10.7.0/firebase-auth.js";
   const auth = getAuth(app);
   ```

2. **Firestore**
   ```javascript
   // In web/index.html, add:
   import { getFirestore } from "https://www.gstatic.com/firebasejs/10.7.0/firebase-firestore.js";
   const db = getFirestore(app);
   ```

3. **Storage**
   ```javascript
   // In web/index.html, add:
   import { getStorage } from "https://www.gstatic.com/firebasejs/10.7.0/firebase-storage.js";
   const storage = getStorage(app);
   ```

## 🌐 Deployment URLs

After deployment, your app will be available at:
- **Production**: `https://your-project-id.web.app`
- **Preview**: `https://your-project-id.web.app` (with preview channels)

## 🔒 Security Rules

### Hosting Security
The current setup includes basic security headers in `firebase.json`:
- Cache control for static assets
- CORS headers for fonts and images

### Additional Security (Optional)
If you enable additional services, configure security rules:

1. **Firestore Rules** (if using Firestore)
2. **Storage Rules** (if using Storage)
3. **Authentication Rules** (if using Auth)

## 🐛 Troubleshooting

### Common Issues

1. **"Project not found" error**
   - Ensure your project ID in `.firebaserc` matches your Firebase project
   - Verify you're logged in: `firebase login`

2. **"Permission denied" error**
   - Check if you have the correct permissions in Firebase Console
   - Ensure you're using the correct project

3. **Build errors**
   - Clean and rebuild: `flutter clean && flutter pub get`
   - Check for any syntax errors in configuration files

4. **Deployment fails**
   - Check Firebase CLI version: `firebase --version`
   - Update if needed: `npm install -g firebase-tools`

### Getting Help

- [Firebase Documentation](https://firebase.google.com/docs)
- [Firebase Hosting Guide](https://firebase.google.com/docs/hosting)
- [Flutter Web Deployment](https://flutter.dev/docs/deployment/web)

## 📝 Environment Variables (Optional)

For production deployments, consider using environment variables:

1. Create `.env` file (add to `.gitignore`)
2. Use environment variables in your configuration
3. Set up CI/CD with GitHub Actions (already configured)

---

**Your FP Design System is now ready for Firebase deployment! 🎉** 