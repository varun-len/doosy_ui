import 'package:flutter/material.dart';
import 'package:untitled2/Doosy_UI/register.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController? phoneController=TextEditingController();
    return Scaffold(
        body:SingleChildScrollView(
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
          child: Text("Log In", style: TextStyle(
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
              Padding(
                padding: const EdgeInsets.all(20.0),
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
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: Row(
                  children: [
                    TextButton(onPressed: () {},
                        child: Text("click hear for Email Login ", style: TextStyle(fontSize: 18,
                            color: Colors.black45,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.black45,
                            decorationThickness: 3),)),
                    SizedBox(
                      width: 20,
                    ),
                    TextButton(onPressed: () {},
                        child: Text("Forgot Password", style: TextStyle(fontSize: 18,
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
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(Colors.transparent)
                      ),
                      child: Center(child: Text("Log In", style: TextStyle(
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
                padding: const EdgeInsets.only(left: 38.0),
                child: Text(" Or Log in using Social Media ",style: TextStyle(
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
                  TextButton(onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RegisterScreen(),));
                  },
                      child: Text("SignUp", style: TextStyle(fontSize: 16,
                          color: Colors.greenAccent,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.greenAccent,
                          decorationThickness: 3),)),
                ],
              ),
            ],
          ),
        )
    );
  }
}
