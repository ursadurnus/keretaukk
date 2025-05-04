import 'package:flutter/material.dart';

class PaymentUser extends StatefulWidget {
  const PaymentUser({super.key});

  @override
  State<PaymentUser> createState() => _PaymentUserState();
}

class _PaymentUserState extends State<PaymentUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(240, 241, 251, 1.0),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 300,
                width: 300,
                padding: EdgeInsets.all(40),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                
              )
            ],
          )
        ],
      ),
    );
  }
}