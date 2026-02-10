import 'package:flutter/material.dart';

import 'Dossy_main.dart';
import 'dashboard.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool ischecked =false;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String? _validateEmail(dynamic value) {
    if (value == null || value.trim().isEmpty) {
      return 'Email is required';
    }
    // Simple email regex
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (!emailRegex.hasMatch(value.trim())) {
      return 'Enter a valid email';
    }
    return null; // Valid
  }
  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null; // Valid
  }
  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // All validations passed
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Form submitted successfully!')),
      );
      Navigator.push(context, MaterialPageRoute(builder: (context)=>DossyMain()));
    }
  }
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    TextEditingController? phoneController=TextEditingController();
    return Scaffold(
        body:Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 70,
                ),
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: IconButton(onPressed:(){}, icon:Icon(Icons.arrow_back_ios,size: 30,)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,top: 10),
                  child: Text("Sign Up", style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 180,
                      child: TextField(
                        controller: phoneController,
                        decoration: InputDecoration(
                            label: Text("First name"),

                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14),
                                borderSide: BorderSide(color: Colors.greenAccent)
                            ),
                            focusedBorder: OutlineInputBorder(

                                borderRadius: BorderRadius.circular(14),
                                borderSide:BorderSide(color: Colors.blue)

                            )
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 180,
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: phoneController,
                        decoration: InputDecoration(
                            label: Text("Last Name"),

                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14),
                                borderSide: BorderSide(color: Colors.greenAccent)
                            ),
                            focusedBorder: OutlineInputBorder(

                                borderRadius: BorderRadius.circular(14),
                                borderSide:BorderSide(color: Colors.blue)

                            )
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: phoneController,
                    decoration: InputDecoration(
                        label: Text("phone"),

                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide(color: Colors.greenAccent)
                        ),
                        focusedBorder: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(14),
                            borderSide:BorderSide(color: Colors.blue)

                        )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                        label: Text("email"),

                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide(color: Colors.greenAccent)
                        ),
                        focusedBorder: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(14),
                            borderSide:BorderSide(color: Colors.blue)

                        )
                    ),
                    validator: _validateEmail,

                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 180,
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                            label: Text("Password"),

                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14),
                                borderSide: BorderSide(color: Colors.greenAccent)
                            ),
                            focusedBorder: OutlineInputBorder(

                                borderRadius: BorderRadius.circular(14),
                                borderSide:BorderSide(color: Colors.blue)

                            )
                        ),
                        validator: _validatePassword,
                      ),
                    ),
                    SizedBox(
                      width: 180,
                      child: TextField(
                        controller: phoneController,
                        obscureText: true,
                        decoration: InputDecoration(
                            label: Text("confirm Password"),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14),
                                borderSide: BorderSide(color: Colors.greenAccent)
                            ),
                            focusedBorder: OutlineInputBorder(

                                borderRadius: BorderRadius.circular(14),
                                borderSide:BorderSide(color: Colors.blue)

                            )
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left:0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(value: ischecked, onChanged: (ischeck){
                        setState(() {
                          ischecked=ischeck!;
                        });
                      }),
                      Text("By clicking on Sign up you agree to terms & conditions", style: TextStyle(fontSize: 11,
                          color: Colors.black45,
                          ),),

                      TextButton(onPressed: () {},
                          child: Text("Terms and Conditions", style: TextStyle(fontSize: 10,
                              color: Colors.black,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.black,
                              decorationThickness: 3),)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:30.0,top: 30),
                  child: Container(
                    height: 50,
                    width: 340,
                    decoration: BoxDecoration(
                        color: Color(0xff00D9AE), borderRadius: BorderRadius.circular(12)),
                    child: FilledButton(
                        onPressed: () {
                          _submitForm();
                        },
                        style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(Colors.transparent)
                        ),
                        child: Center(child: Text("SignUp", style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                          textAlign: TextAlign.center,
                        ),)),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 68.0),
                  child: Text(" Or SignUP using Social Media ",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black45,
                  ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:20.0,top: 30),
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.blue, borderRadius: BorderRadius.circular(12)),
                        child: FilledButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll(Colors.transparent)
                            ),
                            child: Center(child: Row(
                              children: [
                                SizedBox(
                                    height: 20,
                                    width: 40,
                                    child: Image.asset("assets/Facebook.png",)),
                                Text("Facebook", style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:30.0,top: 30),
                      child: Container(
                        height: 50,
                        width: 170,
                        decoration: BoxDecoration(
                            color: Colors.white, borderRadius: BorderRadius.circular(12)),
                        child: FilledButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll(Colors.transparent)
                            ),
                            child: Center(child: Row(
                              children: [
                                SizedBox(
                                    height: 20,
                                    width: 40,
                                    child: Image.asset("assets/google-icon.png",)),
                                Text("Google", style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black,
                                ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: TextButton(onPressed: () {},
                      child: Text("Guest User", style: TextStyle(fontSize: 16,
                          color: Colors.greenAccent,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.greenAccent,
                          decorationThickness: 3),)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Dont have account ? ", style: TextStyle(fontSize: 16,
                      color: Colors.black45,
                    ),),
                    TextButton(onPressed: () {},
                        child: Text("Login", style: TextStyle(fontSize: 16,
                            color: Colors.greenAccent,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.greenAccent,
                            decorationThickness: 3),)),
                  ],
                ),
              ],
            ),
          ),
        )
    );
  }
}
