import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
    String _gender = 'male';
  String _relationship = 'single';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Personal Details'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Add navigation logic here
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Center(
                    child: Text(
                      'Add Cover Photo',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -25,
                  left: MediaQuery.of(context).size.width / 2 - 50,
                  child: GestureDetector(
                    onTap: () {
                      // Add profile photo logic here
                    },
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.grey[300],
                      child: const Center(
                        child: Text(
                          'Add Profile Photo',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            const Text(
              'Enter Your Name',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'First name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Lastname',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
               const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'D/M/Y',
                      labelText: 'Date of Birth',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Gender',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ListTile(
                              title: const Text('Male'),
                              leading: Radio(
                                value: 'male',
                                groupValue: _gender,
                                onChanged: (String? value) {
                                  setState(() {
                                    _gender = value!;
                                  });
                                },
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title: const Text('Female'),
                              leading: Radio(
                                value: 'female',
                                groupValue: _gender,
                                onChanged: (String? value) {
                                  setState(() {
                                    _gender = value!;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'Category',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Wrap(
              spacing: 8.0,
              children: [
                Chip(
                  label: const Text('Actor'),
                  onDeleted: () {
                    // Add delete logic here
                  },
                ),
                Chip(
                  label: const Text('Model'),
                  onDeleted: () {
                    // Add delete logic here
                  },
                ),
                Chip(
                  label: const Text('Makeup Artiste'),
                  // Clip clipBehavior = Clip.none,
                  onDeleted: () {
                    // Add delete logic here
                  },
                ),
              ],
            ),
            const SizedBox(height: 10),
            const TextField(
              maxLines: 3,
              decoration: InputDecoration(
                hintText: 'Bio to tell people more about yourself.',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Country',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Relationship',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    title: const Text('Single'),
                    leading: Radio(
                      value: 'single',
                      groupValue: _relationship,
                      onChanged: (String? value) {
                        setState(() {
                          _relationship = value!;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: const Text('In a relationship'),
                    leading: Radio(
                      value: 'relationship',
                      groupValue: _relationship,
                      onChanged: (String? value) {
                        setState(() {
                          _relationship = value!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    title: const Text('Engaged'),
                    leading: Radio(
                      value: 'engaged',
                      groupValue: _relationship,
                      onChanged: (String? value) {
                        setState(() {
                          _relationship = value!;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: const Text('Married'),
                    leading: Radio(
                      value: 'married',
                      groupValue: _relationship,
                      onChanged: (String? value) {
                        setState(() {
                          _relationship = value!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add save logic here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}