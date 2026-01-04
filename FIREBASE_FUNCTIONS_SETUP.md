# 🔥 Firebase Cloud Functions Setup for Push Notifications

## Overview
This guide will help you set up Firebase Cloud Functions to send real push notifications to all users' devices when items are posted.

## 📋 Prerequisites
- Node.js installed (version 18 or higher)
- Firebase CLI installed
- Firebase project with Blaze plan (pay-as-you-go)

## 🚀 Step 1: Install Firebase CLI

```bash
npm install -g firebase-tools
```

## 🔐 Step 2: Login to Firebase

```bash
firebase login
```

## 📁 Step 3: Initialize Firebase Functions

Navigate to your project directory:
```bash
cd "d:\Uni\Sem 7\Project\campus_hub"
```

Initialize Firebase (skip if already done):
```bash
firebase init functions
```

Select:
- Use an existing project
- Select your CampusHub project
- Choose JavaScript
- Install dependencies with npm

## 📦 Step 4: Install Dependencies

```bash
cd functions
npm install
```

## 🔄 Step 5: Update Firebase Plan

**IMPORTANT:** Cloud Functions require the Blaze (pay-as-you-go) plan.

1. Go to [Firebase Console](https://console.firebase.google.com/)
2. Select your project
3. Click on "Upgrade" (bottom left)
4. Select "Blaze Plan"
5. Add payment information

**Don't worry:** Free tier includes:
- 2 million invocations/month
- 400,000 GB-seconds/month
- 200,000 CPU-seconds/month

For a student project, you'll likely stay within free limits!

## 📤 Step 6: Deploy Functions

```bash
firebase deploy --only functions
```

Wait for deployment to complete (2-5 minutes).

## ✅ Step 7: Verify Deployment

Check in Firebase Console:
1. Go to Firebase Console > Functions
2. You should see 5 functions:
   - `sendNotificationOnCreate`
   - `sendLostItemNotification`
   - `sendFoundItemNotification`
   - `sendNoticeNotification`
   - `sendEventNotification`

## 🧪 Step 8: Test Notifications

### Test 1: Post a Lost Item
1. Open the app
2. Go to Lost & Found > Post Lost Item
3. Fill in details and submit
4. **You should receive a push notification on ALL devices!**

### Test 2: Post an Event
1. Go to Events > Add Event
2. Fill in details and submit
3. **All users should receive notification**

### Test 3: Background Notification
1. Minimize the app
2. Post something from another device
3. **You should see notification banner!**

## 🔍 Troubleshooting

### No Notifications Received?

1. **Check FCM Token:**
   ```dart
   // Add this temporarily in main.dart after NotificationService.initialize()
   FirebaseMessaging.instance.getToken().then((token) {
     print("FCM Token: $token");
   });
   ```

2. **Check Function Logs:**
   ```bash
   firebase functions:log
   ```

3. **Verify Functions are Running:**
   - Go to Firebase Console > Functions
   - Check execution count

4. **Check Firestore:**
   - Verify FCM tokens are saved in users collection
   - Check if users have `fcmToken` field

### Function Deployment Failed?

```bash
# Check Node version
node --version  # Should be 18 or higher

# Clear node modules and reinstall
cd functions
rm -rf node_modules package-lock.json
npm install

# Try deploying again
firebase deploy --only functions
```

### Permission Errors?

Make sure your Firebase project has:
- Cloud Firestore enabled
- Firebase Cloud Messaging enabled
- Admin SDK initialized

## 📊 How It Works

```
User Posts Item
    ↓
Firestore Document Created
    ↓
Cloud Function Triggered Automatically
    ↓
Function Gets All Users' FCM Tokens
    ↓
Function Sends Push Notification via FCM
    ↓
Notification Appears on ALL Devices!
```

## 💰 Cost Estimation

For a student project with ~100 users:
- ~500 notifications/day
- ~15,000 function invocations/month
- **Cost: $0** (within free tier)

Even with 1,000 users:
- ~5,000 notifications/day
- ~150,000 invocations/month
- **Cost: $0** (still within free tier!)

## 🎯 What Changed?

### Before:
- Notifications only saved to Firestore
- No real push notifications
- Only visible in app

### After:
- Real push notifications to all devices
- Sound, vibration, badge
- Works even when app is closed
- Just like WhatsApp/Instagram!

## 📱 Expected Behavior

### When Lost Item Posted:
```
Notification Title: 🔔 Lost Item Alert
Notification Body: John reported a lost Wallet at Library
Sound: ✓
Vibration: ✓
Badge: ✓
Works when app closed: ✓
```

### When Event Posted:
```
Notification Title: 🎉 New Event: CULTURAL
Notification Body: Tech Society - Annual Tech Fest
Sound: ✓
Vibration: ✓
Badge: ✓
Works when app closed: ✓
```

## 🔒 Security

Cloud Functions run server-side with admin privileges:
- Secure by default
- No client-side code can bypass
- Firebase handles security
- Firestore rules still apply

## 📚 Additional Commands

```bash
# View function logs in real-time
firebase functions:log --only sendLostItemNotification

# Delete all functions
firebase functions:delete sendNotificationOnCreate

# Deploy specific function
firebase deploy --only functions:sendLostItemNotification

# Test locally (requires emulator)
firebase emulators:start --only functions
```

## ✨ Benefits

1. **Real Push Notifications:** Just like professional apps
2. **Automatic:** No manual triggering needed
3. **Scalable:** Handles thousands of users
4. **Reliable:** Firebase infrastructure
5. **Free:** For student projects
6. **Easy:** No backend server needed

## 🎓 For Your Project Presentation

You can proudly say:
- ✅ "We implemented real-time push notifications using Firebase Cloud Functions"
- ✅ "Notifications work even when app is closed"
- ✅ "Server-side code ensures security and reliability"
- ✅ "Scalable to thousands of users"
- ✅ "No backend server required - serverless architecture"

## 🆘 Need Help?

If you encounter issues:
1. Check function logs: `firebase functions:log`
2. Verify Firestore rules allow function writes
3. Check Firebase Console for errors
4. Ensure FCM API is enabled in Google Cloud Console
5. Make sure all users have FCM tokens saved

---

**After deploying these functions, your app will send proper push notifications like any professional app!** 🚀📱
