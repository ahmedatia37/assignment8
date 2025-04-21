import 'package:flutter/material.dart';

class ForgetScreen extends StatelessWidget {
  const ForgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Forget Password",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),
        ),
        centerTitle: false,
      ),
      body: Padding(
          padding: const EdgeInsets.all(20),
      child: Column(
          children: [
            SizedBox(height: 200,),
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
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 90, vertical: 10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Sent OTP"),
                ],
              ),
            ),
        ],
      ),
      ),
    );
  }
}
