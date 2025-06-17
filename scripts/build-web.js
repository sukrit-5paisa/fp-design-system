const fs = require('fs');
const path = require('path');
require('dotenv').config();

// Read the environment variables
const firebaseConfig = {
  apiKey: process.env.FIREBASE_API_KEY,
  authDomain: process.env.FIREBASE_AUTH_DOMAIN,
  databaseURL: process.env.FIREBASE_DATABASE_URL,
  projectId: process.env.FIREBASE_PROJECT_ID,
  storageBucket: process.env.FIREBASE_STORAGE_BUCKET,
  messagingSenderId: process.env.FIREBASE_MESSAGING_SENDER_ID,
  appId: process.env.FIREBASE_APP_ID,
  measurementId: process.env.FIREBASE_MEASUREMENT_ID
};

// Validate that all required environment variables are present
const requiredVars = [
  'FIREBASE_API_KEY',
  'FIREBASE_AUTH_DOMAIN',
  'FIREBASE_PROJECT_ID',
  'FIREBASE_STORAGE_BUCKET',
  'FIREBASE_MESSAGING_SENDER_ID',
  'FIREBASE_APP_ID'
];

const missingVars = requiredVars.filter(varName => !process.env[varName]);

if (missingVars.length > 0) {
  console.error('❌ Missing required environment variables:', missingVars);
  console.error('Please add these secrets to your GitHub repository:');
  console.error('Go to: Settings → Secrets and variables → Actions');
  console.error('Add the following secrets:');
  missingVars.forEach(varName => {
    console.error(`  - ${varName}`);
  });
  process.exit(1);
}

console.log('✅ Environment variables loaded successfully');

// Read the original index.html template
const templatePath = path.join(__dirname, '../web/index.template.html');
const outputPath = path.join(__dirname, '../web/index.html');

// Create the index.html template if it doesn't exist
if (!fs.existsSync(templatePath)) {
  const templateContent = `<!DOCTYPE html>
<html>
<head>
  <base href="$FLUTTER_BASE_HREF">

  <meta charset="UTF-8">
  <meta content="IE=Edge" http-equiv="X-UA-Compatible">
  <meta name="description" content="FP Design System - A comprehensive design system for FP applications">

  <!-- iOS meta tags & icons -->
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-bar-style" content="black">
  <meta name="apple-mobile-web-app-title" content="FP Design System">
  <link rel="apple-touch-icon" href="icons/Icon-192.png">

  <!-- Favicon -->
  <link rel="icon" type="image/x-icon" href="favicon.ico"/>
  <link rel="icon" type="image/png" href="favicon.png"/>
  <link rel="icon" type="image/png" sizes="192x192" href="icons/Icon-192.png"/>
  <link rel="icon" type="image/png" sizes="512x512" href="icons/Icon-512.png"/>
  <link rel="apple-touch-icon" href="icons/Icon-192.png"/>

  <title>FP Design System</title>
  <link rel="manifest" href="manifest.json">

  <!-- Firebase SDK -->
  <script type="module">
    // Import the functions you need from the SDKs you need
    import { initializeApp } from "https://www.gstatic.com/firebasejs/10.7.0/firebase-app.js";
    import { getAnalytics } from "https://www.gstatic.com/firebasejs/10.7.0/firebase-analytics.js";
    // TODO: Add SDKs for Firebase products that you want to use
    // https://firebase.google.com/docs/web/setup#available-libraries

    // Your web app's Firebase configuration
    // For Firebase JS SDK v7.20.0 and later, measurementId is optional
    const firebaseConfig = {
      apiKey: "{{FIREBASE_API_KEY}}",
      authDomain: "{{FIREBASE_AUTH_DOMAIN}}",
      databaseURL: "{{FIREBASE_DATABASE_URL}}",
      projectId: "{{FIREBASE_PROJECT_ID}}",
      storageBucket: "{{FIREBASE_STORAGE_BUCKET}}",
      messagingSenderId: "{{FIREBASE_MESSAGING_SENDER_ID}}",
      appId: "{{FIREBASE_APP_ID}}",
      measurementId: "{{FIREBASE_MEASUREMENT_ID}}"
    };

    // Initialize Firebase
    const app = initializeApp(firebaseConfig);
    const analytics = getAnalytics(app);
  </script>

  <script>
    // The value below is injected by flutter build, do not touch.
    var serviceWorkerVersion = null;
  </script>
  <!-- This script adds the flutter initialization JS code -->
  <script src="flutter.js" defer></script>
</head>
<body>
  <script>
    window.addEventListener('load', function(ev) {
      // Download main.dart.js
      _flutter.loader.loadEntrypoint({
        serviceWorker: {
          serviceWorkerVersion: serviceWorkerVersion,
        },
        onEntrypointLoaded: function(engineInitializer) {
          engineInitializer.initializeEngine().then(function(appRunner) {
            appRunner.runApp();
          });
        }
      });
    });
  </script>
</body>
</html>`;

  fs.writeFileSync(templatePath, templateContent);
  console.log('📝 Created index.template.html');
}

// Read the template
let templateContent = fs.readFileSync(templatePath, 'utf8');

// Replace placeholders with actual values
Object.keys(firebaseConfig).forEach(key => {
  // Special mapping for keys that don't follow the camelCase pattern
  const keyMapping = {
    'apiKey': 'API_KEY',
    'authDomain': 'AUTH_DOMAIN',
    'databaseURL': 'DATABASE_URL',
    'projectId': 'PROJECT_ID',
    'storageBucket': 'STORAGE_BUCKET',
    'messagingSenderId': 'MESSAGING_SENDER_ID',
    'appId': 'APP_ID',
    'measurementId': 'MEASUREMENT_ID'
  };
  
  const upperKey = keyMapping[key] || key.replace(/([A-Z])/g, '_$1').toUpperCase();
  const placeholder = `{{FIREBASE_${upperKey}}}`;
  const value = firebaseConfig[key];
  if (value) {
    templateContent = templateContent.replace(new RegExp(placeholder, 'g'), value);
  }
});

// Write the processed index.html
fs.writeFileSync(outputPath, templateContent);
console.log('✅ Generated index.html with environment variables'); 