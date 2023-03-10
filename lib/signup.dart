import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class signup extends StatelessWidget {
  const signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80.0),
          child: AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
            title: const Text(
              "Sign Up",
              style: TextStyle(fontSize: 24.0),
            ),
          )),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        children: [
          const Text('Sign Up with one of following options.',
              style: TextStyle(fontSize: 18, color: Colors.grey)),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: width * 40 / 100,
                height: 60,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[700]!, width: 1),
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(16)),
                //  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 32),
                child: const Center(
                    child: Text(
                  'G',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: Colors.white),
                )),
              ),
              Container(
                width: width * 40 / 100,
                height: 60,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[700]!, width: 1),
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(16)),
                //  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 32),
                child: const Center(
                    child: Icon(
                  Icons.apple_outlined,
                  size: 36,
                  color: Colors.white,
                )),
              ),
            ],
          ),
          const SizedBox(height: 30),
          const Text('Name',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              )),
          const SizedBox(height: 4),
          Container(
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[800],
                border: Border.all(color: Colors.grey[500]!)),
            child: const Padding(
              padding: EdgeInsets.all(8),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                      //  contentPadding: EdgeInsets.only(left: 8),
                      suffixIcon: Icon(
                        Icons.done,
                        color: Colors.white,
                      ),
                      hintText: 'enter first and last name',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 20)),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Text('Email',
              style: TextStyle(fontSize: 18, color: Colors.white)),
          const SizedBox(height: 4),
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.grey[800],
              border: Border.all(color: Colors.grey[500]!),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'tim@apple.com',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 20)),
              ),
            ),
          ),
          const Text('Password',
              style: TextStyle(fontSize: 18, color: Colors.white)),
          const SizedBox(height: 4),
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.grey[800],
              border: Border.all(color: Colors.grey[500]!),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Pick a strong password',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 20)),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Container(
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                gradient: const LinearGradient(
                    colors: [Colors.lightBlue, Colors.pink])),
            child: const Center(
                child: Text(
              'Create Account',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            )),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Already have an account? ',
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
              // Text(
              //   'Log In',
              //   style: TextStyle(
              //       color: Colors.white,
              //       fontSize: 20,
              //       fontWeight: FontWeight.bold),
              // ),
            ],
          )
        ],
      ),
    );
  }
}
