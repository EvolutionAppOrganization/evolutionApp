import 'package:flutter/material.dart';

void main() => runApp(const InitialLogged());

class InitialLogged extends StatelessWidget {
  const InitialLogged({Key? key}) : super(key: key);

  static const String _title = 'Evolution.org';

  @override
  Widget build(BuildContext context) {
    var tabText = RichText(
      text: TextSpan(
        style: const TextStyle(
          fontSize: 32.0,
          color: Colors.white,
        ),
        children: <TextSpan>[
          TextSpan(text: 'Olá, '),
          TextSpan(
              text: 'Fulano !',
              style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
    return MaterialApp(
      title: "Evolution.org",
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 100,
          backgroundColor: Color(0xff8798D6),
          centerTitle: false,
          title: Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: tabText
            ),
        ),
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

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(10, 100, 10, 0),
        // child: Center(
        child: ListView(
          children: <Widget>[
            Container(
                // alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: 200.0,
                  height: 100.0,
                  child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                      shadowColor: Colors.black12,
                      child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Row(children: const <Widget>[
                            Icon(
                              Icons.badge,
                              color: Colors.black,
                              size: 80.0,
                              semanticLabel:
                                  'Text to announce in accessibility modes',
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(15, 20, 10, 10),
                              child: Text(
                                'Colaborador',
                                style:
                                    TextStyle(color: colorText, fontSize: 24),
                              ),
                            )
                          ]))),
                )),
            Container(
                // alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: 200.0,
                  height: 100.0,
                  child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                      shadowColor: Colors.black12,
                      child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Row(children: const <Widget>[
                            Icon(
                              Icons.group,
                              color: Colors.black,
                              size: 80.0,
                              semanticLabel:
                                  'Text to announce in accessibility modes',
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(15, 20, 10, 10),
                              child: Text(
                                'Grupos',
                                style:
                                    TextStyle(color: colorText, fontSize: 24),
                              ),
                            )
                          ]))),
                )),
          ],
        )
        // )
        );
  }
}
