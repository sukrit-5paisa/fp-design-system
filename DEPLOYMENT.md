# Deployment Guide

## GitHub Pages Deployment

### Prerequisites
- GitHub repository created
- Firebase project configured
- Firebase credentials available

### Steps

1. **Configure GitHub Pages**
   - Go to repository Settings → Pages
   - Set Source to "GitHub Actions"

2. **Add Firebase Secrets**
   - Go to Settings → Secrets and variables → Actions
   - Add these secrets (get values from Firebase Console):
     - `FIREBASE_API_KEY`
     - `FIREBASE_AUTH_DOMAIN`
     - `FIREBASE_DATABASE_URL`
     - `FIREBASE_PROJECT_ID`
     - `FIREBASE_STORAGE_BUCKET`
     - `FIREBASE_MESSAGING_SENDER_ID`
     - `FIREBASE_APP_ID`
     - `FIREBASE_MEASUREMENT_ID`

3. **Trigger Deployment**
   - Go to Actions tab
   - Run "Deploy to GitHub Pages" workflow

### App URL
Your app will be available at:
```
https://[username].github.io/[repository-name]/
```

### Security Notes
- Never commit `.env` files or files containing secrets
- Use GitHub Secrets for sensitive data
- Rotate API keys regularly 