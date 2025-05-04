import 'package:flutter/material.dart';
import 'package:kereta3/widgets/alert.dart';

class LoginUser extends StatefulWidget {
  const LoginUser({super.key});

  @override
  State<LoginUser> createState() => _RegisterUserState();
}

class _RegisterUserState extends State<LoginUser> {
  final formKey = GlobalKey<FormState>();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  getUser()async{
  if(password.text==password.text){
      var data = {
    "username": username.text,
    "password": password.text,
  };

  } else {
    AlertMessage().showAlert(context, 'password tidak cocok', false);
  }
}
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(72, 83, 159, 10),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('RailTrack', 
              style: TextStyle(
                fontSize: 30, 
                color: Colors.white,
                fontWeight: FontWeight.bold),
                ),


            SizedBox(height: 40,),
            Container(
                    height: 355,
                    width: 317,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Form(
                    key: formKey,
                  child : Column(
                    children: [
                      //USERNAME
                      SizedBox(height: 25),
                      TextFormField(
                        controller: username,
                        decoration: InputDecoration(
                        label: Text('Username'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none
                        ),
                        fillColor: Colors.grey[150],
                        filled: true,
                        ),
        ),

                  //PASSWORD
                      SizedBox(height: 20),
                      TextFormField(
                        controller: password,
                        decoration: InputDecoration(
                        label: Text('Password'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none
                          ),
                          fillColor: Colors.grey[150],
                          filled: true,
                        ),
                        ),
                        SizedBox(height: 15),
                       Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Lupa Password?', 
                            style: TextStyle(fontSize: 10, color: Colors.blue[600]),),
                        ],
                       ),
                      SizedBox(height: 30),
                      ElevatedButton(onPressed:(){
                        Navigator.pushNamed(context, '/masuk');
                      }, 
                      child: Text('Masuk', 
                      style: TextStyle(fontSize: 13),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(
                        ),
                        padding: EdgeInsets.symmetric(horizontal:20),
                      ),
                      ),
                    ],
                  ),
                  ),
              ],
              ),
            )
          ],
        ),
      )
    );
  }
}