import 'package:flutter/material.dart';
import 'package:frontend/login.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],

      appBar: AppBar(
        title: const Text("Dashboard"),
        backgroundColor: Colors.green,
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        selectedItemColor: Colors.green,
        backgroundColor: Colors.black,
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                child: const Text("Go to Login Page"),
              ),

              const SizedBox(height: 16),

              const Text("Good Morning!", style: TextStyle(fontSize: 12)),
              const Text(
                "Minahil Gul",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),

              TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              const SizedBox(height: 24),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Popular Categories",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.arrow_forward),
                ],
              ),

              const SizedBox(height: 12),

              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    categoryImage("assets/images/img.png"),
                    categoryImage("assets/images/img.png"),
                    categoryImage("assets/images/img.png"),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Today's Vaccinated Child",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.arrow_forward),
                ],
              ),

              const SizedBox(height: 12),

              workoutCard(),
              workoutCard(),
              workoutCard(),
              workoutCard(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget categoryImage(String imagePath) {
  return Container(
    margin: const EdgeInsets.only(right: 12),
    width: 100,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
    ),
  );
}

Widget workoutCard() {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 6),
    decoration: BoxDecoration(
      color: Colors.green[200],
      borderRadius: BorderRadius.circular(12),
    ),
    child: ListTile(
      leading: Image.asset("assets/images/img.png"),
      title: const Text("Total Child"),
      subtitle: const Text("5 Days\Under 5 Years child"),
    ),
  );
}