import 'package:cortel_flutter_app/home_page.dart';
import 'package:flutter/material.dart';
import 'package:cortel_flutter_app/app_color.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/loginbg.webp'), // Set your image path here
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: 24),
              Text(
                "AveLona's Cake Shop",
                style: TextStyle(
                  color: Color.fromARGB(255, 227, 21, 238),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('log-in to continue'),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.5),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.5),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.visibility),
                    onPressed: () {
                      // Toggle password visibility
                    },
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    print('Forgot is clicked');
                  },
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 4, 217),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 227, 13, 177),
                    foregroundColor: Colors.white,
                  ),
                  child: Text('Log in'),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Or sign in with:',
                style: TextStyle(
                  color: Color.fromARGB(255, 239, 11, 182),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  print('google is clicked');
                },
                child: Row(
                  children: [
                    Image.asset(
                      'images/google.jpg',
                      height: 22,
                      width: 22,
                    ),
                    Text(
                      'Log in with google',
                      style: TextStyle(
                        color: Color.fromARGB(255, 231, 7, 175),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  print('Facebook is clicked');
                },
                child: Row(
                  children: [
                    Image.asset(
                      'images/facebook.webp',
                      height: 30,
                      width: 22,
                    ),
                    Text(
                      'Log in with facebook',
                      style: TextStyle(
                        color: Color.fromARGB(255, 233, 6, 172),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    'Dont have an account:',
                    style: TextStyle(
                      color: Color.fromARGB(255, 232, 9, 202),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        color: Color.fromARGB(255, 225, 18, 215),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
