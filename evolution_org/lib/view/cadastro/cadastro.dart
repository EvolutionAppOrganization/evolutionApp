import 'package:flutter/material.dart';

import '../crie-grupo/crie-grupo.dart';

void main() => runApp(const Cadastro());

class Cadastro extends StatelessWidget {
  const Cadastro({Key? key}) : super(key: key);

  static const String _title = 'Evolution.org';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: null,
        body: Center(child: const MyStatefulWidget()),
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
  TextEditingController nomeController = TextEditingController();
  TextEditingController sobrenomeController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  static const colorText = Color.fromARGB(255, 100, 100, 100);
  var firstText = RichText(
    text: TextSpan(
      style: const TextStyle(
        fontSize: 24.0,
        color: colorText,
      ),
      children: <TextSpan>[
        TextSpan(text: 'Informações '),
        TextSpan(
            text: 'cadastrais',
            style: const TextStyle(fontWeight: FontWeight.bold)),
      ],
    ),
  );

  var secondText = RichText(
    text: TextSpan(

      style: const TextStyle(
        fontSize: 24.0,
        color: colorText,
      ),
      children: <TextSpan>[
        TextSpan(text: 'Crie um '),
        TextSpan(
            text: 'grupo ',
            style: const TextStyle(fontWeight: FontWeight.bold)),
        TextSpan(text: 'do seu time'),
      ],
    ),
  );

    String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(10, 150, 10, 0),
        // child: Center(
        child: ListView(
          children: <Widget>[
            Container(
                // alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: firstText),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nomeController,
                decoration: const InputDecoration(
                  // border: OutlineInputBorder(),
                  labelText: 'Nome',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: sobrenomeController,
                decoration: const InputDecoration(
                  // border: OutlineInputBorder(),
                  labelText: 'Sobrenome',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: emailController,
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
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xff8798D6)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ))),
                  child: const Text(
                    'Próximo',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const CrieGrupo()),
                            );
                  },
                )
                ),
             
           
          ],
        )
        // )
        );
  }

}
