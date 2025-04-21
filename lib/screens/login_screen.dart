import 'package:assignment8a/screens/forget_screen.dart';
import 'package:assignment8a/screens/register_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 50,),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.green),
              ),
              padding: EdgeInsets.all(5),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.green),
              ),
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.green),
                  prefixIcon: Icon(Icons.lock, color: Colors.green),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.remove_red_eye, color: Colors.green),
                    onPressed: () {},
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    print("Text pressed!");
                    Navigator.push(
                      context,
                    MaterialPageRoute(builder: (context)=> ForgetScreen())
                    );
                  },
                  child: Text(
                    "Forget Password",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 90, vertical: 10),
                  ),
                  child: Text("Login"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                    MaterialPageRoute(builder: (context)=> RegisterScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  ),
                  child: Text("Register"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}