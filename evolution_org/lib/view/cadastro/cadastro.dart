import 'package:flutter/material.dart';

import '../crie-grupo/crie-grupo.dart';
import '../grupo-create/grupo-create.dart';

void main() => runApp(const Cadastro());

class Cadastro extends StatelessWidget {
  const Cadastro({Key? key}) : super(key: key);

  static const String _title = 'Evolution.org';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: new AppBar(
            backgroundColor: Color.fromARGB(0, 135, 152, 214),
            elevation: 0,
            centerTitle: false,
            toolbarHeight: 100,
            leading: new IconButton(
                icon: new Icon(Icons.arrow_back, color:Color(0xff8798D6)),
                onPressed: () {
                  Navigator.pop(context, true);
                })),
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
  TextEditingController cargoController = TextEditingController();

  String selectedValue = "Gestor";
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

  var textCad = RichText(
    text: TextSpan(
      style: const TextStyle(
        fontSize: 18.0,
        color: colorText,
      ),
      children: <TextSpan>[
        TextSpan(text: 'Informações de '),
        TextSpan(
            text: 'carreira',
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

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
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
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
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
                // alignment: Alignment.center,
                padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
                child: textCad),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: cargoController,
                decoration: const InputDecoration(
                  // border: OutlineInputBorder(),
                  labelText: 'Cargo',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: cargoController,
                decoration: const InputDecoration(
                  // border: OutlineInputBorder(),
                  labelText: 'Nível de experiência',
                ),
              ),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: DropdownButton<String>(
                  items: <String>['Gestor', 'Liderado']
                      .map((String selectedValue) {
                    return DropdownMenuItem<String>(
                      value: selectedValue,
                      child: Text(selectedValue),
                    );
                  }).toList(),
                  onChanged: (_) {},
                )),
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
                    'Adicionar colaborador',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CrieGrupo()),
                    );
                  },
                )),
          ],
        )
        // )
        );
  }
}
