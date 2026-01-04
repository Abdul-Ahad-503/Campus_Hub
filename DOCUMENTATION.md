# CampusHub - Complete Project Documentation

---

## Project Information

### Project Title
**CampusHub: Integrated Campus Management Mobile Application**

A comprehensive Flutter-based mobile application designed to streamline campus communication, facilitate lost & found item recovery, manage campus events, and disseminate important notices to the university community.

---

### Developer Details

**Project Lead & Developer**
- **Name:** Abdul Ahad , Abdullah Tahir
- **Student ID:** 1134 , 1138
- **Department:** Computer Science
- **University:** National Textile University
- **Email:** abdulahad503456@gmail.com
- **Project Duration:** September 2025 - January 2026
- **Academic Session:** Semester 7, 2025-2026

**Project Supervisor**
- **Name:** Sir Rehan Sarwar
- **Department:** Computer Science

---

### Problem Statement

University campuses face significant challenges in managing day-to-day communication and coordination among students, faculty, and administration. Key problems identified include:

1. **Lost & Found Item Management**
   - Students frequently lose personal belongings (phones, wallets, ID cards, books) on campus
   - No centralized system to report or track lost items
   - Found items often go unclaimed due to lack of communication channels
   - Manual notice boards are inefficient and have limited reach
   - Time-consuming process to reconnect lost items with owners

2. **Event Information Dissemination**
   - Campus events organized by various societies lack unified promotion platform
   - Students miss important events due to scattered information sources
   - Difficulty in tracking multiple events across different categories
   - No standardized format for event announcements
   - Limited reach of traditional posters and word-of-mouth communication

3. **Notice Board System**
   - Important academic notices (exams, holidays, deadlines) rely on physical notice boards
   - Students must physically visit multiple departments to check updates
   - Critical information often missed due to inconvenient access
   - No filtering mechanism for department-specific or category-specific notices
   - Delayed information propagation across campus

4. **Communication Gaps**
   - Lack of real-time notification system for urgent updates
   - No direct communication channel between item finders and losers
   - Inefficient coordination between administration and students
   - Multiple disconnected communication platforms create confusion

5. **Accessibility Issues**
   - Physical notice boards not accessible 24/7
   - Traditional methods exclude remote or part-time students
   - No digital archive of past notices or announcements
   - Language and visibility barriers in physical notices

**Impact of These Problems:**
- Permanent loss of valuable personal items
- Poor attendance at campus events
- Students missing critical academic deadlines
- Reduced campus engagement and community building
- Administrative inefficiency in information distribution
- Frustration and stress among students and staff

---

### Project Objectives

The primary objectives of the CampusHub application are:

#### Primary Objectives:
1. **Centralized Lost & Found System**
   - Provide a digital platform to report lost and found items
   - Enable image upload for visual identification
   - Implement category-based organization for easy searching
   - Create notification system for potential matches
   - Facilitate direct communication between finders and owners

2. **Event Management Platform**
   - Offer unified platform for all campus events
   - Enable society administrators to create and promote events
   - Provide category-based event filtering (Cultural, Sports, Academic, Technical, Social)
   - Display comprehensive event details (date, time, location, description)
   - Increase student participation in campus activities

3. **Digital Notice Board**
   - Replace traditional physical notice boards with digital alternative
   - Implement real-time notice distribution system
   - Provide department-specific and category-specific filtering
   - Enable quick access to important announcements anytime, anywhere
   - Maintain searchable archive of all notices

4. **Real-Time Notification System**
   - Implement push notifications for important updates
   - Send timely alerts for exam schedules, holidays, and deadlines
   - Notify users of potential lost item matches
   - Alert users about relevant events based on interests
   - Provide notification management and preferences

5. **User Profile Management**
   - Enable personalized user profiles with student/staff information
   - Track user's posted items and event participation
   - Provide dark mode for enhanced user experience
   - Include help and support section for user assistance

#### Secondary Objectives:
- Reduce item loss incidents through quick recovery
- Improve campus community engagement
- Enhance communication efficiency between administration and students
- Create sustainable digital solution reducing paper waste
- Build scalable platform for future feature additions
- Ensure data security and user privacy
- Provide intuitive, user-friendly interface
- Support cross-platform functionality (Android & iOS)

---

### Scope of the Project

#### In Scope:

**Functional Features:**
1. User authentication (Email/Password, Google Sign-In)
2. Lost item reporting with images and details
3. Found item reporting with images and details
4. Event creation and management
5. Notice board with filtering options
6. Push notification system
7. User profile management
8. Dark mode theme support
9. Category-based organization for all modules
10. Real-time data synchronization
11. Search and filter capabilities
12. Image upload with Base64 encoding

**Technical Scope:**
- Mobile application for Android and iOS platforms
- Firebase backend (Authentication, Firestore, Cloud Messaging)
- Flutter framework for cross-platform development
- Material Design 3 UI/UX principles
- Provider state management
- Real-time database updates
- Secure authentication and authorization
- Local data persistence (theme preferences)

**User Scope:**
- University students (primary users)
- Faculty members
- Administrative staff
- Campus security personnel
- Event organizers and society members

#### Out of Scope:

**Features Not Included:**
1. Direct messaging/chat system (planned for future)
2. Marketplace for buying/selling items
3. Academic features (timetable, assignment tracking)
4. Video streaming capabilities
5. Payment integration
6. Location tracking/GPS features
7. Web application version
8. Multi-campus support (current version single campus)
9. Administrative dashboard (backend management)
10. Content moderation system
11. Blockchain verification
12. AI-powered recommendations

**Technical Limitations:**
- No offline mode (requires internet connection)
- No video content support
- Limited to mobile platforms only (no desktop version)
- No integration with existing university management systems
- No advanced analytics dashboard

---

### Methodology

#### Development Approach:
**Agile Development Methodology** with iterative development cycles

#### Development Phases:

**Phase 1: Planning & Analysis (2 weeks)**
- Problem identification and requirement gathering
- User research and competitor analysis
- Technology stack selection
- Database schema design
- UI/UX wireframing and prototyping
- Project timeline creation

**Phase 2: Design (2 weeks)**
- High-fidelity UI design
- Design system creation (colors, typography, components)
- User flow diagrams
- Database architecture finalization
- Firebase project setup
- Material Design 3 implementation planning

**Phase 3: Development - Core Features (4 weeks)**
- Firebase integration (Authentication, Firestore)
- User authentication implementation (Email/Password, Google Sign-In)
- Database structure setup
- Home screen and navigation implementation
- Profile management module
- Theme system (Light/Dark mode) development

**Phase 4: Development - Main Features (4 weeks)**
- Lost & Found module implementation
  - Post lost item screen
  - Post found item screen
  - Item listing and detail views
  - Image upload functionality
- Events module implementation
  - Event creation screen
  - Event listing with categories
  - Event detail view
- Notice Board module implementation
  - Notice creation screen
  - Notice listing with filters
  - Notice detail view

