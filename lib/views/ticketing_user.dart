import 'package:flutter/material.dart';

class TicketingUser extends StatelessWidget {
  const TicketingUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(240, 241, 251, 1.0),
      body: ListView(
        children: [
          Container(
            height: 140,
            width: 250,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Malang - Surabaya", style: TextStyle(fontSize: 20)),
                SizedBox(height: 10),
                Text("Sel, 10 Des 2024", style: TextStyle(fontSize: 13, color: Color.fromRGBO(158, 158, 158, 1.0))),
              ],
            ),
          ),

          //PEMILIHAN TANGGAL
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 35,
                width: 130,
                child: Column(
                  children: [
                    SizedBox(height: 9),
                    Text("Sen, 9 Des", style: TextStyle(fontSize: 15)),
                  ],
                ),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(228, 230, 243, 1.0),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              SizedBox(width: 10),
              Container(
                height: 35,
                width: 130,
                child: Column(
                  children: [
                    SizedBox(height: 9),
                    Text("Sel, 10 Des", style: TextStyle(fontSize: 15, color: Colors.white)),
                  ],
                ),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(72, 83, 159, 1.0),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),

              SizedBox(width: 10),
              Container(
                height: 35,
                width: 130,
                child: Column(
                  children: [
                    SizedBox(height: 9),
                    Text("Rab, 11 Des", style: TextStyle(fontSize: 15)),
                  ],
                ),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(228, 230, 243, 1.0),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),

          //JADWAL KERETA TERSEDIA
          SizedBox(height: 25),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 500,
                width: 550,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),

    
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children:[
                              //SizedBox(height: 20,),
                              Text("JAYABAYA", 
                                style: TextStyle(
                                  fontSize: 17, 
                                  fontWeight: FontWeight.bold, 
                                  color: const Color.fromRGBO(72, 83, 159, 1.0),),
                                  ),
                            SizedBox(height: 5,),
                            Text("12:30 - 14:21",
                              style: TextStyle(
                                fontSize: 10,
                                color: Color.fromRGBO(118, 118, 118, 1.0),
                              ),
                            ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              //SizedBox(width: 20,),
                              Text("Harga mulai dari",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(118, 118, 118, 1.0),),
                              ),
                              //SizedBox(height: 5,),
                              Text("Rp. 40.000",
                              style: TextStyle(
                                fontSize:20,
                                fontWeight: FontWeight.bold
                              ),
                              ),
                            ],
                          ),

                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 35,),
                          Text("MALANG (MLG) - SURABAYA (SBY)",
                            style: TextStyle(
                              fontSize: 10,
                              color: Color.fromRGBO(118, 118, 118, 1.0),
                            ),),

                          SizedBox(height: 5,),
                          Text("1 Jam 51 Menit",
                            style: TextStyle(
                              fontSize: 10,
                              color: Color.fromRGBO(118, 118, 118, 1.0),
                            ),
                            ),
                          ],
                      ),

                      SizedBox(height: 20,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 25,),
                          Text("Pilihan Kelas",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("EKONOMI",
                            style: TextStyle(
                              fontSize: 13.5,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromRGBO(72, 83, 159, 1.0),
                            ),
                            ),
                            Row(
                              children: [
                                SizedBox(width: 220,),
                                ElevatedButton(
                                  onPressed: (){
                                    Navigator.pushNamed(context, '/Buat Tiket');
                                  }, 
                                  
                                
                                  child:                                    
                                  Text("Buat Tiket",
                                      style: TextStyle(
                                        fontSize: 13.5,
                                        color: Colors.green
                                      ),),
                                    style: ElevatedButton.styleFrom(
                                    primary: const Color.fromRGBO(228, 243, 236, 1.0),
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
                      
                      SizedBox(height: 20,),
                      Container(
                        padding: const EdgeInsets.all(25),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("EKSEKUTIF",
                            style: TextStyle(
                              fontSize: 13.5,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromRGBO(72, 83, 159, 1.0),
                            ),
                            ),
                            Row(
                              children: [
                                SizedBox(width: 208.5,),
                                ElevatedButton(
                                  onPressed: (){
                                    Navigator.pushNamed(context, '/Buat Tiket');
                                  }, 
                                  child: 
                                    Text("Buat Tiket",
                                    style: TextStyle(
                                      fontSize: 13.5,
                                      color: Colors.green,
                                    ),),
                                    style: ElevatedButton.styleFrom(
                                      primary: const Color.fromRGBO(228, 243, 236, 1.0),
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
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}