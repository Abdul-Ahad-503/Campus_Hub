# 🎓 CampusHub

**Your Complete University Companion**

CampusHub is a comprehensive mobile application designed to streamline campus life for university students and staff. Built with Flutter and Firebase, it provides a centralized platform for managing lost & found items, campus events, important notices, and real-time notifications.

[![Flutter](https://img.shields.io/badge/Flutter-3.8.1-02569B?logo=flutter)](https://flutter.dev)
[![Firebase](https://img.shields.io/badge/Firebase-Enabled-FFCA28?logo=firebase)](https://firebase.google.com)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

## 📱 Features

### 🔐 Authentication
- **Email/Password Authentication** - Secure user registration and login
- **Google Sign-In** - Quick authentication with Google accounts
- **Forgot Password** - Password reset via email
- **Profile Management** - Edit personal information, student ID, department, and phone number

### 🔍 Lost & Found
- **Report Lost Items** - Post detailed descriptions with images, location, date, and contact info
- **Report Found Items** - Help others recover their belongings
- **Image Support** - Base64 encoded images for efficient storage
- **Real-time Updates** - Instant notifications when items are posted
- **Personal Dashboard** - Track your own lost and found items
- **Status Management** - Mark items as resolved or active

### 📅 Events Management
- **Browse Events** - View upcoming campus events with categorization (Cultural, Sports, Academic, Technical, Social)
- **Event Details** - Full event information with images, society details, date, and description
- **Add Events** - Create and share events with the campus community
- **Society Badges** - Visual indicators for organizing societies
- **Category Filtering** - Filter events by type using tab navigation

### 📢 Notice Board
- **Campus Notices** - Important announcements categorized by type (Exam, Holiday, Deadline, Event, General)
- **Department Filtering** - View notices specific to your department
- **Add Notices** - Post important announcements (admin/authorized users)
- **Real-time Updates** - Instant synchronization across all users
- **Time-stamped** - See when notices were posted with relative time display

### 🔔 Notifications
- **Real-time Notifications** - Instant alerts for new events, notices, and item postings
- **Type-based Icons** - Color-coded notifications (Match, Exam, Achievement, Resolved, Event)
- **Mark as Read** - Track which notifications you've viewed
- **Clear All** - Bulk delete notifications
- **Persistent Storage** - Notifications saved in Firestore

### 👤 Profile Features
- **Edit Profile** - Update name, student ID, department, and phone number
- **My Lost Items** - View and manage your lost item postings
- **My Found Items** - View and manage your found item postings
- **Help & Support** - FAQ section, contact support via email/phone
- **App Information** - Version details and about section

## 🏗️ Technical Architecture

### Frontend
- **Framework**: Flutter 3.8.1+
- **Language**: Dart
- **UI Pattern**: Material Design 3
- **State Management**: StatefulWidget with setState
- **Navigation**: Navigator 2.0 with MaterialPageRoute

### Backend
- **Authentication**: Firebase Authentication
- **Database**: Cloud Firestore (NoSQL)
- **Storage**: Base64 image encoding (no Firebase Storage)
- **Real-time**: StreamBuilder for live data updates

### Dependencies
```yaml
dependencies:
  flutter_sdk: ">=3.8.1"
  firebase_core: ^3.15.2          # Firebase initialization
  firebase_auth: ^5.7.0           # User authentication
  cloud_firestore: ^5.5.0         # NoSQL database
  google_sign_in: ^6.2.2          # Google authentication
  image_picker: ^1.0.7            # Image selection
  intl: ^0.18.1                   # Date formatting
  url_launcher: ^6.2.5            # Email/Phone links
  shared_preferences: ^2.2.2      # Local storage
  flutter_svg: ^2.0.10+1          # SVG support
  cupertino_icons: ^1.0.8         # iOS icons
```

## 🗄️ Database Structure

### Firestore Collections

#### `users`
```javascript
{
  uid: string,
  email: string,
  fullName: string,
  studentId: string,
  department: string,
  phoneNumber: string,
  createdAt: timestamp,
  profileComplete: boolean
}
```

#### `lost_items`
```javascript
{
  title: string,
  description: string,
  location: string,
  dateLost: timestamp,
  estimatedTime: string,
  contactNumber: string,
  imageUrl: string (base64),
  userId: string,
  userName: string,
  userEmail: string,
  createdAt: timestamp,
  status: string ('active' | 'resolved')
}
```

#### `found_items`
```javascript
{
  title: string,
  description: string,
  location: string,
  dateFound: timestamp,
  estimatedTime: string,
  contactNumber: string,
  imageUrl: string (base64),
  userId: string,
  userName: string,
  userEmail: string,
  createdAt: timestamp,
  status: string ('active' | 'resolved')
}
```

#### `events`
```javascript
{
  category: string ('CULTURAL' | 'SPORTS' | 'ACADEMIC' | 'TECHNICAL' | 'SOCIAL'),
  title: string,
  description: string,
  society: string,
  date: string,
  eventDate: timestamp,
  imageUrl: string (base64, optional),
  userId: string,
  userName: string,
  userEmail: string,
  createdAt: timestamp,
  status: string
}
```

#### `notices`
```javascript
{
  category: string ('EXAM' | 'HOLIDAY' | 'DEADLINE' | 'EVENT' | 'GENERAL'),
  title: string,
  description: string,
  date: string,
  timestamp: timestamp,
  department: string ('All' | specific department),
  userId: string,
  userName: string,
  userEmail: string,
  createdAt: timestamp,
  status: string
}
```

#### `notifications`
```javascript
{
  userId: string,
  title: string,
  description: string,
  type: string ('match' | 'exam' | 'achievement' | 'resolved' | 'event'),
  isRead: boolean,
  createdAt: timestamp,
  relatedId: string (reference to related document)
}
```

## 🎨 Design System

### Color Palette
- **Primary**: `#1E88E5` (Blue) - Main brand color
- **Secondary**: `#26A69A` (Teal) - Accent color
- **Lost Items**: `#E53935` (Red) - Alert/attention
- **Found Items**: `#43A047` (Green) - Success/resolution
- **Events/Notices**: `#FB8C00` (Orange) - Information
- **Background**: `#FFFFFF` (White)
- **Surface**: `#F5F5F5` (Light Gray)
- **Text Primary**: `#212121` (Dark)
- **Text Secondary**: `#757575` (Gray)

### Typography
- **Headings**: Poppins Bold/SemiBold
- **Body**: Roboto Regular
- **Style**: Modern, clean, readable

### UI Components
- **Border Radius**: 12-16px for cards and buttons
- **Shadows**: Soft elevation with blur radius 10-20
- **Grid System**: 8px base unit
- **Margins**: 16px standard spacing
- **Cards**: Elevated with rounded corners
- **Buttons**: Gradient backgrounds for primary actions
- **Navigation**: Bottom navigation bar with 5 items

## 📂 Project Structure

```
lib/
├── main.dart                          # App entry point
├── firebase_options.dart              # Firebase configuration
│
├── auth/                              # Authentication
│   ├── auth_service.dart             # Firebase Auth logic
│   ├── login_screen.dart             # Login UI
│   ├── register_screen.dart          # Registration UI
│   └── forgot_password_screen.dart   # Password reset UI
│
├── screens/                           # Main screens
│   ├── main_navigation.dart          # Bottom navigation
│   ├── home_screen.dart              # Dashboard
│   ├── lost_and_found_screen.dart    # Lost & Found tabs
│   ├── item_detail_screen.dart       # Item details view
│   ├── post_lost_item_screen.dart    # Report lost item
│   ├── post_found_item_screen.dart   # Report found item
│   ├── events_screen.dart            # Events list
│   ├── event_detail_screen.dart      # Event details view
│   ├── add_event_screen.dart         # Create event
│   ├── notice_screen.dart            # Notice board
│   ├── add_notice_screen.dart        # Create notice
│   ├── notification_screen.dart      # Notifications
│   ├── profile_screen.dart           # User profile
│   │
│   └── profile/                       # Profile sub-screens
│       ├── edit_profile_screen.dart  # Edit user info
│       ├── my_lost_items_screen.dart # User's lost items
│       ├── my_found_items_screen.dart# User's found items
│       └── help_support_screen.dart  # FAQ & support
│
├── splashScreen/                      # Onboarding
│   ├── splash_screen.dart            # App splash
│   └── onboarding_screen.dart        # Feature introduction
│
└── utils/                             # Utilities
    └── notification_service.dart     # Notification helpers
```

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (3.8.1 or higher)
- Dart SDK (included with Flutter)
- Android Studio / Xcode (for mobile development)
- Firebase account
- Git

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/Abdul-Ahad-503/Campus_Hub.git
   cd campus_hub
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Firebase Setup**
   - Create a new Firebase project at [Firebase Console](https://console.firebase.google.com/)
   - Add Android and iOS apps to your Firebase project
   - Download `google-services.json` (Android) and `GoogleService-Info.plist` (iOS)
   - Place them in their respective directories:
     - Android: `android/app/google-services.json`
     - iOS: `ios/Runner/GoogleService-Info.plist`
   - Enable Authentication methods (Email/Password, Google)
   - Create Firestore database (start in test mode)

4. **Configure Firebase**
   ```bash
   flutter pub global activate flutterfire_cli
   flutterfire configure
   ```

5. **Run the app**
   ```bash
   flutter run
   ```

### Firebase Security Rules

Add these security rules to your Firestore:

```javascript
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    
    // Users collection
    match /users/{userId} {
      allow read: if request.auth != null;
      allow write: if request.auth != null && request.auth.uid == userId;
    }
    
    // Lost items collection
    match /lost_items/{itemId} {
      allow read: if request.auth != null;
      allow create: if request.auth != null;
      allow update, delete: if request.auth != null && 
                             request.auth.uid == resource.data.userId;
    }
    
    // Found items collection
    match /found_items/{itemId} {
      allow read: if request.auth != null;
      allow create: if request.auth != null;
      allow update, delete: if request.auth != null && 
                             request.auth.uid == resource.data.userId;
    }
    
    // Events collection
    match /events/{eventId} {
      allow read: if request.auth != null;
      allow create: if request.auth != null;
      allow update, delete: if request.auth != null && 
                             request.auth.uid == resource.data.userId;
    }
    
    // Notices collection
    match /notices/{noticeId} {
      allow read: if request.auth != null;
      allow create: if request.auth != null;
      allow update, delete: if request.auth != null && 
                             request.auth.uid == resource.data.userId;
    }
    
    // Notifications collection
    match /notifications/{notificationId} {
      allow read: if request.auth != null && 
                     request.auth.uid == resource.data.userId;
      allow write: if request.auth != null;
    }
  }
}
```

## 📱 Screenshots

### Authentication Flow
- Splash Screen with animated logo
- Onboarding screens with feature highlights
- Login with email/password or Google
- Registration with student information
- Password reset functionality

### Main Features
- **Home Dashboard**: Quick access cards for all features
- **Lost & Found**: Tabbed interface with card-based listings
- **Events**: Category tabs with society badges
- **Notices**: Categorized announcements with filters
- **Notifications**: Real-time alerts with type indicators
- **Profile**: User info and personal item management

## 🔧 Configuration

### Custom App Icon
The app uses `flutter_launcher_icons` for custom app icons:
```bash
flutter pub run flutter_launcher_icons
```

### Environment Variables
Create a `.env` file (if needed for future API keys):
```
FIREBASE_API_KEY=your_api_key
FIREBASE_PROJECT_ID=your_project_id
```

## 🧪 Testing

### Run Tests
```bash
flutter test
```

### Build for Production

**Android APK**
```bash
flutter build apk --release
```

**iOS IPA**
```bash
flutter build ios --release
```

## 📊 Performance Optimization

- **Image Handling**: Base64 encoding for efficient storage without Firebase Storage costs
- **Real-time Updates**: StreamBuilder for automatic UI updates
- **Client-side Sorting**: Avoiding composite Firestore indexes
- **Batch Operations**: Efficient bulk writes for notifications
- **Lazy Loading**: Pagination ready architecture

## 🛣️ Roadmap

### Planned Features
- [ ] Push notifications (FCM integration)
- [ ] In-app messaging between users
- [ ] Advanced search and filtering
- [ ] Matching algorithm for lost & found items
- [ ] Event RSVP and attendance tracking
- [ ] Notice read receipts
- [ ] Dark mode support
- [ ] Multi-language support
- [ ] Export data functionality
- [ ] Analytics dashboard for admins

## 🤝 Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

### Code Style
- Follow [Effective Dart](https://dart.dev/guides/language/effective-dart) guidelines
- Use meaningful variable and function names
- Add comments for complex logic
- Format code with `flutter format .`

## 🐛 Known Issues

- Base64 images may increase app memory usage for large images
- Batch notifications to all users may take time with large user base
- Real-time listeners remain active when app is backgrounded

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👥 Authors

- **Your Name** - *Initial work* - [YourGitHub](https://github.com/yourusername)

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- Firebase for backend services
- Material Design for UI/UX guidelines
- University community for feature requirements

## 📞 Support

For support, email support@campushub.com or join our Slack channel.

## 📚 Additional Documentation

- [Firebase Setup Guide](docs/FIREBASE_SETUP.md)
- [Design System](DESIGN_CONFIG.md)
- [API Documentation](docs/API.md)
- [Deployment Guide](docs/DEPLOYMENT.md)

---

**Made with ❤️ for university students**
