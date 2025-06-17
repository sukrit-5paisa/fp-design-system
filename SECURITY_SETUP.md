# Security Setup Guide

This guide explains the secure environment variable setup for Firebase credentials.

## 🔐 Security Overview

Your Firebase credentials are now securely managed using environment variables instead of being hardcoded in the source code.

## 📁 File Structure

```
├── .env                    # 🔒 Firebase credentials (excluded from git)
├── .env.example           # 📝 Template for environment variables
├── web/
│   ├── index.template.html # 📄 Template with placeholder variables
│   └── index.html         # 🔒 Generated file with credentials (excluded from git)
├── scripts/
│   └── build-web.js       # 🔧 Build script that processes environment variables
└── .gitignore             # 🛡️ Excludes sensitive files from version control
```

## 🔧 How It Works

1. **Template System**: `web/index.template.html` contains placeholder variables like `{{FIREBASE_API_KEY}}`
2. **Environment Variables**: `.env` file contains actual Firebase credentials
3. **Build Process**: `scripts/build-web.js` reads `.env` and replaces placeholders
4. **Generated File**: `web/index.html` is created with actual credentials
5. **Git Protection**: Generated files are excluded from version control

## 🚀 Usage

### Initial Setup
```bash
# Copy environment template
npm run setup

# Edit .env with your Firebase credentials
nano .env
```

### Building
```bash
# Secure build (recommended)
npm run build:secure

# Or use the deployment script
./deploy.sh
```

### Available Scripts
- `npm run setup` - Copy environment template
- `npm run prebuild` - Process environment variables
- `npm run build:secure` - Build with environment variables
- `npm run build:deploy` - Build and deploy securely
- `npm run clean` - Clean build artifacts

## 🔒 Security Features

### ✅ Environment Variables
- Credentials stored in `.env` file
- File excluded from version control
- Template provided for easy setup

### ✅ Template System
- `index.template.html` tracked in git
- Placeholder variables for all credentials
- Easy to maintain and update

### ✅ Build Validation
- Script validates all required variables
- Clear error messages for missing variables
- Prevents builds with incomplete configuration

### ✅ Git Protection
- `.env` file excluded from version control
- Generated `index.html` excluded from version control
- Template files tracked for collaboration

## 🛠️ Customization

### Adding New Environment Variables

1. **Update `.env.example`**:
   ```bash
   NEW_VARIABLE=your-value-here
   ```

2. **Update `web/index.template.html`**:
   ```html
   <script>
     const config = {
       newVariable: "{{NEW_VARIABLE}}"
     };
   </script>
   ```

3. **Update `scripts/build-web.js`**:
   ```javascript
   const config = {
     newVariable: process.env.NEW_VARIABLE
   };
   ```

### Adding New Firebase Services

1. **Update `.env`** with new service credentials
2. **Update `web/index.template.html`** with new SDK imports
3. **Update `scripts/build-web.js`** with new variable processing

## 🐛 Troubleshooting

### "Missing required environment variables"
- Check that `.env` file exists
- Verify all required variables are set
- Run `npm run setup` to create template

### "Build failed"
- Ensure all environment variables are valid
- Check for syntax errors in `.env` file
- Verify Firebase project configuration

### "Deployment failed"
- Check Firebase CLI authentication
- Verify project ID in `.firebaserc`
- Ensure Firebase Hosting is enabled

## 📚 Best Practices

1. **Never commit `.env` files** to version control
2. **Use different credentials** for development and production
3. **Rotate credentials** regularly
4. **Monitor Firebase usage** and costs
5. **Backup environment files** securely

## 🔄 CI/CD Integration

For automated deployments, set environment variables in your CI/CD platform:

```yaml
# GitHub Actions example
env:
  FIREBASE_API_KEY: ${{ secrets.FIREBASE_API_KEY }}
  FIREBASE_AUTH_DOMAIN: ${{ secrets.FIREBASE_AUTH_DOMAIN }}
  # ... other variables
```

---

**Your Firebase credentials are now securely managed! 🔐** 