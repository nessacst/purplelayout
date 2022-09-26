import 'package:flutter/material.dart';

import '../components/button1.dart';

class Landscape extends StatelessWidget {
  const Landscape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          fit: FlexFit.tight,
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxHeight: 200,
                    minWidth: 200,
                  ),
                  child: Image.asset('assets/images/logolilas.png'),
                ),
              ),
              Text(
                'Get your Money \n Under Control',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: const Text(
                  'Manage your express \n Seamlessly.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
        Flexible(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Button(
                    cor1: Color.fromARGB(255, 55, 10, 191),
                    cor2: Colors.white,
                    textBut: 'Sig Up with Email ID',
                    icBut: '',
                  ),
                  Button(
                    cor1: Color.fromARGB(255, 255, 255, 255),
                    cor2: Colors.black,
                    textBut: 'Sig Up with Google',
                    icBut: 'assets/images/iconGoogle.png',
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            ' Sign in',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )),
      ],
    );
  }
}
