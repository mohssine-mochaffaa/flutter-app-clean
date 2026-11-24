import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  bool _passwordVisible = false;

  final _formKey = GlobalKey<FormState>();

  String? _validateEmail(String? value){
    if (value == null || value.isEmpty) {
      return "Please enter your email";
    }

    final emailPattern = r'^[^@]+@[^@]+\.[^@]+$';
    final regExp = RegExp(emailPattern);

    if(!regExp.hasMatch(value)){
      return "";
    }

    return null;
  }

  String? _validatePassword(String? value){
    if (value == null || value.isEmpty) {
      return "Please enter your password";
    }
    if(value.length < 6){
      return "Password must be at least 6 characters long";
    }
    return null;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text('Login page',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold))
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _formKey,
            child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("images/avatar.jpg",width: 80,height: 80,),
              Text("Welcome Back",style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold,fontSize: 30),),
              SizedBox(height: 30),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(Icons.email),
                ),
                validator: _validateEmail,
              ),

              SizedBox(height: 20,),

              TextFormField(
                obscureText: !_passwordVisible,
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: IconButton(onPressed: (){setState(() {
                    _passwordVisible = !_passwordVisible;
                  });}, icon: Icon(_passwordVisible ? Icons.visibility : Icons.visibility_off))
                ),
                validator: _validatePassword,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  backgroundColor: Colors.indigo,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  )
                ),
                onPressed: (){
                  if(_formKey.currentState!.validate()){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Processing Login"))
                    );
                    Navigator.pushNamed(context, "/home");
                  }
                }, child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 10),
              TextButton(onPressed: (){
                Navigator.pushNamed(context, "/register");
              }, child: Text("Don't have an account? Regiter Here!",style: TextStyle(
                color: Colors.purple,
                fontSize: 18,
                fontStyle: FontStyle.italic
              ),))
              ],
          ),
          ),
        ),
    );
  }
}