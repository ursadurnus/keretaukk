import 'package:flutter/material.dart';
import 'package:kereta3/views/dashboard_user.dart';
import 'package:kereta3/views/detailpesan_user.dart';
import 'package:kereta3/views/login_user.dart';
import 'package:kereta3/views/payment_user.dart';
import 'package:kereta3/views/register_user.dart' as register;
import 'package:kereta3/views/login_user.dart' as login;
import 'package:kereta3/views/splashscreen.dart';
import 'package:kereta3/views/ticketing_user.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(_)=>SplashScreen(),
      // '/pelanggan':(_)=>register.RegisterUser(),
      // '/pegawai':(_) => login.LoginUser(),
     // '/register_user':(_)=>register.RegisterUser(),
      '/login':(_)=>LoginUser(),
      '/masuk':(_)=>DashboardUser(),
      '/dashboard':(_)=>DashboardUser(),
      '/Cari Tiket Anda':(_)=>TicketingUser(),
      '/Buat Tiket':(_)=>DetailPesan(),
      '/Bayar':(_)=>PaymentUser(), 
    },
  ));
}

