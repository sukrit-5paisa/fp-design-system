# GitHub Pages Deployment Guide

This guide will help you deploy your FP Design System to GitHub Pages.

## 🚀 Quick Setup

### 1. Create GitHub Repository

1. Go to [GitHub](https://github.com) and create a new repository
2. Name it: `fp-design-system` (or your preferred name)
3. Make it public (required for free GitHub Pages)
4. Don't initialize with README (we'll push our existing code)

### 2. Push Code to GitHub

```bash
# Add all files
git add .

# Commit changes
git commit -m "Initial commit: FP Design System with GitHub Pages deployment"

# Add remote (replace with your repository URL)
git remote add origin https://github.com/your-username/fp-design-system.git

# Push to main branch
git push -u origin main
```

### 3. Configure GitHub Pages

1. Go to your repository on GitHub
2. Navigate to **Settings** → **Pages**
3. Under **Source**, select **GitHub Actions**
4. Click **Configure** to set up the workflow

### 4. Add Firebase Secrets

1. Go to **Settings** → **Secrets and variables** → **Actions**
2. Click **New repository secret**
3. Add the following secrets:

```
FIREBASE_API_KEY=AIzaSyD8ofv_uZqzXUcdtHpnewaXy6mFAb2dwXU
FIREBASE_AUTH_DOMAIN=v5paisa-login-uat-iegkps.firebaseapp.com
FIREBASE_DATABASE_URL=https://v5paisa-login-uat-iegkps.firebaseio.com
FIREBASE_PROJECT_ID=v5paisa-login-uat-iegkps
FIREBASE_STORAGE_BUCKET=v5paisa-login-uat-iegkps.firebasestorage.app
FIREBASE_MESSAGING_SENDER_ID=1035011306284
FIREBASE_APP_ID=1:1035011306284:web:6f9248fa8ec32c68d37289
FIREBASE_MEASUREMENT_ID=G-DBMD7LDDM6
```

### 5. Trigger Deployment

1. Go to **Actions** tab in your repository
2. You should see the "Deploy to GitHub Pages" workflow
3. Click **Run workflow** → **Run workflow**
4. The deployment will start automatically

## 🌐 Access Your App

Your app will be available at:
```
https://your-username.github.io/fp-design-system/
```

## 🔧 Manual Deployment

If you want to deploy manually:

```bash
# Build for GitHub Pages
npm run build:github-pages

# Or use the deployment script
./deploy-github-pages.sh
```

## 📁 Repository Structure

```
fp-design-system/
├── .github/
│   └── workflows/
│       └── deploy-github-pages.yml    # GitHub Actions workflow
├── lib/
│   ├── core/                          # Design system core
│   ├── components/                    # UI components
│   └── widgetbook/                    # Widgetbook showcase
├── web/
│   ├── index.template.html           # HTML template
│   └── favicon.ico                   # Favicon
├── scripts/
│   └── build-web.js                  # Build script
├── .env                              # Environment variables (local)
├── .env.example                      # Environment template
├── deploy-github-pages.sh            # Deployment script
└── README.md                         # Project documentation
```

## 🔒 Security Features

- ✅ **Environment variables** stored as GitHub secrets
- ✅ **Secure build process** with Firebase credentials
- ✅ **Template system** for HTML generation
- ✅ **Git protection** for sensitive files

## 🚀 Continuous Deployment

The GitHub Actions workflow will automatically:
1. Build your Flutter web app
2. Inject Firebase credentials
3. Deploy to GitHub Pages
4. Update on every push to main branch

## 🐛 Troubleshooting

### Build Fails
- Check that all Firebase secrets are added
- Verify Flutter version compatibility
- Check GitHub Actions logs for errors

### App Not Loading
- Ensure repository is public
- Check GitHub Pages settings
- Verify Firebase configuration

### Firebase Issues
- Check Firebase project permissions
- Verify API keys are correct
- Test Firebase configuration locally

## 📚 Additional Resources

- [GitHub Pages Documentation](https://pages.github.com/)
- [GitHub Actions Documentation](https://docs.github.com/en/actions)
- [Flutter Web Deployment](https://flutter.dev/docs/deployment/web)

---

**Your FP Design System will be live on GitHub Pages! 🎉** 