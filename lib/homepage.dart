import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class PortfolioHomePage extends StatelessWidget {
  const PortfolioHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prejith T S - Flutter Developer'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Section
              _buildProfileSection(),
              SizedBox(height: 20),

              // Summary Section
              _buildSectionTitle('Summary'),
              _buildSummarySection(),
              SizedBox(height: 20),

              // Professional Experience Section
              _buildSectionTitle('Professional Experience'),
              _buildExperienceSection(),
              SizedBox(height: 20),

              // Skills Section
              _buildSectionTitle('Skills'),
              _buildSkillsSection(),
              SizedBox(height: 20),

              // Education Section
              _buildSectionTitle('Education'),
              _buildEducationSection(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileSection() {
    return Center(
      child: Column(
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage(
                'assets/profile_image.jpg'), // Add your profile image
          ),
          SizedBox(height: 10),
          Text(
            'Prejith T S',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ).animate().fadeIn(duration: 500.ms),
          Text(
            'Flutter Developer',
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ).animate().fadeIn(duration: 500.ms),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.email, size: 16),
              SizedBox(width: 5),
              Text('prejithts102@gmail.com'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.phone, size: 16),
              SizedBox(width: 5),
              Text('+91 8086991977'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.link, size: 16),
              SizedBox(width: 5),
              Text('LinkedIn: Prejith T S'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ).animate().slideX(duration: 500.ms);
  }

  Widget _buildSummarySection() {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'Accomplished Mobile Application Developer with 3 years of experience, proficient in Flutter framework, SQL, and developing high-quality mobile applications. Skilled in analyzing user requirements and translating client needs into application design.',
          style: TextStyle(fontSize: 16),
        ),
      ),
    ).animate().fadeIn(duration: 500.ms);
  }

  Widget _buildExperienceSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildExperienceCard(
          'Leopard Tech Labs Pvt. Ltd.',
          'Sep 2021 - Mar 2024',
          [
            'E-Commerce Application Development: Designed and implemented Styloop.',
            'Online Food Delivery Application: Developed Pakt - Online Food Delivery.',
            'Ticket Booking and Asset Management System: Built Parambikulam.',
            'Whale Shark Monitoring Application: Delivered Whale Shark.',
            'Church Directory Application: Designed and published Church Directory.',
            'Employee Attendance System: Developed the Attendance App for WTI.',
            'Construction Site Management Application: Created Site Guide.',
            'Family Tree Visualization Application: Engineered Kinfolk.',
          ],
        ),
        SizedBox(height: 10),
        _buildExperienceCard(
          'Gigvoc Technologies Pvt. Ltd.',
          'Apr 2024 - Present',
          [
            'Ohyes App: Managed the development and maintenance of an online booking application.',
            'Ohyes Partner App: Led the design and development of a partner-facing application.',
            'MyQPad: Directed the creation of an online booking platform.',
          ],
        ),
      ],
    );
  }

  Widget _buildExperienceCard(
      String company, String duration, List<String> points) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              company,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              duration,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: points.map((point) => Text('• $point')).toList(),
            ),
          ],
        ),
      ),
    ).animate().slideX(duration: 500.ms);
  }

  Widget _buildSkillsSection() {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        _buildSkillChip('Flutter Framework'),
        _buildSkillChip('Dart'),
        _buildSkillChip('RESTful APIs'),
        _buildSkillChip('Payment Gateway Integration'),
        _buildSkillChip('Firebase'),
        _buildSkillChip('Google Maps Integration'),
        _buildSkillChip('BLoC Architecture'),
        _buildSkillChip('Git/Version Control'),
      ],
    ).animate().fadeIn(duration: 500.ms);
  }

  Widget _buildSkillChip(String skill) {
    return Chip(
      label: Text(skill),
      backgroundColor: Colors.blue[50],
    );
  }

  Widget _buildEducationSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildEducationCard(
          'Bachelor of Information Technology (IT)',
          'APJ Abdul Kalam Technological University, Amal Jyothi College of Engineering',
          '2017 - 2021',
        ),
        SizedBox(height: 10),
        _buildEducationCard(
          'Higher Secondary Education',
          'St. Mary’s HSS, Idukki, Kerala',
          '2015 - 2017',
        ),
        SizedBox(height: 10),
        _buildEducationCard(
          'Secondary Education',
          'MAIHS, Viswanathapuram, Idukki, Kerala',
          '2009 - 2015',
        ),
      ],
    );
  }

  Widget _buildEducationCard(
      String degree, String institution, String duration) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              degree,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              institution,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            Text(
              duration,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ),
    ).animate().slideX(duration: 500.ms);
  }
}
