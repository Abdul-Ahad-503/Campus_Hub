# 🔔 Firebase Cloud Messaging (FCM) Setup Guide

## Overview
This guide will help you set up Firebase Cloud Messaging for push notifications in the CampusHub app.

## ✅ What's Already Implemented

- ✅ Firebase Messaging dependency added
- ✅ Flutter Local Notifications dependency added
- ✅ NotificationService class created
- ✅ FCM token management
- ✅ Foreground & background notification handling
- ✅ Notification tap handling
- ✅ All post screens integrated with notification service

## 📱 Android Setup

### Step 1: Update AndroidManifest.xml

Add these permissions and services to `android/app/src/main/AndroidManifest.xml`:

```xml
<manifest xmlns:android="http://schemas.android.com/apk/res/android">
    
    <!-- Add these permissions -->
    <uses-permission android:name="android.permission.INTERNET"/>
    <uses-permission android:name="android.permission.POST_NOTIFICATIONS"/>
    <uses-permission android:name="android.permission.VIBRATE" />
    <uses-permission android:name="android.permission.RECEIVE_BOOT_COMPLETED"/>
    
    <application
        android:label="campus_hub"
        android:name="${applicationName}"
        android:icon="@mipmap/ic_launcher">
        
        <!-- Add this inside <application> tag -->
        
        <!-- FCM Service -->
        <service
            android:name="com.google.firebase.messaging.FirebaseMessagingService"
            android:exported="false">
            <intent-filter>
                <action android:name="com.google.firebase.MESSAGING_EVENT" />
            </intent-filter>
        </service>
        
        <!-- Notification Channel -->
        <meta-data
            android:name="com.google.firebase.messaging.default_notification_channel_id"
            android:value="campus_hub_channel" />
            
        <!-- Notification Icon -->
        <meta-data
            android:name="com.google.firebase.messaging.default_notification_icon"
            android:resource="@mipmap/ic_launcher" />
            
        <!-- Notification Color -->
        <meta-data
            android:name="com.google.firebase.messaging.default_notification_color"
            android:resource="@color/notification_color" />
        
        <!-- Your existing activity -->
        <activity
            android:name=".MainActivity"
            ...>
        </activity>
    </application>
</manifest>
```

### Step 2: Update build.gradle (Project Level)

File: `android/build.gradle.kts`

```kotlin
buildscript {
    repositories {
        google()
        mavenCentral()
    }
    dependencies {
        classpath("com.android.tools.build:gradle:8.1.0")
        classpath("org.jetbrains.kotlin:kotlin-gradle-plugin:1.9.0")
        classpath("com.google.gms:google-services:4.4.0")  // Add this
    }
}
```

### Step 3: Update build.gradle (App Level)

File: `android/app/build.gradle.kts`

Add at the bottom:
```kotlin
apply(plugin = "com.google.gms.google-services")
```

### Step 4: Add Colors Resource

Create file: `android/app/src/main/res/values/colors.xml`

```xml
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <color name="notification_color">#1E88E5</color>
</resources>
```

## 🍎 iOS Setup

### Step 1: Enable Push Notifications Capability

1. Open `ios/Runner.xcworkspace` in Xcode
2. Select the Runner project
3. Go to "Signing & Capabilities" tab
4. Click "+ Capability"
5. Add "Push Notifications"
6. Add "Background Modes" and check:
   - Remote notifications
   - Background fetch

### Step 2: Request APNs Certificate

