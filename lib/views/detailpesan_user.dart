import 'package:flutter/material.dart';

class DetailPesan extends StatefulWidget {
  const DetailPesan({super.key});

  @override
  State<DetailPesan> createState() => _DetailPesanState();
}

class _DetailPesanState extends State<DetailPesan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(240, 241, 251, 1.0),
      body: ListView(
        children: [
          Container(
            height: 140,
            width: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20,),
                Text("Malang - Surabaya", 
                  style: TextStyle(
                    fontSize: 20,
                    ),
                    ),
                SizedBox(height: 10,),
                Text("Sel, 10 Des 2024",
                  style: TextStyle(
                    fontSize: 13,
                    color: Color.fromRGBO(158, 158, 158, 1.0),
                  ),
                  ),
              ],
            ),
          ),

          //KETERANGAN
          Container(
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30,),
                      Text("Pesan Tiket",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      SizedBox(height: 10,),
                      Text("JAYABAYA",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromRGBO(72, 83, 159, 1.0),
                        ),
                        ),
                      SizedBox(height: 10,),
                      Text("12:30 - 14:21",
                        style: TextStyle(
                          fontSize: 10,
                          color: Color.fromRGBO(118, 118, 118, 1.0),
                        ),
                        ),

                      //INPUT DATA PELANGGAN

                      //NAMA
                      SizedBox(height: 30,),
                      Text("Nama",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        ),


                      SizedBox(height: 10,),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "masukkan nama anda",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    
                    //NIK
                    SizedBox(height: 35,),
                    Text("NIK",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      ),

                    SizedBox(height: 15,),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "masukkan NIK",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),

                    //NOMOR TELPON
                    SizedBox(height: 35,),
                    Text("Nomor Telepon",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      ),

                    SizedBox(height: 15,),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "masukkan nomor telepon",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),

                    //KETERANGAN KELAS
                    SizedBox(height: 35,),
                    Text("Kelas",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    ),

                    SizedBox(height: 5,),
                    Text("EKONOMI (UMUM)",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromRGBO(72, 83, 159, 1.0),
                      ),
                      ),

                    //KETERANGAN KELAS
                    SizedBox(height: 15,),
                    Text("*Kelas tidak dapat diubah, kembali ke halaman penjadwalan untuk mengubah kelas",
                      style: TextStyle(
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                        color: Color.fromRGBO(118, 118, 118, 1.0),
                      ),
                      ),

                      //HARGA
                      SizedBox(height: 45,),
                      Text("Total Harga",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      SizedBox(height: 5,),
                      Text("Rp. 40.000",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromRGBO(72, 83, 159, 1.0),
                        ),),
                    

                      SizedBox(height: 50,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ElevatedButton(
                            onPressed: (){
                              Navigator.pushNamed(context, '/Bayar');
                            }, 
                            child: 
                              Text("Bayar",
                              style: TextStyle(
                                fontSize: 15.5,
                                color: Colors.white,
                              ),
                              ),
                            style: ElevatedButton.styleFrom(
                              primary: const Color.fromRGBO(72, 83, 159, 1.0),
                              padding: EdgeInsets.symmetric(horizontal: 150, vertical: 20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.5),
                              ),
                            ),
                            ),
                        ],
                      ),

                      
                    ],
                  ),
                )
                ),
        ],
      ),
    );
  }
}