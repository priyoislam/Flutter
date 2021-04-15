// @dart=2.9
import 'package:flutter/material.dart';
import 'package:poc_client/finalpage.dart';
// import 'package:poc_client/name.dart';
// import 'package:poc_client/time.dart';
// import 'package:poc_client/locale.dart';
// import 'package:poc_client/main.dart';
import 'package:poc_client/data.dart';
import 'package:provider/provider.dart';

class Loginbtn extends StatelessWidget {
  //var formKey = GlobalKey<FormState>();
  //username(this.formKey);
  String nm = "22";

  getItemAndNavigate(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Finalpage(
                  nameHolder: nm,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<MyData>(
      builder: (context, data, _) => Container(
        width: MediaQuery.of(context).size.width * .5,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  // userState().pr();
                  //userState().setText();
                  //userState().usernamereturn();
                  var dat = context.watch<MyData>();
                  nm = dat.nAme;
                  print(nm);
                  // getItemAndNavigate(context);
                },
                child: Text('Log In'),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    textStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
