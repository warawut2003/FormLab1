import 'package:flutter/material.dart';
import 'pagetwo.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  double _currentSliderValue = 0;
  double _currentSliderValue2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Center(
                child: CircleAvatar(
                  radius: 120,
                  // สีพื้นหลังของ CircleAvatar
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(120),
                    child: Image.asset(
                      'assets/images/logo2.png',
                      width: 240, // ขนาดของภาพ
                      height: 240,
                      fit: BoxFit.cover, // การปรับขนาดของภาพ
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Register",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 3, 83, 149),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Name",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                style: TextStyle(
                    color: Colors.purple, fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "User",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                style: TextStyle(
                    color: Colors.purple, fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.supervised_user_circle),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Password",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                style: TextStyle(
                    color: Colors.purple, fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Weight: ${_currentSliderValue.round()} kg",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
              ),
              Slider(
                value: _currentSliderValue,
                max: 100,
                divisions: 20,
                label: _currentSliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Height: ${_currentSliderValue2.round()} cm",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
              ),
              Slider(
                value: _currentSliderValue2,
                max: 200,
                divisions: 20,
                label: _currentSliderValue2.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue2 = value;
                  });
                },
              ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(
                        255, 0, 72, 131), // สีพื้นหลังของปุ่ม
                    foregroundColor: Colors.white,
                    shadowColor: Colors.blueAccent,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PageTwo()),
                    );
                  },
                  child: const Text(
                    'Next',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
