import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas Dwiki'),
        backgroundColor: Colors.deepPurple,
        elevation: 4,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              elevation: 4,
              margin: const EdgeInsets.all(16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage(
                        'assets/images/dwiki.png',
                      ),
                    ),
                    const SizedBox(height: 16),
                    
                    Text(
                      'Dwiki Dzaki Yudi Putra',
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const Card(
              elevation: 2,
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListTile(
                leading: Icon(Icons.email, color: Colors.deepPurple),
                title: Text('Email'),
                subtitle: Text('dwiki834@student.esaunggul.ac.id'),
                
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: 1,
        selectedItemColor: Colors.deepPurple,
      ),
    );
  }
}
