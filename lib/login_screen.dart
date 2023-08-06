import 'package:flutter/material.dart';
import 'package:simple_login_ui/widgets/my_textformfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool _passwordVisible = false;
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/download.jpg'), fit: BoxFit.cover)),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                  20, size.height * 0.17, 20, size.height * 0.05),
              child: const Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/profile.jpg'),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Flutter UI',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                    SizedBox(height: 11.0),
                    Text(
                      'The journey of a thousand\nmiles begins with a single step.',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: size.width,
                padding: const EdgeInsets.fromLTRB(20, 30, 20, 0.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Login',style: TextStyle(color: Colors.black,fontSize: 18.0,fontWeight: FontWeight.bold),),
                      const MyTextFormField(title: 'Your Email', hint: 'Email', iconData: Icons.mail),
                      MyTextFormField(
                          title: 'Your Password', 
                          hint: 'Password', 
                          iconData: Icons.key,
                        obscureText: _obscureText,
                        suffixIcon: IconButton(
                          onPressed: (){
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                              _obscureText = !_obscureText;
                            });
                          },
                            icon: _passwordVisible?
                          const Icon(Icons.visibility):
                          const Icon(Icons.visibility_off),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't have an account?",style: TextStyle(color: Colors.black54,fontSize: 16),),
                          TextButton(onPressed: (){}, child: const Text('Sign Up Now',style: TextStyle(color: Colors.black),),),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
