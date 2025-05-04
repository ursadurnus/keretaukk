import 'package:flutter/material.dart';


class AlertMessage {
  showAlert(BuildContext context, message, status) {
    Color? warnafill;
    if (status) {
      warnafill = Colors.green[200];
    } else {
      warnafill = Colors.pink[200];
    }


    SnackBar snackBar = SnackBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      content: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: warnafill,
            boxShadow: [
              BoxShadow(
                color: Color(0x19000000),
                spreadRadius: 2.0,
                blurRadius: 8.0,
                offset: Offset(2, 4),
              )
            ],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Icon(Icons.person, color: Colors.black),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(message,
                    style:
                        TextStyle(color: const Color.fromARGB(255, 0, 0, 0))),
              ),
              const Spacer(),
              TextButton(
                  onPressed: () => {debugPrint("Undid")}, child: Text("X"))
            ],
          )),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
