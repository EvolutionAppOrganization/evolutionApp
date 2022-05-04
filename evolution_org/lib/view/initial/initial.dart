import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
          // child: Center(
                child: ListView(
              children: <Widget>[
                 Container(
                    // alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Olá, seja bem vindx ao Evolution.org!',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: colorText,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )
                  ),
                Container(
                    // alignment: Alignment.center,
                    padding: const EdgeInsets.fromLTRB(10, 70, 10, 0),
                    child: const Text(
                      'Já tenho conta',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: colorText,
                          fontWeight: FontWeight.w500,
                          fontSize: 24),
                    )
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
                      padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
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
                          print(nameController.text);
                          print(passwordController.text);
                        },
                      )
                    ),
                    Container(
                    padding: const EdgeInsets.fromLTRB(10, 70, 10, 0),
                      child: const Text(
                        'Sou gestor e não tenho conta',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: colorText,
                            fontWeight: FontWeight.w500,
                            fontSize: 24),
                      )
                    ),
                              Container(
                      height: 70,
                      padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
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
                          print(nameController.text);
                          print(passwordController.text);
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
