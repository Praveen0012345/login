import 'package:flutter/material.dart';

class MyRegsiter extends StatefulWidget {
  const MyRegsiter({super.key});

  @override
  State<MyRegsiter> createState() => _MyRegsiterState();
}

class _MyRegsiterState extends State<MyRegsiter> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35,top:100),
              child: Text('Create\nAccount',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 33
                ),),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.36,
                  right: 35,
                  left: 35,
                ),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),
                    ),
                    SizedBox(
                      height:40 ,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Sign In',style: TextStyle(
                            color: Color(0xff4c505b),
                            fontSize: 27,fontWeight:FontWeight.w700
                        ),
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xff4c505b),
                          child: IconButton(
                            color: Colors.white,
                            onPressed: (){},
                            icon: Icon(Icons.arrow_forward),
                          ),
                        )

                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        TextButton(onPressed: (){
                          Navigator.pushNamed(context, 'register');
                        }, child: Text('sign Up',style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 18,
                          color: Color(0xff4c505b),
                        ),)),

                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}
