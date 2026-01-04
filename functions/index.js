const functions = require('firebase-functions');
const admin = require('firebase-admin');
admin.initializeApp();

// Send push notification when a notification document is created
exports.sendNotificationOnCreate = functions.firestore
  .document('notifications/{notificationId}')
  .onCreate(async (snapshot, context) => {
    try {
      const notificationData = snapshot.data();
      const userId = notificationData.userId;
      
      // Get user's FCM token
      const userDoc = await admin.firestore()
        .collection('users')
        .doc(userId)
        .get();
      
      if (!userDoc.exists) {
        console.log('User not found:', userId);
        return null;
      }
      
      const fcmToken = userDoc.data().fcmToken;
      
      if (!fcmToken) {
        console.log('No FCM token for user:', userId);
        return null;
      }
      
      // Prepare notification payload
      const payload = {
        token: fcmToken,
        notification: {
          title: notificationData.title || 'CampusHub',
          body: notificationData.description || 'New notification',
        },
        data: {
          type: notificationData.type || 'general',
          relatedId: notificationData.relatedId || '',
          notificationId: snapshot.id,
        },
        android: {
          priority: 'high',
          notification: {
            sound: 'default',
            channelId: 'campus_hub_channel',
            priority: 'high',
            defaultSound: true,
            defaultVibrateTimings: true,
          },
        },
        apns: {
          payload: {
            aps: {
              sound: 'default',
              badge: 1,
            },
          },
        },
      };
      
      // Send the notification
      const response = await admin.messaging().send(payload);
      console.log('Successfully sent notification:', response);
      
      return response;
    } catch (error) {
      console.error('Error sending notification:', error);
      return null;
    }
  });

// Send notification when lost item is posted
exports.sendLostItemNotification = functions.firestore
  .document('lost_items/{itemId}')
  .onCreate(async (snapshot, context) => {
    try {
      const itemData = snapshot.data();
      const title = '🔔 Lost Item Alert';
      const body = `${itemData.userName} reported a lost ${itemData.title} at ${itemData.location}`;
      
      // Get all users
      const usersSnapshot = await admin.firestore()
        .collection('users')
        .get();
      
      const tokens = [];
      usersSnapshot.forEach(doc => {
        const fcmToken = doc.data().fcmToken;
        if (fcmToken) {
          tokens.push(fcmToken);
        }
      });
      
      if (tokens.length === 0) {
        console.log('No FCM tokens found');
        return null;
      }
      
      // Send to multiple devices
      const payload = {
        notification: {
          title: title,
          body: body,
        },
        data: {
          type: 'match',
          relatedId: snapshot.id,
        },
        android: {
          priority: 'high',
          notification: {
            sound: 'default',
            channelId: 'campus_hub_channel',
          },
        },
      };
      
      const response = await admin.messaging().sendEachForMulticast({
        tokens: tokens,
        ...payload,
      });
      
      console.log(`Successfully sent ${response.successCount} notifications`);
      return response;
    } catch (error) {
      console.error('Error sending lost item notification:', error);
      return null;
    }
  });

// Send notification when found item is posted
exports.sendFoundItemNotification = functions.firestore
  .document('found_items/{itemId}')
  .onCreate(async (snapshot, context) => {
    try {
      const itemData = snapshot.data();
      const title = '✅ Found Item Posted';
      const body = `${itemData.userName} found a ${itemData.title} at ${itemData.location}`;
      
      // Get all users
      const usersSnapshot = await admin.firestore()
        .collection('users')
        .get();
      
      const tokens = [];
      usersSnapshot.forEach(doc => {
        const fcmToken = doc.data().fcmToken;
        if (fcmToken) {
          tokens.push(fcmToken);
        }
      });
      
      if (tokens.length === 0) {
        console.log('No FCM tokens found');
        return null;
      }
      
      // Send to multiple devices
      const payload = {
        notification: {
          title: title,
          body: body,
        },
        data: {
          type: 'resolved',
          relatedId: snapshot.id,
        },
        android: {
          priority: 'high',
          notification: {
            sound: 'default',
            channelId: 'campus_hub_channel',
          },
        },
      };
      
      const response = await admin.messaging().sendEachForMulticast({
        tokens: tokens,
        ...payload,
      });
      
      console.log(`Successfully sent ${response.successCount} notifications`);
      return response;
    } catch (error) {
      console.error('Error sending found item notification:', error);
      return null;
    }
  });

// Send notification when notice is posted
exports.sendNoticeNotification = functions.firestore
  .document('notices/{noticeId}')
  .onCreate(async (snapshot, context) => {
    try {
      const noticeData = snapshot.data();
      const title = `📌 New Notice: ${noticeData.category}`;
      const body = noticeData.title;
      
      // Get all users
      const usersSnapshot = await admin.firestore()
        .collection('users')
        .get();
      
      const tokens = [];
      usersSnapshot.forEach(doc => {
        const fcmToken = doc.data().fcmToken;
        if (fcmToken) {
          tokens.push(fcmToken);
        }
      });
      
      if (tokens.length === 0) {
        console.log('No FCM tokens found');
        return null;
      }
      
      // Send to multiple devices
      const payload = {
        notification: {
          title: title,
          body: body,
        },
        data: {
          type: 'exam',
          relatedId: snapshot.id,
        },
        android: {
          priority: 'high',
          notification: {
            sound: 'default',
            channelId: 'campus_hub_channel',
          },
        },
      };
      
      const response = await admin.messaging().sendEachForMulticast({
        tokens: tokens,
        ...payload,
      });
      
      console.log(`Successfully sent ${response.successCount} notifications`);
      return response;
    } catch (error) {
      console.error('Error sending notice notification:', error);
      return null;
    }
  });

// Send notification when event is posted
exports.sendEventNotification = functions.firestore
  .document('events/{eventId}')
  .onCreate(async (snapshot, context) => {
    try {
      const eventData = snapshot.data();
      const title = `🎉 New Event: ${eventData.category}`;
      const body = `${eventData.society} - ${eventData.title}`;
      
      // Get all users
      const usersSnapshot = await admin.firestore()
        .collection('users')
        .get();
      
      const tokens = [];
      usersSnapshot.forEach(doc => {
        const fcmToken = doc.data().fcmToken;
        if (fcmToken) {
          tokens.push(fcmToken);
        }
      });
      
      if (tokens.length === 0) {
        console.log('No FCM tokens found');
        return null;
      }
      
      // Send to multiple devices
      const payload = {
        notification: {
          title: title,
          body: body,
        },
        data: {
          type: 'event',
          relatedId: snapshot.id,
        },
        android: {
          priority: 'high',
          notification: {
            sound: 'default',
            channelId: 'campus_hub_channel',
          },
        },
      };
      
      const response = await admin.messaging().sendEachForMulticast({
        tokens: tokens,
        ...payload,
      });
      
      console.log(`Successfully sent ${response.successCount} notifications`);
      return response;
    } catch (error) {
      console.error('Error sending event notification:', error);
      return null;
    }
  });
