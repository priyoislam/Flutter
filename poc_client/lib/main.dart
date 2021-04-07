import 'package:flutter/material.dart';
import 'package:poc_client/finalpage.dart';
import 'package:poc_client/name.dart';
import 'package:poc_client/time.dart';
import 'package:poc_client/locale.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Form Validation Demo';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  /*void _sendDataTofinalpage(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return finalpage(myController.text);
    }));
  }*/

  @override
  Widget build(BuildContext context) {
    //String txt = name.usernamereturn();
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          // margin: new EdgeInsets.all(8.0),
          children: <Widget>[
            username(),
            timevalue(),
            locale(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  finalpage();
                },
                child: Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}