import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'add_notice_screen.dart';

class NoticeScreen extends StatefulWidget {
  const NoticeScreen({super.key});

  @override
  State<NoticeScreen> createState() => _NoticeScreenState();
}

class _NoticeScreenState extends State<NoticeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  String _selectedDepartment = 'All Departments';

  final List<String> _departments = [
    'All Departments',
    'CSE Department',
    'ECE Department',
    'Mechanical Department',
    'Civil Department',
    'Administration',
  ];

  final List<String> _categories = [
    'All',
    'Events',
    'Exams',
    'Holidays',
    'Deadlines',
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _categories.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Color _getCategoryColor(String category) {
    switch (category) {
      case 'EVENT':
        return Colors.orange;
      case 'EXAM':
        return Colors.blue;
      case 'HOLIDAY':
        return Colors.green;
      case 'DEADLINE':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black87),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Notice Board',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black87),
            onPressed: () {
              // Search functionality
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: TabBar(
            controller: _tabController,
            isScrollable: true,
            indicatorColor: const Color(0xFF2196F3),
            indicatorWeight: 3,
            labelColor: const Color(0xFF2196F3),
            unselectedLabelColor: Colors.grey,
            labelStyle: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
            onTap: (index) {
              setState(() {});
            },
            tabs: _categories.map((category) => Tab(text: category)).toList(),
          ),
        ),
      ),
      body: Column(
        children: [
          // Department Filter
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(color: Colors.grey.shade200, width: 1),
              ),
            ),
            child: Row(
              children: [
                const Icon(Icons.filter_list, size: 20, color: Colors.grey),
                const SizedBox(width: 8),
                Expanded(
                  child: DropdownButton<String>(
                    value: _selectedDepartment,
                    isExpanded: true,
                    underline: const SizedBox(),
                    style: const TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    icon: const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.grey,
                    ),
                    items: _departments.map((department) {
                      return DropdownMenuItem(
                        value: department,
                        child: Text('Filter: $department'),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectedDepartment = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),

          // Notices List
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: _categories.map((category) {
                return _buildNoticesList(category);
              }).toList(),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddNoticeScreen()),
          );
        },
        backgroundColor: const Color(0xFF2196F3),
        child: const Icon(Icons.add, color: Colors.white, size: 28),
      ),
    );
  }

  Widget _buildNoticesList(String category) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection('notices')
          .where('status', isEqualTo: 'active')
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.notifications_none,
                  size: 64,
                  color: Colors.grey.shade400,
                ),
                const SizedBox(height: 16),
                Text(
                  'No notices found',
                  style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
                ),
              ],
            ),
          );
        }

        // Filter notices
        final filteredDocs = snapshot.data!.docs.where((doc) {
          final data = doc.data() as Map<String, dynamic>;
          final noticeCategory = data['category'] ?? '';
          final noticeDepartment = data['department'] ?? 'All Departments';

          // Category filter
          bool categoryMatch =
              category == 'All' ||
              noticeCategory == category.toUpperCase().replaceAll('S', '');

          // Department filter
          bool departmentMatch =
              _selectedDepartment == 'All Departments' ||
              noticeDepartment == _selectedDepartment;

          return categoryMatch && departmentMatch;
        }).toList();

        // Sort by timestamp (newest first)
        filteredDocs.sort((a, b) {
          try {
            final aData = a.data() as Map<String, dynamic>;
            final bData = b.data() as Map<String, dynamic>;
            final aTime = aData['timestamp'] as Timestamp?;
            final bTime = bData['timestamp'] as Timestamp?;

            if (aTime == null && bTime == null) return 0;
            if (aTime == null) return 1;
            if (bTime == null) return -1;

            return bTime.compareTo(aTime);
          } catch (e) {
            return 0;
          }
        });

        if (filteredDocs.isEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.search_off, size: 64, color: Colors.grey.shade400),
                const SizedBox(height: 16),
                Text(
                  'No notices match your filters',
                  style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
                ),
              ],
            ),
          );
        }

        return ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: filteredDocs.length,
          itemBuilder: (context, index) {
            final doc = filteredDocs[index];
            final data = doc.data() as Map<String, dynamic>;

            // Create notice map with color
            final notice = {
              'category': data['category'] ?? 'EVENT',
              'title': data['title'] ?? 'Untitled',
              'description': data['description'] ?? '',
              'date': data['date'] ?? 'No date',
              'department': data['department'] ?? 'All Departments',
              'color': _getCategoryColor(data['category'] ?? 'EVENT'),
            };

            return _buildNoticeCard(notice);
          },
        );
      },
    );
  }

  Widget _buildNoticeCard(Map<String, dynamic> notice) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border(left: BorderSide(color: notice['color'], width: 4)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Category Badge
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: notice['color'].withOpacity(0.1),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                notice['category'],
                style: TextStyle(
                  color: notice['color'],
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Title
            Text(
              notice['title'],
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),

            // Description
            Text(
              notice['description'],
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade700,
                height: 1.4,
              ),
            ),
            const SizedBox(height: 12),

            // Date and Department
            Row(
              children: [
                Icon(
                  Icons.calendar_today,
                  size: 14,
                  color: Colors.grey.shade600,
                ),
                const SizedBox(width: 6),
                Text(
                  notice['date'],
                  style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                ),
                const SizedBox(width: 16),
                Icon(Icons.business, size: 14, color: Colors.grey.shade600),
                const SizedBox(width: 6),
                Expanded(
                  child: Text(
                    notice['department'],
                    style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
