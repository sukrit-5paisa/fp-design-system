#!/bin/bash

echo "🔐 Loading environment variables..."
if [ ! -f .env ]; then
    echo "❌ .env file not found!"
    echo "Please run: npm run setup"
    exit 1
fi

echo "🚀 Building Flutter web app with secure configuration..."
npm run build:secure

echo "📦 Deploying to Firebase Hosting..."
firebase deploy --only hosting

echo "✅ Deployment complete!"
echo "🌐 Your app is available at: https://v5paisa-login-uat-iegkps.web.app" 