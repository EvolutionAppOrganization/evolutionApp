import 'package:flutter/material.dart';

import '../grupo-create/grupo-create.dart';
import '../tela-inicial-logado/tela-inicial.logado.dart';

void main() => runApp(const CrieGrupo());

class CrieGrupo extends StatelessWidget {
  const CrieGrupo({Key? key}) : super(key: key);

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
                icon: new Icon(Icons.arrow_back, color: Color(0xff8798D6)),
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
  static const colorText = Color.fromARGB(255, 100, 100, 100);
  var firstText = RichText(
    text: TextSpan(
      style: const TextStyle(
        fontSize: 24.0,
        color: colorText,
      ),
      children: <TextSpan>[
        TextSpan(
            text: 'Configure ',
            style: const TextStyle(fontWeight: FontWeight.bold)),
        TextSpan(text: 'seu grupo '),
      ],
    ),
  );
  var longText = RichText(
    text: TextSpan(
      style: const TextStyle(
        fontSize: 18,
        color: colorText,
      ),
      children: <TextSpan>[
        TextSpan(
            text:
                "Aqui você colocará as pessoas que fazem parte do seu time, os seus liderados.",
            style: TextStyle(height: 1.5))
      ],
    ),
  );
  var longTextPartTwo = RichText(
    text: TextSpan(
      style: const TextStyle(
        fontSize: 18,
        color: colorText,
      ),
      children: <TextSpan>[
        TextSpan(
            text: "Cada pessoa só pode ser adicionada à um único grupo. ",
            style: TextStyle(height: 1.5))
      ],
    ),
  );
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(25, 20, 25, 0),
        // child: Center(
        child: ListView(
          children: <Widget>[
            Container(
                // alignment: Alignment.center,
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 40),
                child: firstText),
            Container(
                // alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: longText),
            Container(
                // alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: longTextPartTwo),
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
                    'Configurar agora',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GrupoCreate()),
                    );
                  },
                )),
            Container(
                padding: EdgeInsets.only(top: 20),
                child: Center(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                       Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const InitialLogged()),
                            );
                    },
                    child: const Text('Configurar depois'),
                  ),
                )),
          ],
        )
        // )
        );
  }
}
