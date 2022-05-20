import 'package:evolution_org/view/cadastro/cadastro.dart';
import 'package:flutter/material.dart';

import '../tela-inicial-logado/tela-inicial.logado.dart';

void main() => runApp(const Initial());

class Initial extends StatelessWidget {
  const Initial({Key? key}) : super(key: key);

  static const String _title = 'Evolution.org';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: null,
        body: Center(
          child: const MyStatefulWidget()
          ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  static const colorText = Color.fromARGB(255, 100, 100, 100);
  var textCad = RichText(
    text: TextSpan(
      // Note: Styles for TextSpans must be explicitly defined.
      // Child text spans will inherit styles from parent
      style: const TextStyle(
        fontSize: 22.0,
        color: colorText,
      ),
      children: <TextSpan>[
        TextSpan(text: 'Sou '),
        TextSpan(text: 'gestor ', style: const TextStyle(fontWeight: FontWeight.bold)),
        TextSpan(text: 'e '),
          TextSpan(text: 'não tenho conta ', style: const TextStyle(fontWeight: FontWeight.bold)),
      ],
    ),
  );

    var textLogin = RichText(
    text: TextSpan(
      // Note: Styles for TextSpans must be explicitly defined.
      // Child text spans will inherit styles from parent
      style: const TextStyle(
        fontSize: 22.0,
        color: colorText,
      ),
      children: <TextSpan>[
        TextSpan(text: 'Já '),
        TextSpan(text: 'tenho conta ', style: const TextStyle(fontWeight: FontWeight.bold))
      ],
    ),
  );

      var textEnter = RichText(
    text: TextSpan(
      // Note: Styles for TextSpans must be explicitly defined.
      // Child text spans will inherit styles from parent
      style: const TextStyle(
        fontSize: 28.0,
        color: colorText,
      ),
      children: <TextSpan>[
        TextSpan(text: 'Olá, seja bem vindx ao '),
        TextSpan(text: 'Evolution.org! ', style: TextStyle(color: Color(0xffffd1c7), fontWeight: FontWeight.bold))
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
          // child: Center(
                child: ListView(
              children: <Widget>[
                 Container(
                    // alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: textEnter
                  ),
                Container(
                    // alignment: Alignment.center,
                    padding: const EdgeInsets.fromLTRB(10, 70, 10, 0),
                    child: textLogin
                  ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      // border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      // border: OutlineInputBorder(),
                      labelText: 'Senha',
                    ),
                  ),
                ),
                Container(
                      height: 70,
                      padding: const EdgeInsets.fromLTRB(50, 30, 50, 0),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color(0xff8798D6)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            )
                          )
                        ),
                        child: const Text(
                          'Entrar', 
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        onPressed: () {

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const InitialLogged()),
                            );
                        },
                      )
                    ),
                    Container(
                    padding: const EdgeInsets.fromLTRB(10, 70, 10, 0),
                      child: textCad
                    ),
                              Container(
                      height: 70,
                       padding: const EdgeInsets.fromLTRB(50, 30, 50, 0),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color(0xff8798D6)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            )
                          )
                        ),
                        child: const Text(
                          'Cadastrar', 
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        onPressed: () {
                         Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Cadastro()),
                            );
                        },
                      )
                    )
                // Row(
                //   children: <Widget>[
                //     const Text('Does not have account?'),
                //     TextButton(
                //       child: const Text(
                //         'Sign in',
                //         style: TextStyle(fontSize: 20),
                //       ),
                //       onPressed: () {
                //         //signup screen
                //       },
                //     )
                //   ],
                //   mainAxisAlignment: MainAxisAlignment.center,
                // ),
              ],
            )
          // )
        );
  }
  // Widget build(BuildContext context) {
  //   return Padding(
  //       padding: const EdgeInsets.all(30.0),
  //       // appBar: AppBar(
  //       //   backgroundColor: Color(0xff8798D6),
  //       //   title: Text('Olá, seja bem vindo ao Evolution.org',
  //       //       style: TextStyle(color: Colors.white)),
  //       // ),
  //       child: ListView(children: <Widget>[
  //            Container(
  //             padding: const EdgeInsets.all(10),
  //             child: TextField(
  //               decoration: const InputDecoration(
  //                 border: OutlineInputBorder(),
  //                 labelText: 'User Name',
  //               ),
  //             ),
  //           ),
  //       ]
  //       )
  //       );
  // }
}
