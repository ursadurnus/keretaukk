import 'package:flutter/material.dart';
import 'package:kereta3/services/register_user.dart';
import 'package:kereta3/widgets/alert.dart';

class RegisterUser extends StatefulWidget {
  const RegisterUser({super.key});

  @override
  State<RegisterUser> createState() => _RegisterUserState();
}

class _RegisterUserState extends State<RegisterUser> {
  final formKey = GlobalKey<FormState>();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController nik = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController konfirmasi = TextEditingController();

getUser()async{
  if(konfirmasi.text==password.text){
      var data = {
    "username": username.text,
    "password": password.text,
    "nik": nik.text,
    "name": name.text,
    "address": address.text,
    "phone": phone.text,
  };
  var result = await UserService().registerUser(data);
  print(result.message);
  AlertMessage().showAlert(context, result.message, result.status);
  if(result.status==true){
    Navigator.pushNamed(context, '/login');
  }else{}

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
      body: SingleChildScrollView(
        child: Container(
          color: const Color.fromRGBO(72, 83, 159, 10),
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 40,),
              Text('RailTrack', style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),),
              SizedBox(height: 35,),
              Container(
                      height: 650,
                      width: 450,
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
                      child: Column(
                        children: [
                          SizedBox(height: 25),
                          TextFormField(
                            controller:username,
                            decoration: InputDecoration(
      
                            // 'username',
                            label: Text('Username', style: TextStyle(fontSize: 14),),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none,
                            ),
                            fillColor: Colors.grey[150],
                            filled: true,
                            ),
                            ),
                          SizedBox(height: 25,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text('buat password baru', style: TextStyle(fontSize: 10),)
                            ],
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            controller: password,
                            decoration: InputDecoration(
                            
                            // hintText: 'Password',
                            label: Text('Password', style: TextStyle(fontSize: 14),),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none
                              ),
                              fillColor: Colors.grey[150],
                              filled: true,
                            ),
                            ),
      
      
                            //konfirmasi pw
                            SizedBox(height: 10),
                          TextFormField(
                            controller: konfirmasi,
                            decoration: InputDecoration(
                            label: Text('Konfirmasi Password', style: TextStyle(fontSize: 14),),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none
                              ),
                              fillColor: Colors.grey[150],
                              filled: true,
                            ),
                            ),
      
      
                      SizedBox(height: 25,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text('data pribadi', style: TextStyle(fontSize: 10),)
                            ],
                          ),
      
                            //NAME
                            SizedBox(height: 10,),
                            TextFormField(
                              controller: name,
                              decoration: InputDecoration(
                                label: Text('Nama', style: TextStyle(fontSize: 14),),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none,
                            ),
                                fillColor: Colors.grey[150],
                                filled: true,
                              ),
                            ),
      
                            
                             //NIK
                            SizedBox(height: 10,),
                            TextFormField(
                              controller: nik,
                              decoration: InputDecoration(
                                label: Text('NIK', style: TextStyle(fontSize: 14),),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none,
                            ),
                                fillColor: Colors.grey[150],
                                filled: true,
                              ),
                            ),
      
                            //alamat
                             SizedBox(height: 10,),
                            TextFormField(
                              controller: address,
                              decoration: InputDecoration(
                                label: Text('Alamat', style: TextStyle(fontSize: 14),),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none,
                            ),
                                fillColor: Colors.grey[150],
                                filled: true,
                              ),
                            ),

      
                            //phone
                            SizedBox(height: 10,),
                            TextFormField(
                              controller: phone,
                              decoration: InputDecoration(
                                label: Text('Nomor Telepon', style: TextStyle(fontSize: 14),),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none,
                            ),
                                fillColor: Colors.grey[150],
                                filled: true,
                              ),
                            ),
      
      
                            SizedBox(height: 15),
                           Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Simpan Password', style: TextStyle(fontSize: 10, color: Colors.blue[600]),),
                            ],
                           ),
                          SizedBox(height: 30),
                          ElevatedButton(onPressed:(){
                            getUser();
                            
                          }, 
                          child: Text('Buat Akun', 
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
                    )
                ],
                ),
              ),
              SizedBox(height: 60,),
            ],
          ),
        ),
      )
    );
  }
}