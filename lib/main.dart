
import 'package:flutter/material.dart';
void main(){
  runApp(App());
}
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'User Input',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.teal
        ),
        home:Practise6()
    );
  }
}
class Practise6 extends StatelessWidget{
  var email=TextEditingController();
  var password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LOGIN SCREEN'),
      ),
      body: Container(
        color:Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Container(
            width: 300,
            child: Center(
              child: Column(
                children: [
                  Container(
                    height:50,
                  ),
                  const CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.white,
                    child:Center(
                      child: Icon(
                          Icons.account_circle_sharp,
                          color: Colors.teal,
                          size:170
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                  ),
                  TextField(
                    controller: email,
                    decoration: InputDecoration(
                        hintText: 'Email',
                        enabledBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                                color: Colors.teal,
                                width: 2
                            )
                        ),
                        focusedBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                                color: Colors.cyan,
                                width:2
                            )
                        ),
                        disabledBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                                color: Colors.black26,
                                width:2
                            )
                        ),
                        prefixIcon:IconButton(
                          icon: const Icon(Icons.email_outlined),
                          onPressed:(){
                          },
                        )
                    ),
                  ),
                  Container(
                    height: 20,
                  ),
                  TextField(
                      controller:password,
                      keyboardType: TextInputType.phone,
                      enabled: true,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password",
                        enabledBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                                color: Colors.teal,
                                width:2
                            )
                        ),
                        focusedBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                                color: Colors.cyan,
                                width:2
                            )
                        ),
                        disabledBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                                color: Colors.black26,
                                width:2
                            )
                        ),
                        prefixIcon:IconButton(
                          icon: const Icon(Icons.password),
                          onPressed:(){
                          },
                        ),
                        suffixIcon:IconButton(
                          icon: const Icon(Icons.remove_red_eye_outlined),
                          onPressed:(){
                          },
                        ),
                      )
                  ),
                  Container(
                    height: 30,
                  ),
                  Container(
                      height: 60,
                      width:300,
                      child: ElevatedButton(
                        onPressed: (){
                        },
                        child:const Text("SIGNUP" ,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            )),
                      )
                  ),
                  Container(
                    height: 30,
                  ),
                  Row(
                      children:[
                        Container(
                            width:20
                        ),
                        const Text("  Already have Account",
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold
                          ),),
                        Container(
                            width:10
                        ),
                        const Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.teal,
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ]
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}