1. Go to [Apple Developer Portal](https://developer.apple.com/)
2. Go to Certificates, Identifiers & Profiles
3. Create an APNs Certificate for your app's Bundle ID
4. Download the certificate

### Step 3: Upload APNs Certificate to Firebase

1. Go to [Firebase Console](https://console.firebase.google.com/)
2. Select your project
3. Go to Project Settings > Cloud Messaging
4. Under iOS app configuration, upload the APNs certificate

### Step 4: Update Info.plist

Add to `ios/Runner/Info.plist`:

```xml
<key>UIBackgroundModes</key>
<array>
    <string>remote-notification</string>
    <string>fetch</string>
</array>
```

## 🔥 Firebase Console Configuration

### Step 1: Enable Cloud Messaging API

1. Go to [Google Cloud Console](https://console.cloud.google.com/)
2. Select your Firebase project
3. Go to "APIs & Services" > "Library"
4. Search for "Firebase Cloud Messaging API"
5. Enable the API

### Step 2: Update Firestore Security Rules

Add FCM token field to user document rules:

```javascript
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    
    match /users/{userId} {
      allow read: if request.auth != null;
      allow write: if request.auth != null && request.auth.uid == userId;
      allow update: if request.auth != null && request.auth.uid == userId &&
                       request.resource.data.diff(resource.data).affectedKeys()
                       .hasOnly(['fcmToken', 'lastLogin', 'fullName', 'studentId', 
                                'department', 'phoneNumber']);
    }
    
    // ... other rules ...
  }
}
```

## 🧪 Testing Notifications

### Test 1: Foreground Notification

1. Open the app
2. Post a lost item / found item / notice / event
3. You should see a notification appear on your device
4. The notification should also appear in the notification screen

### Test 2: Background Notification

1. Minimize the app (don't close it)
2. Post something from another device/account
3. You should receive a push notification
4. Tap the notification to open the app

### Test 3: App Closed Notification

1. Close the app completely
2. Post something from another device/account
3. You should receive a push notification
4. Tap it to launch the app

### Manual Test via Firebase Console

1. Go to Firebase Console > Cloud Messaging
2. Click "Send your first message"
3. Enter notification title and text
4. Click "Send test message"
5. Enter your FCM token (check debug logs for token)
6. Send and verify

## 📝 How Notifications Work

### When User Posts Something:

1. **Lost Item Posted**
   ```
   Title: 🔔 Lost Item Alert
   Body: John reported a lost Wallet at Library
   Type: match
   ```

2. **Found Item Posted**
   ```
   Title: ✅ Found Item Posted
   Body: Sarah found a Phone at Cafeteria
   Type: resolved
   ```

3. **Notice Posted**
   ```
   Title: 📌 New Notice: EXAM
   Body: Mid-term Examination Schedule
   Type: exam
   ```

4. **Event Posted**
   ```
   Title: 🎉 New Event: CULTURAL
   Body: Tech Society - Annual Tech Fest
   Type: event
   ```

### Notification Flow:

```
User Posts Item
    ↓
Item Saved to Firestore
    ↓
NotificationService.sendToAllUsers()
    ↓
Creates notification documents for all users
    ↓
Firebase automatically sends push notifications
    ↓
Users receive notifications on their devices
    ↓
Tap notification → Navigate to relevant screen
```

## 🔍 Debugging

### Check FCM Token

Add this to check if token is generated:

```dart
// In main.dart after NotificationService.initialize()
FirebaseMessaging.instance.getToken().then((token) {
  print("FCM Token: $token");
});
```

### Enable Debug Logging

**Android:**
```bash
adb shell setprop log.tag.FirebaseMessaging VERBOSE
adb logcat -s FirebaseMessaging
```

**iOS:**
In Xcode, add `-FIRDebugEnabled` to your scheme's arguments

### Common Issues

1. **No notifications received:**
   - Check if FCM token is saved in Firestore
   - Verify google-services.json is in correct location
   - Check Firebase Console for API enablement
   - Verify app is registered in Firebase project

2. **Notifications work in foreground but not background:**
   - Check AndroidManifest.xml service configuration
   - Verify background handler is registered
   - Check battery optimization settings on device

3. **iOS notifications not working:**
   - Verify APNs certificate is uploaded to Firebase
   - Check provisioning profile includes Push Notifications
   - Test on physical device (not simulator)

## 📊 Monitoring

### Firebase Console

Monitor notification delivery:
1. Go to Firebase Console > Cloud Messaging
2. View delivery reports
3. Check success/failure rates

### Firestore Notifications Collection

Query notifications:
```javascript
// Count unread notifications
notifications
  .where('userId', '==', currentUserId)
  .where('isRead', '==', false)
  .count()
```

## 🚀 Production Checklist

- [ ] FCM API enabled in Google Cloud Console
- [ ] google-services.json updated with production config
- [ ] APNs certificate uploaded (iOS)
- [ ] AndroidManifest.xml configured
- [ ] Firestore security rules updated
- [ ] Notifications tested in all states (foreground/background/closed)
- [ ] Battery optimization disabled for app (Android)
- [ ] Push notification permission requested and granted
- [ ] FCM tokens being saved to Firestore
- [ ] Notification icons and colors configured

## 📚 Additional Resources

- [Firebase Cloud Messaging Documentation](https://firebase.google.com/docs/cloud-messaging)
- [Flutter Firebase Messaging Package](https://pub.dev/packages/firebase_messaging)
- [Flutter Local Notifications Package](https://pub.dev/packages/flutter_local_notifications)
- [Android Notification Channels](https://developer.android.com/develop/ui/views/notifications/channels)
- [iOS Push Notifications](https://developer.apple.com/documentation/usernotifications)

---

**Note:** This setup enables proper push notifications like you see in other professional apps. Users will receive notifications even when the app is closed!
