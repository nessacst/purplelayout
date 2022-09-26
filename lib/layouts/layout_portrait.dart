import 'package:flutter/material.dart';

import '../components/button1.dart';

class Portrait extends StatelessWidget {
  const Portrait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 1),
            colors: <Color>[
              Color.fromARGB(255, 51, 1, 151),
              Color.fromARGB(255, 40, 1, 119),
              Color.fromARGB(255, 32, 1, 94),
              Color.fromARGB(255, 34, 2, 97),
              Color.fromARGB(255, 23, 1, 67),
              Color.fromARGB(255, 19, 1, 52),
            ]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.all(20),
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxHeight: 120,
                  maxWidth: 120,
                ),
                child: Image.asset('assets/images/logolilas.png'),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
          Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
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
      ),
    );
  }
}