**Phase 5: Development - Advanced Features (2 weeks)**
- Firebase Cloud Messaging integration
- Push notification system
- Notification management screen
- Real-time data synchronization
- Search and filter implementations
- My Items management screens

**Phase 6: Testing & Refinement (2 weeks)**
- Unit testing
- Integration testing
- UI/UX testing
- Performance optimization
- Bug fixes and refinements
- Dark mode consistency checks
- Cross-device testing (Android/iOS)

**Phase 7: Documentation & Deployment (1 week)**
- Code documentation
- User manual creation
- API documentation
- Deployment preparation
- Final testing
- Project report compilation

#### Tools & Technologies:

**Development Tools:**
- Visual Studio Code / Android Studio (IDE)
- Flutter SDK 3.8.1+
- Dart 3.8.1+
- Git (Version Control)
- Firebase Console
- Android Emulator / iOS Simulator
- Figma (UI/UX Design)

**Backend Services:**
- Firebase Authentication
- Cloud Firestore
- Firebase Cloud Messaging
- Firebase Hosting (future)

**Libraries & Packages:**
- provider (State Management)
- image_picker (Image Selection)
- shared_preferences (Local Storage)
- intl (Date/Time Formatting)
- url_launcher (External Links)
- flutter_local_notifications (Local Notifications)
- google_sign_in (Google Authentication)

**Testing Tools:**
- Flutter Test Framework
- Firebase Test Lab
- Manual Testing on Real Devices

#### Quality Assurance:
- Code reviews and refactoring
- Continuous testing throughout development
- Performance monitoring
- Security best practices implementation
- User feedback incorporation
- Regular supervisor consultations

---

