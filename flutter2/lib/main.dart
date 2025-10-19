import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
      home: Scaffold(
        backgroundColor: Colors.purple.shade50, 
        body: Padding(
          padding:  EdgeInsets.all(16), 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [

              
              Container(
          
                padding:  EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                      "Hello! 👋🏻",
                      style: TextStyle(
                        color: Colors.white,
                      
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                     SizedBox(height: 8),
                     Text(
                      "Try your best to build this UI",
                      style: TextStyle(color: Colors.white70),
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.deepPurple,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child:  Text("Get Started"),
                    ),
                  ],
                ),
              ),

              const  SizedBox(height: 20),

               Text(
                "Quick Stats",
                style: TextStyle( fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 10),

            
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:  [
                  Column(
                    children: [
                      Icon(Icons.people, color: Colors.deepPurple),
                      Text("1,234"),
                      Text("Users"),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.star, color: Colors.orange),
                      Text("4.8"),
                      Text("Rating"),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.trending_up, color: Colors.blue),
                      Text("98%"),
                      Text("Success"),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 20),

               Text(
                "Features",
                style: TextStyle( fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 10),

              
              Container(
                padding:  EdgeInsets.all(12),
                margin:  EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.speed, color: Colors.purple),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Fast Performance",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(height: 4),
                          Text(
                            "Lightning fast app performance",
                            style: TextStyle(color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              
              Container(
                padding: const EdgeInsets.all(12),
            
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child:  Row(
                  children: [
                    Icon(Icons.lock, color: Colors.blue),
                    SizedBox(width: 10),
              
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Secure",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(height: 4),
                          Text(
                            "Your data is safe with us",
                            style: TextStyle(color: Colors.black54),
                          ),
                        ],
                      ),]
                    ),
                  ],
                ),
              ),

              // ميزة رقم 3
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.brush, color: Colors.orange),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Beautiful UI",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(height: 4),
                          Text(
                            "Modern and clean design",
                            style: TextStyle(color: Colors.black54, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const Spacer(), 

              
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text("Settings"),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text("Profile"),
                    ),
                  ),
                ],
              ),
            ,
          ),
        ),
  
  }
}