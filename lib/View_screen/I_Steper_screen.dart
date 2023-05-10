import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:steper_anddroid/Provider_screen/Steper_provider.dart';


class Stapper extends StatefulWidget {
  const Stapper({Key? key}) : super(key: key);

  @override
  _StapperState createState() => _StapperState();
}

class _StapperState extends State<Stapper> {

  Steper_provider? providerF;
  Steper_provider? providerT;

  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<Steper_provider>(context, listen: false);
    providerT = Provider.of<Steper_provider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            "Stepper App",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: Stepper(
            steps: [
              Step(title: Text("Sign up"), content: Text("")),
              Step(
                  title: Text("Login"),
                  content: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            hintText: "User Name",
                            prefixIcon: Icon(Icons.person_add)),
                      ),
                      SizedBox(height: 5,),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "password",
                            prefixIcon: Icon(Icons.mail)),
                      )
                    ],
                  )),
              Step(
                  title: Text("Done"),
                  content: Text(
                    "",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
              Step(
                  title: Text("fees info"),
                  content: Text(
                    "please info",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
            ],
            currentStep: providerT!.i,
            onStepContinue: () {
              providerF!.Nextstep();
            },
            onStepCancel: () {
              providerF!.prestep();
            },
          ),
        ),
      ),
    );
  }
}