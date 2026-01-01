import 'package:flutter/material.dart';
import '../auth/auth_service.dart';
import '../auth/login_screen.dart';
import 'profile/edit_profile_screen.dart';
import 'profile/my_lost_items_screen.dart';
import 'profile/my_found_items_screen.dart';
import 'profile/help_support_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final AuthService _authService = AuthService();
  String _userName = 'User';
  String _userEmail = '';
  String _studentId = '';
  String _department = '';
  String _phoneNumber = '';
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    try {
      final user = _authService.currentUser;
      if (user != null) {
        final userData = await _authService.getUserData(user.uid);
        if (userData != null && mounted) {
          setState(() {
            _userName = userData['fullName'] ?? user.displayName ?? 'User';
            _userEmail = user.email ?? '';
            _studentId = userData['studentId'] ?? '';
            _department = userData['department'] ?? '';
            _phoneNumber = userData['phoneNumber'] ?? '';
            _isLoading = false;
          });
        } else if (mounted) {
          setState(() {
            _userName = user.displayName ?? 'User';
            _userEmail = user.email ?? '';
            _isLoading = false;
          });
        }
      } else if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  Future<void> _handleLogout() async {
    // Show confirmation dialog
    final shouldLogout = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Logout'),
        content: const Text('Are you sure you want to logout?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Logout', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );

    if (shouldLogout != true) return;

    try {
      // Show loading
      if (mounted) {
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) =>
              const Center(child: CircularProgressIndicator()),
        );
      }

      await _authService.logout();

      if (mounted) {
        // Remove loading dialog
        Navigator.pop(context);

        // Navigate to login and remove all previous routes
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
          (route) => false,
        );
      }
    } catch (e) {
      if (mounted) {
        // Remove loading dialog
        Navigator.pop(context);

        // Show error
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to logout: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  String _getInitials(String name) {
    List<String> names = name.trim().split(' ');
    if (names.length == 1) {
      return names[0].substring(0, 1).toUpperCase();
    }
    return (names[0].substring(0, 1) + names[names.length - 1].substring(0, 1))
        .toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black87),
          onPressed: () {
            // Navigation is handled by bottom nav, so this can be empty
          },
        ),
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_outlined, color: Colors.black87),
            onPressed: () {
              // TODO: Navigate to settings
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              // Profile Avatar Section
              Center(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: const Color(0xFF2196F3),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      _getInitials(_userName),
                      style: const TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                _userName,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                _userEmail,
                style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
              ),
              const SizedBox(height: 24),

              // Info Cards
              _buildInfoRow(
                Icons.school_outlined,
                'Student ID',
                _studentId.isEmpty ? 'Not provided' : _studentId,
                Colors.blue,
              ),
              const SizedBox(height: 12),
              _buildInfoRow(
                Icons.business_outlined,
                'Department',
                _department.isEmpty ? 'Not provided' : _department,
                Colors.blue,
              ),
              const SizedBox(height: 12),
              _buildInfoRow(
                Icons.phone_outlined,
                'Phone',
                _phoneNumber.isEmpty ? 'Not provided' : _phoneNumber,
                Colors.blue,
              ),
              const SizedBox(height: 24),

              // Menu Items
              _buildMenuItem(Icons.edit_outlined, 'Edit Profile', () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EditProfileScreen(),
                  ),
                );
                if (result == true && mounted) {
                  _loadUserData();
                }
              }),
              _buildMenuItem(Icons.inventory_2_outlined, 'My Lost Items', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyLostItemsScreen(),
                  ),
                );
              }),
              _buildMenuItem(Icons.search_outlined, 'My Found Items', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyFoundItemsScreen(),
                  ),
                );
              }),
              _buildMenuItem(Icons.help_outline, 'Help & Support', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HelpSupportScreen(),
                  ),
                );
              }),
              const SizedBox(height: 24),

              // Logout Button
              Container(
                width: double.infinity,
                height: 56,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red, width: 1.5),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: _handleLogout,
                    borderRadius: BorderRadius.circular(12),
                    child: const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.logout, color: Colors.red, size: 20),
                          SizedBox(width: 8),
                          Text(
                            'LOGOUT',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              letterSpacing: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value, Color color) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: color, size: 22),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String title, VoidCallback onTap) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Icon(icon, color: Colors.grey.shade700, size: 24),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        trailing: Icon(Icons.chevron_right, color: Colors.grey.shade400),
        onTap: onTap,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      ),
    );
  }
}
