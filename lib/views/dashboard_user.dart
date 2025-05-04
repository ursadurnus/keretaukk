import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class DashboardUser extends StatelessWidget {
  const DashboardUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(72, 83, 159, 10),
              borderRadius: BorderRadius.circular(10),
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("RailTrack", style: TextStyle( fontSize:40, fontWeight: FontWeight.bold, color: Colors.white),),

                SizedBox(height: 15,),  
                Text("Pesan tiketmu di sini, untuk destinasi serumu!", style: TextStyle(color: Colors.white),),
              ],
            ),
          ),

          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 550,
                width: 550,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(228, 230, 243, 10),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 200,
                      width: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('asset/surabaya.jpg')),
                        borderRadius: BorderRadius.circular(20),
                        ),
                    ),


                    // KOTA ASAL DAN KOTA TUJUAN
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              SizedBox(height: 20,),
                              Text("dari", style: TextStyle(fontSize: 13, color: const Color.fromRGBO(158, 158, 158, 10)),
                              ),
                              SizedBox(height: 5,),  
                              Text("Kota Malang", style: TextStyle(fontSize: 15, color: const Color.fromRGBO(118, 118, 118, 10)),)
                            ],
                          ),
                          height: 85,
                          width: 190,
                          decoration: BoxDecoration(
                           color: const Color.fromRGBO(240, 241, 251, 10),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          child: Column(
                            children: [
                              SizedBox(height: 20,),
                              Text("ke", style: TextStyle(fontSize: 13, color: const Color.fromRGBO(158, 158, 158, 10)),
                              ),
                              SizedBox(height: 5,),
                              Text("Kota Surabaya", style: TextStyle(fontSize: 15, color: const Color.fromRGBO(118, 118, 118, 10)),
                              ),
                            ],
                          ),
                          height: 85,
                          width: 190,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(240, 241, 251, 10),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),

                    // KEBERANGKATAN 
                    SizedBox(height: 20,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  SizedBox(height: 20,),
                                  Text("Tanggal berangkat", style: TextStyle(fontSize: 13, color: const Color.fromRGBO(158, 158, 158, 10)),
                                  ),
                                  SizedBox(height: 5,),
                                  Text("Selasa, 10 Desember", style: TextStyle(fontSize: 15),)
                                ],
                              ),
                              height: 75,
                              width: 380,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(240, 241, 251, 10),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                        
                        SizedBox(height: 20,),
                        Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/Cari Tiket Anda');
                              }, 
                            child: 
                              Text("Cari Tiket Anda!",),
                              style: ElevatedButton.styleFrom(
                                primary: const Color.fromRGBO(72, 83, 159, 10),
                                padding: EdgeInsets.symmetric(horizontal: 150, vertical: 20),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                ),
              ),
            ],
          ),
        ],
        

      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
        BottomNavigationBarItem(
          
          icon: Icon(Icons.train),
          label: 'kereta',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.airplane_ticket_outlined),
          label: 'tiket',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: 'profil'
          ),
      ]),
    );
  }
}