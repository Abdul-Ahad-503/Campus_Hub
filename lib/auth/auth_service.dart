import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  // Sign Up with Email and Password
  Future<Map<String, dynamic>> signUp({
    required String email,
    required String password,
    required String fullName,
    required String studentId,
    required String department,
    required String phoneNumber,
  }) async {
    try {
      // Create user with email and password
      UserCredential result = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      User? user = result.user;

      if (user != null) {
        // Store additional user data in Firestore
        await _firestore.collection('users').doc(user.uid).set({
          'uid': user.uid,
          'email': email,
          'fullName': fullName,
          'studentId': studentId,
          'department': department,
          'phoneNumber': phoneNumber,
          'createdAt': FieldValue.serverTimestamp(),
          'profileComplete': true,
        });

        // Update display name
        await user.updateDisplayName(fullName);

        return {
          'success': true,
          'user': user,
          'message': 'Account created successfully',
        };
      }

      return {
        'success': false,
        'user': null,
        'message': 'Failed to create user',
      };
    } on FirebaseAuthException catch (e) {
      String message;
      switch (e.code) {
        case 'weak-password':
          message = 'The password provided is too weak.';
          break;
        case 'email-already-in-use':
          message = 'An account already exists for this email.';
          break;
        case 'invalid-email':
          message = 'The email address is invalid.';
          break;
        default:
          message = 'Registration failed: ${e.message}';
      }
      return {'success': false, 'user': null, 'message': message};
    } catch (e) {
      return {
        'success': false,
        'user': null,
        'message': 'An error occurred: $e',
      };
    }
  }

  // Login with Email and Password
  Future<Map<String, dynamic>> login({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return {
        'success': true,
        'user': result.user,
        'message': 'Login successful',
      };
    } on FirebaseAuthException catch (e) {
      String message;
      switch (e.code) {
        case 'user-not-found':
          message = 'No user found with this email.';
          break;
        case 'wrong-password':
          message = 'Wrong password provided.';
          break;
        case 'invalid-email':
          message = 'The email address is invalid.';
          break;
        case 'user-disabled':
          message = 'This account has been disabled.';
          break;
        default:
          message = 'Login failed: ${e.message}';
      }
      return {'success': false, 'user': null, 'message': message};
    } catch (e) {
      return {
        'success': false,
        'user': null,
        'message': 'An error occurred: $e',
      };
    }
  }

  // Sign In with Google
  Future<Map<String, dynamic>> signInWithGoogle() async {
    try {
      // Trigger the Google Sign In flow
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

      if (googleUser == null) {
        // User canceled the sign-in
        return {
          'success': false,
          'user': null,
          'message': 'Google sign-in was cancelled',
        };
      }

      // Obtain the auth details from the request
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Sign in to Firebase with the Google credential
      UserCredential result = await _auth.signInWithCredential(credential);
      User? user = result.user;

      if (user != null) {
        // Check if user document exists in Firestore
        DocumentSnapshot userDoc = await _firestore
            .collection('users')
            .doc(user.uid)
            .get();

        if (!userDoc.exists) {
          // Create new user document if it doesn't exist
          await _firestore.collection('users').doc(user.uid).set({
            'uid': user.uid,
            'email': user.email,
            'fullName': user.displayName ?? '',
            'studentId': '', // To be filled later
            'department': '', // To be filled later
            'phoneNumber': user.phoneNumber ?? '',
            'createdAt': FieldValue.serverTimestamp(),
            'profileComplete': false, // User needs to complete profile
            'signInMethod': 'google',
          });
        }

        return {
          'success': true,
          'user': user,
          'message': 'Google sign-in successful',
        };
      }

      return {
        'success': false,
        'user': null,
        'message': 'Failed to sign in with Google',
      };
    } catch (e) {
      return {
        'success': false,
        'user': null,
        'message': 'Google sign-in error: $e',
      };
    }
  }

  // Logout
  Future<void> logout() async {
    try {
      // Try to sign out from Google Sign-In (ignore errors if not signed in with Google)
      await _googleSignIn.signOut();
    } catch (e) {
      // Ignore Google Sign-In errors (user might not be signed in with Google)
      print('Google Sign-In logout error (ignored): $e');
    }
    // Always sign out from Firebase Auth
    await _auth.signOut();
  }

  // Get Current User
  User? get currentUser => _auth.currentUser;

  // Get User Data from Firestore
  Future<Map<String, dynamic>?> getUserData(String uid) async {
    try {
      DocumentSnapshot doc = await _firestore
          .collection('users')
          .doc(uid)
          .get();
      if (doc.exists) {
        return doc.data() as Map<String, dynamic>?;
      }
      return null;
    } catch (e) {
      print('Error getting user data: $e');
      return null;
    }
  }

  // Update User Profile
  Future<bool> updateUserProfile({
    required String uid,
    String? fullName,
    String? studentId,
    String? department,
    String? phoneNumber,
  }) async {
    try {
      Map<String, dynamic> updates = {};

      if (fullName != null) updates['fullName'] = fullName;
      if (studentId != null) updates['studentId'] = studentId;
      if (department != null) updates['department'] = department;
      if (phoneNumber != null) updates['phoneNumber'] = phoneNumber;

      updates['profileComplete'] = true;

      await _firestore.collection('users').doc(uid).update(updates);
      return true;
    } catch (e) {
      print('Error updating user profile: $e');
      return false;
    }
  }

  // Check if email exists
  Future<bool> checkEmailExists(String email) async {
    try {
      final methods = await _auth.fetchSignInMethodsForEmail(email);
      return methods.isNotEmpty;
    } catch (e) {
      return false;
    }
  }

  // Reset Password
  Future<Map<String, dynamic>> resetPassword(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
      return {'success': true, 'message': 'Password reset email sent'};
    } on FirebaseAuthException catch (e) {
      String message;
      switch (e.code) {
        case 'user-not-found':
          message = 'No user found with this email.';
          break;
        case 'invalid-email':
          message = 'The email address is invalid.';
          break;
        default:
          message = 'Error: ${e.message}';
      }
      return {'success': false, 'message': message};
    } catch (e) {
      return {'success': false, 'message': 'An error occurred: $e'};
    }
  }

  // Stream of auth state changes
  Stream<User?> get authStateChanges => _auth.authStateChanges();
}
