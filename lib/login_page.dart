import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget{
//   @override
//   Widget build(Object context){
//     return MaterialApp(
//       home: loginPage(),
//     );
//   }
// }

class loginPage extends StatelessWidget
{
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Column(
          children: [
            Text('Hello, Welcome Back!'),
              style: TextStyle(
                color: White.white,
                fontSize: 22,
                fontWeight: fontWeight.bold,
              ),
              SizedBox(
                height: 16,
              )
            Text('Log-in to continue',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              
            )),
            TextField(
              decoration: InputDecoration(hintText: 'Username',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)))),
                filled: true,
                fillColor: Colors.white.withOpacity(0.5),
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)))),
                filled: true,
                fillColor: Colors.white.withOpacity(0.5),
              )),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton
              onPressed: () {
                print('Forgot is clicked');
              },
              child: Text('Forgot Password'),
            ),
            ElevatedButton(
              onPressed: () {
                print('Login is clicked');
              },
              child: Text('Log In'),
            ),
            Text('Or sign in with:'),
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
                  Text('Log in with Google'),
                ],
              )),
            ElevatedButton(
              onPressed: () {
                print('Facebook is clicked');
              },
              child: Row(
                children: [
                  Image.asset(
                    'images/facebook.png',
                    height: 22,
                    width: 22,
                  ),
                  Text('Log in with Facebook'),
                ],
              )),
              Row(
                children: [
                  Text("Don't have an account? "),
                  TextButton(onPressed: () {}, child: Text('Sign up'))
                ],
              )
          ]
        ),
    );
    }
  }