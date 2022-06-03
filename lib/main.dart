//import 'dart:ffi';
//import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const AppSignIn());
}

class AppSignIn extends StatelessWidget {
  const AppSignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MySignInPage(),
    );
  }
}

class MySignInPage extends StatefulWidget {


  @override
  State<MySignInPage> createState() => _MySignInPageState();
}

class _MySignInPageState extends State<MySignInPage> {

  bool isChecked = false;
  bool isSecret = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: const Text('Connexion', textAlign: TextAlign.center ,),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          iconSize: 20,
          onPressed: (){},
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(
                labelText: 'Entrez votre Email',
                ),
              ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              obscureText: isSecret,
              decoration: InputDecoration(
                labelText: 'Mot de passe',
                suffixIcon: InkWell(
                  onTap: () => setState((){
                    isSecret = !isSecret;
                }),
                  child: Icon(
                    ! isSecret ? Icons.visibility : Icons.visibility_off,
                  ),
                ),
                ),
              ),
            const SizedBox(
              height: 15,
            ),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: const Text('Se rappeler de Moi'),
                value: isChecked,
                onChanged: (value){
                  setState(() {
                    isChecked = value!;
                  });
                }),

            const SizedBox(
              height: 15,
            ),

            RaisedButton(
              padding: const EdgeInsets.symmetric(
                vertical: 20
              ),
              onPressed: (){},
            color: Colors.purple,
              child: Text(
                'connexion'.toUpperCase(),
              ),
            ),
            const SizedBox(
              height: 15,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: (){},
                  child: Text(
                    'Mots de passe Oublier?',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColorDark,
                    ),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text('Pas de compte ?',
                style: TextStyle(fontSize: 15),
                ),
                TextButton(
                  onPressed: (){},
                  child: Text('Inscription',
                    style: TextStyle(
                      color: Theme.of(context).primaryColorDark,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ],

        ),
      ),
    );
  }
}





