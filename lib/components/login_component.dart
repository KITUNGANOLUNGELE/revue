import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginComponent extends StatelessWidget {
  LoginComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final myController = TextEditingController();

    return Padding(
      padding: EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(children: [
            Spacer(),
            Center(
              child: Text(
                "REVUE SCIENTIFIQUE",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            Spacer(),
            Text(
              "Login",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            TextField(
              controller: myController,
              decoration: InputDecoration(
                  hintText: "Entrer votre mail",
                  filled: true,
                  hintStyle: TextStyle(color: Colors.white),
                  fillColor: Colors.white.withOpacity(0.5),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              decoration: InputDecoration(
                  hintText: "Entrer votre mot de passe",
                  filled: true,
                  hintStyle: TextStyle(color: Colors.white),
                  fillColor: Colors.white.withOpacity(0.5),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  )),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  shadowColor: Colors.white,
                ),
                child: Text(
                  "Mot de passe oublié",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/test');
                // showDialog(
                //     context: context,
                //     builder: (context) {
                //       return AlertDialog(
                //         backgroundColor: Colors.amber,
                //         contentTextStyle: TextStyle(color: Colors.white),
                //         content: Text(myController.text),
                //       );
                //     });
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.zero))),
              child: Text("Connexion"),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Vous n'avevez pas de compte?",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.amber,
                    ),
                    child: Text("Sign up")),
              ],
            ),
            Spacer(),
            Text(
              "Or login avec : ",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/google.png',
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Google")
                  ],
                )),
            ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/facebook.png',
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Facebook")
                  ],
                )),
            Spacer(),
          ]),
        ),
      ),
    );
  }
}