## Table of Contents
1. [Project Overview](#project-overview)
2. [System Architecture](#system-architecture)
3. [Technology Stack](#technology-stack)
4. [Features & Modules](#features--modules)
5. [Database Schema](#database-schema)
6. [User Interface Design](#user-interface-design)
7. [Installation & Setup](#installation--setup)
8. [Configuration](#configuration)
9. [App Structure](#app-structure)
10. [Key Functionalities](#key-functionalities)
11. [Security & Authentication](#security--authentication)
12. [Dark Mode Implementation](#dark-mode-implementation)
13. [Firebase Integration](#firebase-integration)
14. [Testing Guidelines](#testing-guidelines)
15. [Deployment](#deployment)
16. [Future Enhancements](#future-enhancements)
17. [Troubleshooting](#troubleshooting)
18. [Contributors](#contributors)

---

## Project Overview

### Introduction
**CampusHub** is a comprehensive mobile application designed to streamline campus life for university students and staff. It serves as a centralized platform for managing lost & found items, campus events, important notices, and real-time notifications. Built with Flutter and Firebase, the application provides a seamless cross-platform experience on both Android and iOS devices.

### Project Vision
To create a unified digital ecosystem that enhances campus communication, reduces item loss incidents, promotes event participation, and ensures timely dissemination of important information across the university community.

### Target Users
- University Students
- Faculty Members
- Administrative Staff
- Campus Security Personnel
- Event Organizers
- Society Members

### Version Information
- **Version:** 1.0.0
- **Build Number:** 1
- **SDK Version:** ^3.8.1
- **Flutter Version:** 3.8.1+
- **Last Updated:** January 2026

---

## System Architecture

### Architecture Pattern
CampusHub follows a **client-server architecture** with the following components:

```
┌─────────────────────────────────────────────────────────┐
│                    CLIENT LAYER                          │
│  ┌──────────────────────────────────────────────────┐  │
│  │         Flutter Mobile Application                │  │
│  │  ┌────────────┐  ┌────────────┐  ┌──────────┐  │  │
│  │  │ Presentation│  │  Business  │  │   Data   │  │  │
│  │  │    Layer    │  │   Logic    │  │  Layer   │  │  │
│  │  └────────────┘  └────────────┘  └──────────┘  │  │
│  └──────────────────────────────────────────────────┘  │
└─────────────────────────────────────────────────────────┘
                         ↕
┌─────────────────────────────────────────────────────────┐
│                  BACKEND LAYER                           │
│  ┌──────────────────────────────────────────────────┐  │
│  │            Firebase Services                      │  │
│  │  ┌──────────┐  ┌──────────┐  ┌──────────────┐  │  │
│  │  │   Auth   │  │ Firestore│  │  Cloud       │  │  │
│  │  │          │  │ Database │  │  Messaging   │  │  │
│  │  └──────────┘  └──────────┘  └──────────────┘  │  │
│  └──────────────────────────────────────────────────┘  │
└─────────────────────────────────────────────────────────┘
```

### Design Patterns Used
1. **Provider Pattern** - State management
2. **Repository Pattern** - Data access abstraction
3. **Singleton Pattern** - Service instances (AuthService)
4. **Factory Pattern** - Widget creation
5. **Observer Pattern** - Real-time data updates via Firebase streams

### Layer Architecture

#### 1. Presentation Layer
- **Screens**: UI components and views
- **Widgets**: Reusable UI elements
- **Theme**: Dark/Light mode configurations

#### 2. Business Logic Layer
- **Providers**: State management (ThemeProvider)
- **Services**: Business operations (AuthService, NotificationService)
- **Validators**: Input validation logic

#### 3. Data Layer
- **Firebase Integration**: Database operations
- **Local Storage**: SharedPreferences for theme persistence
- **Models**: Data structures and entities

---

## Technology Stack

### Frontend
| Technology | Version | Purpose |
|------------|---------|---------|
| Flutter | 3.8.1+ | Cross-platform mobile framework |
| Dart | ^3.8.1 | Programming language |
| Material Design 3 | Latest | UI design system |
| Provider | ^6.1.1 | State management |

### Backend Services
| Service | Purpose |
|---------|---------|
| Firebase Authentication | User authentication & authorization |
| Cloud Firestore | NoSQL real-time database |
| Firebase Cloud Messaging | Push notifications |
| Firebase Storage | (Prepared for future use) |

### Key Dependencies
```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.8
  flutter_svg: ^2.0.10+1
  firebase_core: ^3.15.2
  firebase_auth: ^5.7.0
  cloud_firestore: ^5.5.0
  firebase_messaging: ^15.1.5
  flutter_local_notifications: ^18.0.1
  google_sign_in: ^6.2.2
  shared_preferences: ^2.2.2
  provider: ^6.1.1
  image_picker: ^1.0.7
  intl: ^0.18.1
  url_launcher: ^6.2.5
```

### Development Tools
- **IDE**: Visual Studio Code / Android Studio
- **Version Control**: Git
- **Package Manager**: pub.dev
- **Icon Generator**: flutter_launcher_icons ^0.13.1

---

## Features & Modules

### 1. Authentication Module

#### Features
- **Email/Password Registration**
  - Email validation
  - Password strength requirements
  - Automatic profile creation
  
- **Email/Password Login**
  - Secure authentication
  - Remember me functionality
  - Error handling

- **Google Sign-In**
  - One-tap authentication
  - Profile auto-fill
  - Seamless integration

- **Password Recovery**
  - Email-based reset
  - Verification links
  - Success confirmation

#### Screens
- `login_screen.dart` - User authentication
- `register_screen.dart` - New user registration
- `splash_screen.dart` - App initialization
- `onboarding_screen.dart` - First-time user guide

### 2. Lost & Found Module

#### Features
- **Report Lost Items**
  - Item title and description
  - Category selection
  - Location specification
  - Date lost recording
  - Estimated time
  - Contact information
  - Image upload (Base64 encoding)

- **Report Found Items**
  - Similar fields as lost items
  - Location found
  - Current item status
  - Finder contact details

- **Item Management**
  - View personal lost items
  - View personal found items
  - Edit item details
  - Mark as resolved/found
  - Delete items

- **Search & Filter**
  - Category-based filtering
  - Date range filtering
  - Location-based search
  - Real-time updates

#### Screens
- `lost_and_found_screen.dart` - Main listing
- `post_lost_item_screen.dart` - Report lost item
- `post_found_item_screen.dart` - Report found item
- `item_detail_screen.dart` - Detailed view
- `profile/my_lost_items_screen.dart` - Personal lost items
- `profile/my_found_items_screen.dart` - Personal found items

#### Data Fields
```dart
Lost/Found Item Structure:
{
  'userId': String,
  'userName': String,
  'userEmail': String,
  'title': String,
  'description': String,
  'category': String,
  'location': String,
  'dateLost/dateFound': Timestamp,
  'estimatedTime': String,
  'contactNumber': String,
  'imageBase64': String,
  'status': String, // 'active' or 'resolved'
  'createdAt': Timestamp,
  'updatedAt': Timestamp,
}
```

### 3. Events Module

#### Features
- **Event Categories**
  - Cultural Events
  - Sports Events
  - Academic Events
  - Technical Events
  - Social Events

- **Event Management**
  - Create events
  - View event details
  - Category filtering
  - Society information
  - Date and location
  - Event images

- **Event Details**
  - Full description
  - Organizing society
  - Event date and time
  - Location information
  - Contact details
  - Event banner/image

#### Screens
- `events_screen.dart` - Event listing with tabs
- `add_event_screen.dart` - Create new event
- `event_detail_screen.dart` - Full event information

#### Data Fields
```dart
Event Structure:
{
  'userId': String,
  'userName': String,
  'userEmail': String,
  'society': String,
  'title': String,
  'location': String,
  'description': String,
  'eventDate': Timestamp,
  'category': String,
  'imageBase64': String,
  'status': String, // 'active' or 'completed'
  'createdAt': Timestamp,
}
```

### 4. Notice Board Module

#### Features
- **Notice Categories**
  - Exam Notices
  - Holiday Announcements
  - Deadline Reminders
  - Event Notices
  - General Notices

- **Department Filtering**
  - All Departments
  - CSE Department
  - ECE Department
  - Mechanical Department
  - Civil Department
  - Administration

- **Notice Management**
  - Create notices
  - View notices
  - Category filtering
  - Department filtering
  - Date sorting

- **Notice Details**
  - Full description
  - Posted by information
  - Department badge
  - Category color-coding
  - Timestamp display

#### Screens
- `notice_screen.dart` - Notice board with filters
- `add_notice_screen.dart` - Create notice
- `notice_detail_screen.dart` - Detailed view

#### Data Fields
```dart
Notice Structure:
{
  'userId': String,
  'userName': String,
  'userEmail': String,
  'title': String,
  'description': String,
  'date': String,
  'category': String, // 'EXAM', 'HOLIDAY', 'DEADLINE', 'EVENT'
  'department': String,
  'status': String, // 'active' or 'archived'
  'timestamp': Timestamp,
  'createdAt': Timestamp,
}
```

#### Category Color Coding
- **EXAM**: Blue (#2196F3)
- **HOLIDAY**: Green (#4CAF50)
- **DEADLINE**: Orange (#FF9800)
- **EVENT**: Purple (#9C27B0)
- **General**: Grey

### 5. Notifications Module

#### Features
- **Real-time Notifications**
  - New lost items
  - New found items
  - New events
  - New notices
  - Item match alerts
  - Exam reminders

- **Notification Types**
  - Match notifications (Lost/Found match)
  - Exam notifications
  - Achievement notifications
  - Resolved item notifications
  - Event reminders

- **Notification Management**
  - View all notifications
  - Mark as read
  - Clear all
  - Delete individual
  - Time-stamped display

#### Screens
- `notification_screen.dart` - Notification list

#### Data Fields
```dart
Notification Structure:
{
  'userId': String,
  'title': String,
  'message': String,
  'type': String, // 'match', 'exam', 'achievement', 'resolved', 'event'
  'isRead': bool,
  'timestamp': Timestamp,
  'relatedId': String, // ID of related item/event/notice
}
```

### 6. Profile Module

#### Features
- **Profile Management**
  - Edit full name
  - Update student ID
  - Change department
  - Update phone number
  - View profile information

- **User Settings**
  - Dark mode toggle
  - Notification preferences
  - Language settings (future)
  - Privacy settings

- **Personal Dashboard**
  - My Lost Items
  - My Found Items
  - Help & Support
  - Edit Profile

#### Screens
- `profile_screen.dart` - Main profile view
- `profile/edit_profile_screen.dart` - Edit information
- `profile/my_lost_items_screen.dart` - Personal lost items
- `profile/my_found_items_screen.dart` - Personal found items
- `profile/help_support_screen.dart` - Help center

#### Data Fields
```dart
User Profile Structure:
{
  'uid': String,
  'email': String,
  'fullName': String,
  'studentId': String,
  'department': String,
  'phoneNumber': String,
  'createdAt': Timestamp,
  'updatedAt': Timestamp,
}
```

### 7. Home Dashboard

#### Features
- **Quick Access Cards**
  - Lost & Found
  - Notice Board
  - Events
  - Settings

- **Recent Notices**
  - Last 3 notices
  - Time ago display
  - Category icons
  - Quick navigation

- **User Greeting**
  - Personalized welcome
  - User initials avatar
  - Profile quick access

#### Screens
- `home_screen.dart` - Main dashboard
- `main_navigation.dart` - Bottom navigation

---

## Database Schema

### Firestore Collections

#### 1. users Collection
```
users/
  {userId}/
    - uid: string
    - email: string
    - fullName: string
    - studentId: string
    - department: string
    - phoneNumber: string
    - createdAt: timestamp
    - updatedAt: timestamp
```

#### 2. lost_items Collection
```
lost_items/
  {itemId}/
    - userId: string
    - userName: string
    - userEmail: string
    - title: string
    - description: string
    - category: string
    - location: string
    - dateLost: timestamp
    - estimatedTime: string
    - contactNumber: string
    - imageBase64: string
    - status: string ('active' | 'resolved')
    - createdAt: timestamp
    - updatedAt: timestamp
```

#### 3. found_items Collection
```
found_items/
  {itemId}/
    - userId: string
    - userName: string
    - userEmail: string
    - title: string
    - description: string
    - category: string
    - location: string
    - dateFound: timestamp
    - estimatedTime: string
    - contactNumber: string
    - imageBase64: string
    - status: string ('active' | 'resolved')
    - createdAt: timestamp
    - updatedAt: timestamp
```

#### 4. events Collection
```
events/
  {eventId}/
    - userId: string
    - userName: string
    - userEmail: string
    - society: string
    - title: string
    - location: string
    - description: string
    - eventDate: timestamp
    - category: string ('Cultural' | 'Sports' | 'Academic' | 'Technical' | 'Social')
    - imageBase64: string
    - status: string ('active' | 'completed')
    - createdAt: timestamp
```

#### 5. notices Collection
```
notices/
  {noticeId}/
    - userId: string
    - userName: string
    - userEmail: string
    - title: string
    - description: string
    - date: string
    - category: string ('EXAM' | 'HOLIDAY' | 'DEADLINE' | 'EVENT')
    - department: string
    - status: string ('active' | 'archived')
    - timestamp: timestamp
    - createdAt: timestamp
```

#### 6. notifications Collection
```
notifications/
  {notificationId}/
    - userId: string
    - title: string
    - message: string
    - type: string ('match' | 'exam' | 'achievement' | 'resolved' | 'event')
    - isRead: boolean
    - timestamp: timestamp
    - relatedId: string
```

### Firestore Security Rules
```javascript
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    
    // User profiles
    match /users/{userId} {
      allow read: if request.auth != null;
      allow write: if request.auth.uid == userId;
    }
    
    // Lost items
    match /lost_items/{itemId} {
      allow read: if request.auth != null;
      allow create: if request.auth != null;
      allow update, delete: if request.auth.uid == resource.data.userId;
    }
    
    // Found items
    match /found_items/{itemId} {
      allow read: if request.auth != null;
      allow create: if request.auth != null;
      allow update, delete: if request.auth.uid == resource.data.userId;
    }
    
    // Events
    match /events/{eventId} {
      allow read: if request.auth != null;
      allow create: if request.auth != null;
      allow update, delete: if request.auth.uid == resource.data.userId;
    }
    
    // Notices
    match /notices/{noticeId} {
      allow read: if request.auth != null;
      allow create: if request.auth != null;
      allow update, delete: if request.auth.uid == resource.data.userId;
    }
    
    // Notifications
    match /notifications/{notificationId} {
      allow read: if request.auth.uid == resource.data.userId;
      allow create: if request.auth != null;
      allow update, delete: if request.auth.uid == resource.data.userId;
    }
  }
}
```

---

## User Interface Design

### Design System

#### Color Palette

**Light Mode:**
- Primary: #2196F3 (Blue)
- Secondary: #4CAF50 (Green)
- Error: #F44336 (Red)
- Warning: #FF9800 (Orange)
- Success: #4CAF50 (Green)
- Background: #FFFFFF (White)
- Surface: #F5F5F5 (Light Grey)
- Text Primary: #000000 87% (Black 87)
- Text Secondary: #000000 60% (Black 60)

**Dark Mode:**
- Primary: #2196F3 (Blue)
- Secondary: #4CAF50 (Green)
- Error: #F44336 (Red)
- Warning: #FF9800 (Orange)
- Success: #4CAF50 (Green)
- Background: #121212 (Dark Grey)
- Surface: #1E1E1E (Slightly lighter)
- Text Primary: #FFFFFF (White)
- Text Secondary: #FFFFFF 70% (White 70)

#### Typography
```dart
TextTheme:
  - Display Large: 57px, Bold
  - Display Medium: 45px, Bold
  - Display Small: 36px, Bold
  - Headline Large: 32px, Bold
  - Headline Medium: 28px, Bold
  - Headline Small: 24px, Bold
  - Title Large: 22px, SemiBold
  - Title Medium: 16px, SemiBold
  - Title Small: 14px, SemiBold
  - Body Large: 16px, Regular
  - Body Medium: 14px, Regular
  - Body Small: 12px, Regular
  - Label Large: 14px, Medium
  - Label Medium: 12px, Medium
  - Label Small: 11px, Medium
```

#### Spacing System
- Extra Small: 4px
- Small: 8px
- Medium: 16px
- Large: 24px
- Extra Large: 32px
- XXL: 48px

#### Component Specifications

**Cards:**
- Border Radius: 12px
- Elevation: 2dp (light mode), None (dark mode)
- Padding: 16px
- Margin: 8px

**Buttons:**
- Height: 52px
- Border Radius: 12px
- Padding: 16px horizontal
- Font Size: 16px
- Font Weight: 600

**Input Fields:**
- Height: 52px (single line), Auto (multiline)
- Border Radius: 12px
- Border Width: 1px
- Padding: 16px
- Fill Color: Grey 50 (light), Grey 800 (dark)

**Navigation Bar:**
- Height: 80px
- Border Radius: 16px (top corners)
- Elevation: 8dp
- Icon Size: 24px

### Screen Layouts

#### 1. Authentication Screens
- Full-screen gradient background
- Centered content
- Logo at top
- Form fields with validation
- Social login options
- Navigation links

#### 2. Home Screen
- Greeting header with avatar
- Feature cards grid (2 columns)
- Recent notices section
- Bottom navigation bar

#### 3. List Screens (Lost/Found, Events, Notices)
- App bar with title and actions
- Filter/Category tabs
- Card-based list items
- Floating action button (add)
- Pull-to-refresh
- Empty state illustrations

#### 4. Detail Screens
- Sliver app bar with gradient
- Hero image (if available)
- Content sections
- Action buttons at bottom
- Back navigation

#### 5. Form Screens (Add Item/Event/Notice)
- Scrollable form
- Section headers
- Input validation
- Image picker
- Date/Time pickers
- Submit button at bottom

#### 6. Profile Screen
- User info header
- Menu items list
- Settings toggles
- Logout button

---

## Installation & Setup

### Prerequisites
1. **Flutter SDK**: Version 3.8.1 or higher
   ```bash
   flutter --version
   ```

2. **Dart SDK**: Version 3.8.1 or higher

3. **Development Environment**:
   - Android Studio with Android SDK
   - Xcode (for iOS development on macOS)
   - Visual Studio Code with Flutter extensions

4. **Firebase Account**: Active Firebase project

### Step-by-Step Installation

#### 1. Clone the Repository
```bash
git clone https://github.com/yourusername/campus_hub.git
cd campus_hub
```

#### 2. Install Dependencies
```bash
flutter pub get
```

#### 3. Firebase Setup

**Android Configuration:**
1. Download `google-services.json` from Firebase Console
2. Place it in `android/app/` directory

**iOS Configuration:**
1. Download `GoogleService-Info.plist` from Firebase Console
2. Place it in `ios/Runner/` directory

#### 4. Configure Firebase Services

Enable the following in Firebase Console:
- Authentication (Email/Password, Google Sign-In)
- Cloud Firestore
- Cloud Messaging

#### 5. Update Firebase Configuration
Edit `android/build.gradle.kts` and `ios/Podfile` as needed.

#### 6. Run the Application

**Android:**
```bash
flutter run
```

**iOS:**
```bash
flutter run -d ios
```

**Debug Mode:**
```bash
flutter run --debug
```

**Release Mode:**
```bash
flutter run --release
```

### Building for Production

#### Android APK
```bash
flutter build apk --release
```

#### Android App Bundle (for Play Store)
```bash
flutter build appbundle --release
```

#### iOS
```bash
flutter build ios --release
```

### Troubleshooting Installation

**Common Issues:**

1. **Gradle Build Failed**
   ```bash
   cd android
   ./gradlew clean
   cd ..
   flutter clean
   flutter pub get
   ```

2. **CocoaPods Issues (iOS)**
   ```bash
   cd ios
   pod deintegrate
   pod install
   cd ..
   ```

3. **Firebase Configuration**
   - Verify `google-services.json` is in correct location
   - Check package name matches Firebase project
   - Ensure SHA-1 fingerprint is added (Android)

---

## Configuration

### Environment Configuration

#### Firebase Configuration
Located in: `android/app/google-services.json` and `ios/Runner/GoogleService-Info.plist`

Key configurations:
- Project ID
- API Keys
- Database URLs
- Storage bucket
- Messaging sender ID

#### App Configuration

**android/app/build.gradle.kts:**
```kotlin
applicationId = "com.yourcompany.campus_hub"
minSdk = 21
targetSdk = 34
versionCode = 1
versionName = "1.0.0"
```

**ios/Runner/Info.plist:**
```xml
<key>CFBundleDisplayName</key>
<string>CampusHub</string>
<key>CFBundleIdentifier</key>
<string>com.yourcompany.campusHub</string>
<key>CFBundleVersion</key>
<string>1</string>
```

### Theme Configuration

**lib/utils/app_theme.dart:**
```dart
class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Color(0xFF2196F3),
    scaffoldBackgroundColor: Color(0xFFF5F5F5),
    // ... theme properties
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Color(0xFF2196F3),
    scaffoldBackgroundColor: Color(0xFF121212),
    // ... theme properties
  );
}
```

### Notification Configuration

**lib/utils/notification_service.dart:**
- FCM token management
- Notification channel setup
- Background message handling
- Local notification display

---

## App Structure

### Directory Structure
```
campus_hub/
│
├── android/                    # Android native code
│   ├── app/
│   │   ├── src/
│   │   └── build.gradle.kts
│   └── build.gradle.kts
│
├── ios/                        # iOS native code
│   ├── Runner/
│   └── Podfile
│
├── lib/                        # Flutter source code
│   ├── auth/                   # Authentication
│   │   ├── auth_service.dart
│   │   ├── login_screen.dart
│   │   └── register_screen.dart
│   │
│   ├── screens/                # All app screens
│   │   ├── home_screen.dart
│   │   ├── main_navigation.dart
│   │   ├── lost_and_found_screen.dart
│   │   ├── post_lost_item_screen.dart
│   │   ├── post_found_item_screen.dart
│   │   ├── item_detail_screen.dart
│   │   ├── events_screen.dart
│   │   ├── add_event_screen.dart
│   │   ├── event_detail_screen.dart
│   │   ├── notice_screen.dart
│   │   ├── add_notice_screen.dart
│   │   ├── notice_detail_screen.dart
│   │   ├── notification_screen.dart
│   │   ├── profile_screen.dart
│   │   └── profile/            # Profile submodules
│   │       ├── edit_profile_screen.dart
│   │       ├── my_lost_items_screen.dart
│   │       ├── my_found_items_screen.dart
│   │       └── help_support_screen.dart
│   │
│   ├── splashScreen/           # Onboarding
│   │   ├── splash_screen.dart
│   │   └── onboarding_screen.dart
│   │
│   ├── utils/                  # Utilities
│   │   ├── theme_provider.dart
│   │   ├── app_theme.dart
│   │   └── notification_service.dart
│   │
│   └── main.dart               # App entry point
│
├── assets/                     # Static assets
│   └── logo.png
│
├── test/                       # Unit tests
│   └── widget_test.dart
│
├── pubspec.yaml               # Dependencies
├── README.md                  # Project overview
├── DOCUMENTATION.md           # This file
└── DESIGN_CONFIG.md          # Design specifications
```

### Key Files Description

#### main.dart
- App initialization
- Firebase setup
- Theme provider setup
- Material App configuration
- Home route definition

#### auth/auth_service.dart
- Authentication methods
- User session management
- Firebase Auth integration
- Google Sign-In integration

#### utils/theme_provider.dart
- Dark mode state management
- Theme persistence with SharedPreferences
- Theme toggle functionality

#### utils/app_theme.dart
- Light theme definition
- Dark theme definition
- Color schemes
- Typography
- Component themes

#### utils/notification_service.dart
- FCM initialization
- Notification handling
- Local notification display
- Background message processing

---

## Key Functionalities

### 1. User Authentication Flow

```dart
Login Process:
1. User enters email and password
2. Validate input format
3. Call AuthService.signInWithEmailAndPassword()
4. Firebase authenticates credentials
5. On success: Navigate to Home
6. On failure: Display error message

Registration Process:
1. User enters full name, email, password, student ID, department
2. Validate all inputs
3. Call AuthService.registerWithEmailAndPassword()
4. Create user in Firebase Auth
5. Create user profile in Firestore
6. Navigate to Home

Google Sign-In:
1. User taps Google Sign-In button
2. Call AuthService.signInWithGoogle()
3. Google authentication flow
4. On success: Check if user exists in Firestore
5. If new user: Create profile
6. Navigate to Home
```

### 2. Lost & Found Workflow

```dart
Report Lost Item:
1. Navigate to Post Lost Item screen
2. Fill in item details (title, description, category)
3. Select location and date
4. Add estimated time
5. Optionally upload image
6. Enter contact number
7. Submit to Firestore 'lost_items' collection
8. Display success message
9. Navigate back to listing

Report Found Item:
- Similar flow to lost item
- Stored in 'found_items' collection

Item Matching:
- Real-time Firestore listeners
- Keyword matching algorithm
- Notification when potential match found
```

### 3. Event Management

```dart
Create Event:
1. Select event category
2. Enter society name
3. Enter event title
4. Enter location
5. Enter description
6. Select event date
7. Optionally add event image
8. Submit to Firestore 'events' collection
9. Trigger notification to all users

View Event:
1. Tap on event card
2. Navigate to Event Detail screen
3. Display full event information
4. Options to contact organizer
```

### 4. Notice Board System

```dart
Post Notice:
1. Select category (Exam, Holiday, Deadline, Event)
2. Enter title
3. Enter description
4. Select date
5. Select target department
6. Submit to Firestore 'notices' collection
7. Trigger notifications to department users

View Notices:
1. Filter by category (tabs)
2. Filter by department (dropdown)
3. Real-time updates via StreamBuilder
4. Sort by timestamp (newest first)
5. Tap to view full notice details
```

### 5. Notification System

```dart
Notification Flow:
1. Event triggers notification creation
2. NotificationService.sendNotification()
3. Store in Firestore 'notifications' collection
4. Send FCM push notification
5. User receives notification
6. Tap opens relevant screen
7. Mark as read in Firestore

Background Notifications:
- FCM handles background message delivery
- flutter_local_notifications displays local notification
- Notification tap handling via onMessageOpenedApp
```

### 6. Dark Mode Implementation

```dart
Theme Toggle:
1. User taps dark mode switch in profile
2. ThemeProvider.toggleTheme() called
3. Save preference to SharedPreferences
4. Notify all listeners
5. App rebuilds with new theme

Theme Persistence:
1. On app startup, load theme preference
2. ThemeProvider reads from SharedPreferences
3. Apply saved theme
4. Continue with saved theme on subsequent launches
```

---

## Security & Authentication

### Authentication Methods

#### 1. Email/Password Authentication
```dart
Security Features:
- Password minimum length: 6 characters
- Email format validation
- Secure password storage in Firebase
- Password reset via email
```

#### 2. Google Sign-In
```dart
Security Features:
- OAuth 2.0 authentication
- Secure token exchange
- Automatic credential management
- No password storage needed
```

### Data Security

#### Firestore Security
```javascript
- All reads require authentication
- Users can only modify their own data
- Server-side validation
- Data encryption at rest and in transit
```

#### Local Storage Security
```dart
- Theme preferences stored locally
- No sensitive data in SharedPreferences
- Session tokens managed by Firebase SDK
- Automatic token refresh
```

### Privacy Measures

1. **User Data**
   - Email addresses not publicly visible
   - Phone numbers only shown to authenticated users
   - User can control their data visibility

2. **Image Storage**
   - Base64 encoding for images
   - Images stored in Firestore documents
   - No public image URLs
   - User consent for image upload

3. **Personal Information**
   - Student ID visible only to authenticated users
   - Department information for filtering only
   - Profile editing restricted to account owner

### Best Practices Implemented

1. **Input Validation**
   - All user inputs validated
   - SQL injection prevention (NoSQL database)
   - XSS prevention in text fields

2. **Error Handling**
   - Generic error messages to users
   - Detailed errors logged (no sensitive data)
   - Graceful failure handling

3. **Session Management**
   - Automatic session timeout
   - Secure token storage
   - Re-authentication for sensitive actions

---

## Dark Mode Implementation

### Architecture

#### Theme System Structure
```dart
ThemeProvider (ChangeNotifier)
    ↓
SharedPreferences (Persistence)
    ↓
AppTheme (Theme Definitions)
    ↓
Material App (Theme Application)
```

### Components Updated for Dark Mode

#### 1. Screens
All screens updated with theme-aware colors:
- Scaffold backgrounds
- AppBar colors
- Card backgrounds
- Text colors
- Icon colors
- Input field backgrounds
- Button colors

#### 2. Input Fields
```dart
Fill Color:
- Light Mode: Colors.grey.shade100
- Dark Mode: Colors.grey[800]

Border Colors:
- Light Mode: Colors.grey.shade300
- Dark Mode: Theme.of(context).dividerColor

Label Colors:
- Both modes: Theme.of(context).textTheme.bodyLarge?.color
```

#### 3. Cards & Containers
```dart
Background Color:
- Light Mode: Colors.white
- Dark Mode: Colors.grey[850]

Shadow:
- Light Mode: Colors.grey.shade200
- Dark Mode: Colors.black.withOpacity(0.3)
```

#### 4. Text Colors
```dart
Primary Text:
- Theme.of(context).textTheme.bodyLarge?.color

Secondary Text:
- Theme.of(context).textTheme.bodyMedium?.color

Small Text:
- Theme.of(context).textTheme.bodySmall?.color
```

### Theme Provider Implementation

```dart
class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;
  static const String _key = 'theme_mode';

  ThemeProvider() {
    _loadTheme();
  }

  ThemeMode get themeMode => _themeMode;
  
  bool get isDarkMode => _themeMode == ThemeMode.dark;

  Future<void> toggleTheme() async {
    _themeMode = _themeMode == ThemeMode.light 
        ? ThemeMode.dark 
        : ThemeMode.light;
    await _saveTheme();
    notifyListeners();
  }

  Future<void> _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final isDark = prefs.getBool(_key) ?? false;
    _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  Future<void> _saveTheme() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_key, isDarkMode);
  }
}
```

### Files Modified for Dark Mode

1. **Core Files:**
   - `main.dart` - Theme provider setup
   - `utils/theme_provider.dart` - Theme management
   - `utils/app_theme.dart` - Theme definitions

2. **Screen Files (All updated):**
   - Home and navigation screens
   - Authentication screens
   - Lost & Found screens
   - Events screens
   - Notice screens
   - Profile screens
   - Detail screens
   - Form screens

3. **Component Updates:**
   - Image containers: Grey shade backgrounds
   - Date pickers: Grey shade backgrounds
   - Input fields: Dynamic fill colors
   - Labels: Theme-aware text colors
   - Buttons: Consistent with theme
   - Cards: Adaptive backgrounds and shadows

### Toggle Location
Dark mode toggle is available in:
- Profile Screen → Settings Menu → Dark Mode Switch

---

## Firebase Integration

### Firebase Services Used

#### 1. Firebase Authentication
```dart
Configuration:
- Email/Password provider enabled
- Google Sign-In provider enabled
- Password reset email templates customized

Implementation:
- lib/auth/auth_service.dart
- Singleton pattern for auth instance
- Stream-based auth state changes
- Error handling for all auth operations
```

#### 2. Cloud Firestore
```dart
Configuration:
- Database location: us-central1
- Security rules implemented
- Indexes for queries (if needed)

Collections:
- users
- lost_items
- found_items
- events
- notices
- notifications

Features Used:
- Real-time listeners (StreamBuilder)
- Batch writes
- Transactions
- Compound queries
- Timestamps
```

#### 3. Firebase Cloud Messaging
```dart
Configuration:
- FCM setup in android/ios projects
- Notification channels configured
- Background message handler

Implementation:
- lib/utils/notification_service.dart
- Foreground notifications
- Background notifications
- Notification tap handling
- Token management
```

### Firebase Configuration Files

#### Android
```
android/
  app/
    google-services.json       # Firebase config
    build.gradle.kts          # Dependencies
```

#### iOS
```
ios/
  Runner/
    GoogleService-Info.plist  # Firebase config
  Podfile                     # Dependencies
```

### Firebase Initialization

```dart
// main.dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await NotificationService().initialize();
  runApp(const MyApp());
}
```

### Firestore Query Examples

```dart
// Get all active lost items
FirebaseFirestore.instance
  .collection('lost_items')
  .where('status', isEqualTo: 'active')
  .orderBy('createdAt', descending: true)
  .snapshots()

// Get user's found items
FirebaseFirestore.instance
  .collection('found_items')
  .where('userId', isEqualTo: currentUserId)
  .where('status', isEqualTo: 'active')
  .snapshots()

// Get notices by department
FirebaseFirestore.instance
  .collection('notices')
  .where('department', isEqualTo: department)
  .where('status', isEqualTo: 'active')
  .orderBy('timestamp', descending: true)
  .snapshots()

// Get events by category
FirebaseFirestore.instance
  .collection('events')
  .where('category', isEqualTo: category)
  .where('status', isEqualTo: 'active')
  .orderBy('createdAt', descending: true)
  .snapshots()
```

---

## Testing Guidelines

### Testing Strategy

#### 1. Unit Testing
```dart
Test Coverage Areas:
- Authentication methods
- Data validation
- Business logic
- Utility functions
- State management

Example Test:
test/auth_service_test.dart
test/validation_test.dart
```

#### 2. Widget Testing
```dart
Test Coverage Areas:
- Screen rendering
- User interactions
- Navigation flows
- Form validation
- Theme switching

Example Test:
test/login_screen_test.dart
test/home_screen_test.dart
```

#### 3. Integration Testing
```dart
Test Coverage Areas:
- Complete user flows
- Firebase operations
- Multi-screen workflows
- End-to-end scenarios

Example Test:
integration_test/app_test.dart
```

### Manual Testing Checklist

#### Authentication
- [ ] Email/Password registration
- [ ] Email/Password login
- [ ] Google Sign-In
- [ ] Password reset
- [ ] Logout
- [ ] Session persistence

#### Lost & Found
- [ ] Post lost item with image
- [ ] Post found item with image
- [ ] View item details
- [ ] Edit own items
- [ ] Delete own items
- [ ] Mark as resolved
- [ ] Search and filter

#### Events
- [ ] Create event
- [ ] View event list
- [ ] Filter by category
- [ ] View event details
- [ ] Add event image

#### Notices
- [ ] Create notice
- [ ] View notice list
- [ ] Filter by category
- [ ] Filter by department
- [ ] View notice details
- [ ] Tap to open from home

#### Notifications
- [ ] Receive notifications
- [ ] View notification list
- [ ] Mark as read
- [ ] Clear all
- [ ] Notification tap navigation

#### Profile
- [ ] Edit profile
- [ ] View my lost items
- [ ] View my found items
- [ ] Toggle dark mode
- [ ] Help & Support
- [ ] Logout

#### Dark Mode
- [ ] Toggle dark mode
- [ ] Theme persistence
- [ ] All screens dark mode compatible
- [ ] Text readability
- [ ] Input fields visibility

### Testing Tools

```yaml
dev_dependencies:
  flutter_test:
    sdk: flutter
  integration_test:
    sdk: flutter
  mockito: ^5.4.0
  fake_cloud_firestore: ^2.4.0
```

### Running Tests

```bash
# Run all unit tests
flutter test

# Run specific test file
flutter test test/auth_service_test.dart

# Run integration tests
flutter test integration_test/app_test.dart

# Generate coverage report
flutter test --coverage
```

---

## Deployment

### Pre-Deployment Checklist

#### Code Quality
- [ ] No debug print statements
- [ ] All TODO comments addressed
- [ ] Code properly formatted
- [ ] No hardcoded values
- [ ] Environment variables configured
- [ ] Error handling implemented
- [ ] Loading states handled

#### Testing
- [ ] All tests passing
- [ ] Manual testing completed
- [ ] Performance tested
- [ ] Memory leaks checked
- [ ] Battery usage optimized

#### Security
- [ ] API keys secured
- [ ] Firebase rules verified
- [ ] SSL pinning (if applicable)
- [ ] Data encryption verified
- [ ] Authentication tested

#### Assets
- [ ] App icon generated
- [ ] Splash screen configured
- [ ] All images optimized
- [ ] Unused assets removed

### Android Deployment

#### 1. Configure App Signing
```bash
# Generate keystore
keytool -genkey -v -keystore ~/upload-keystore.jks -keyalg RSA -keysize 2048 -validity 10000 -alias upload

# Create key.properties
android/key.properties:
storePassword=<password>
keyPassword=<password>
keyAlias=upload
storeFile=<path-to-keystore>
```

#### 2. Update build.gradle
```kotlin
android {
    signingConfigs {
        release {
            // Configure signing
        }
    }
    buildTypes {
        release {
            signingConfig signingConfigs.release
            minifyEnabled true
            shrinkResources true
        }
    }
}
```

#### 3. Build Release APK/Bundle
```bash
# Build APK
flutter build apk --release

# Build App Bundle (recommended for Play Store)
flutter build appbundle --release
```

#### 4. Google Play Store Submission
1. Create app listing in Play Console
2. Upload app bundle
3. Complete store listing
4. Set up pricing & distribution
5. Submit for review

### iOS Deployment

#### 1. Configure Xcode Project
```bash
# Open in Xcode
open ios/Runner.xcworkspace
```

#### 2. App Signing
- Select team in Xcode
- Configure bundle identifier
- Enable automatic signing

#### 3. Build Archive
```bash
flutter build ios --release
```

#### 4. App Store Submission
1. Archive app in Xcode
2. Upload to App Store Connect
3. Complete app information
4. Submit for review

### Continuous Integration/Deployment

#### GitHub Actions Example
```yaml
name: Flutter CI

on: [push, pull_request]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - uses: subosito/flutter-action@v2
      with:
        flutter-version: '3.8.1'
    - run: flutter pub get
    - run: flutter analyze
    - run: flutter test
    - run: flutter build apk --release
```

### Post-Deployment

#### Monitoring
- Firebase Analytics setup
- Crash reporting (Firebase Crashlytics)
- Performance monitoring
- User feedback collection

#### Updates
- Version number management
- Release notes preparation
- Phased rollouts
- Beta testing program

---

## Future Enhancements

### Planned Features

#### Phase 1 (Short-term)
1. **Advanced Search**
   - Keyword search across all modules
   - Voice search
   - Search history
   - Filters and sorting options

2. **Enhanced Notifications**
   - Notification preferences
   - Scheduled notifications
   - Priority levels
   - Custom notification sounds

3. **User Engagement**
   - Likes and comments on events
   - Event RSVP
   - Share functionality
   - QR code for event check-in

4. **Analytics Dashboard**
   - Lost & found success rate
   - Most popular events
   - Notice engagement metrics
   - User activity statistics

#### Phase 2 (Medium-term)
1. **Chat System**
   - Direct messaging between users
   - Group chats for events
   - File sharing
   - Voice messages

2. **Marketplace**
   - Buy/sell textbooks
   - Service exchange
   - Ride sharing
   - Tutoring offers

3. **Academic Features**
   - Time table management
   - Assignment tracker
   - Study groups
   - Resource sharing

4. **Advanced Profile**
   - Verification badges
   - Reputation system
   - Achievement system
   - Activity history

#### Phase 3 (Long-term)
1. **AI Integration**
   - Smart item matching
   - Personalized recommendations
   - Predictive notifications
   - Chatbot support

2. **Multi-Campus Support**
   - University network
   - Cross-campus events
   - Inter-university competitions
   - Shared resources

3. **Advanced Features**
   - Video streaming for events
   - Virtual campus tour
   - Augmented reality features
   - Blockchain verification

4. **Administrative Tools**
   - Admin dashboard
   - Content moderation
   - User management
   - Analytics and reports

### Technical Improvements

1. **Performance**
   - Image compression
   - Lazy loading
   - Caching strategies
   - Background sync

2. **Offline Support**
   - Offline-first architecture
   - Local database (SQLite)
   - Sync when online
   - Conflict resolution

3. **Accessibility**
   - Screen reader support
   - Voice commands
   - Large text support
   - High contrast mode

4. **Internationalization**
   - Multi-language support
   - RTL language support
   - Regional date/time formats
   - Currency localization

---

## Troubleshooting

### Common Issues and Solutions

#### 1. Firebase Connection Issues

**Problem:** App can't connect to Firebase
```
Solution:
1. Verify google-services.json is in android/app/
2. Check GoogleService-Info.plist is in ios/Runner/
3. Ensure package name matches Firebase project
4. Verify SHA-1 fingerprint is added (Android)
5. Run flutter clean and flutter pub get
```

#### 2. Build Errors

**Problem:** Gradle build fails
```
Solution:
1. cd android && ./gradlew clean
2. cd .. && flutter clean
3. flutter pub get
4. flutter run
```

**Problem:** CocoaPods issues (iOS)
```
Solution:
1. cd ios
2. pod deintegrate
3. pod install
4. cd ..
5. flutter run
```

#### 3. Authentication Errors

**Problem:** Google Sign-In not working
```
Solution:
1. Verify SHA-1 fingerprint in Firebase Console
2. Check google-services.json is updated
3. Ensure Google Sign-In is enabled in Firebase Auth
4. Verify package name matches
```

#### 4. Image Upload Issues

**Problem:** Images not uploading
```
Solution:
1. Check image size (should be < 10MB)
2. Verify image picker permissions
3. Check Base64 encoding is working
4. Verify Firestore document size limit
5. Consider using Firebase Storage for large images
```

#### 5. Notification Issues

**Problem:** Notifications not received
```
Solution:
1. Verify FCM is properly configured
2. Check notification permissions are granted
3. Ensure device has internet connection
4. Verify FCM token is valid
5. Check Firebase Cloud Messaging logs
```

#### 6. Dark Mode Issues

**Problem:** Theme not persisting
```
Solution:
1. Check SharedPreferences implementation
2. Verify ThemeProvider is properly initialized
3. Check notifyListeners() is called
4. Ensure ChangeNotifierProvider wraps app
```

#### 7. Performance Issues

**Problem:** App is slow
```
Solution:
1. Profile app with DevTools
2. Optimize Firestore queries
3. Implement pagination
4. Reduce image sizes
5. Use const constructors
6. Implement lazy loading
```

### Debug Commands

```bash
# Clear Flutter cache
flutter clean

# Get dependencies
flutter pub get

# Run in debug mode
flutter run --debug

# Run in profile mode
flutter run --profile

# Run in release mode
flutter run --release

# Analyze code
flutter analyze

# Check for outdated dependencies
flutter pub outdated

# Generate app bundle
flutter build appbundle

# View device logs
flutter logs

# Run DevTools
flutter pub global run devtools
```

### Getting Help

1. **Check Documentation**
   - Flutter: https://flutter.dev/docs
   - Firebase: https://firebase.google.com/docs
   - Package docs: pub.dev

2. **Community Support**
   - Stack Overflow
   - Flutter Discord
   - GitHub Issues

3. **Contact Support**
   - Email: support@campushub.com
   - In-app help & support

---

## Contributors

### Development Team

**Project Lead & Full Stack Developer**
- Name: [Your Name]
- Role: Lead Developer
- Responsibilities:
  - Overall architecture
  - Firebase integration
  - UI/UX implementation
  - Testing and deployment

**Contributors**
- [Add team member names and roles]

### Acknowledgments

- Flutter Team for the amazing framework
- Firebase Team for backend services
- Material Design Team for design guidelines
- Open source community for packages and support

### Contact Information

**Project Repository**
- GitHub: https://github.com/yourusername/campus_hub
- Issues: https://github.com/yourusername/campus_hub/issues

**Support**
- Email: support@campushub.com
- Website: https://campushub.com
- Documentation: https://docs.campushub.com

---

## License

This project is licensed under the MIT License - see the LICENSE file for details.

```
MIT License

Copyright (c) 2026 CampusHub

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

---

## Appendix

### A. Glossary

- **FCM**: Firebase Cloud Messaging - Push notification service
- **Firestore**: Cloud-based NoSQL database
- **Provider**: State management solution
- **Widget**: Basic building block of Flutter UI
- **Stream**: Asynchronous data sequence
- **Base64**: Binary-to-text encoding scheme
- **SHA-1**: Cryptographic hash function
- **APK**: Android Package Kit
- **IPA**: iOS App Store Package

### B. API Endpoints

While this app primarily uses Firebase services, here are the key Firebase operations:

**Authentication**
- `signInWithEmailAndPassword(email, password)`
- `createUserWithEmailAndPassword(email, password)`
- `signInWithCredential(credential)`
- `sendPasswordResetEmail(email)`
- `signOut()`

**Firestore Operations**
- `collection(name).add(data)`
- `collection(name).doc(id).set(data)`
- `collection(name).doc(id).update(data)`
- `collection(name).doc(id).delete()`
- `collection(name).where(field, operator, value)`
- `collection(name).orderBy(field, direction)`
- `collection(name).limit(count)`

**Cloud Messaging**
- `getToken()`
- `subscribeToTopic(topic)`
- `unsubscribeFromTopic(topic)`
- `onMessage.listen(callback)`
- `onBackgroundMessage(handler)`

### C. Version History

**Version 1.0.0** (January 2026)
- Initial release
- Authentication system
- Lost & Found module
- Events module
- Notice Board module
- Notifications
- Profile management
- Dark mode support

### D. Resources

**Flutter Resources**
- Flutter Documentation: https://flutter.dev/docs
- Dart Documentation: https://dart.dev/guides
- Flutter Packages: https://pub.dev
- Flutter Community: https://flutter.dev/community

**Firebase Resources**
- Firebase Console: https://console.firebase.google.com
- Firebase Documentation: https://firebase.google.com/docs
- Firebase Samples: https://github.com/firebase/quickstart-android

**Design Resources**
- Material Design: https://material.io/design
- Flutter Design Patterns: https://flutter.dev/docs/cookbook
- Color Tool: https://material.io/resources/color

**Learning Resources**
- Flutter Codelabs: https://flutter.dev/docs/codelabs
- Flutter YouTube: https://www.youtube.com/flutterdev
- Firebase YouTube: https://www.youtube.com/firebase

---

## Document Information

**Document Version:** 1.0
**Last Updated:** January 5, 2026
**Document Owner:** CampusHub Development Team
**Status:** Final

**Revision History:**
- v1.0 (Jan 5, 2026): Initial comprehensive documentation

**Next Review Date:** March 1, 2026

---

*End of Documentation*
