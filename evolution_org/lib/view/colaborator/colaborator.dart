import 'package:flutter/material.dart';

void main() => runApp(new Colaborator());

class Colaborator extends StatelessWidget {
  String colaboratorName = '';
  String cargoName = '';
  String departamentoName = '';
  Colaborator({colaborator = ""}) {
    this.colaboratorName = colaborator["nome"];
    this.cargoName = colaborator["cargo"];
    this.departamentoName = colaborator["departamento"];
  }

  static const String _title = 'Evolution.org';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Evolution.org",
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 150,
          backgroundColor: Color(0xff8798D6),
          centerTitle: false,
          title: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Column(
                children: [
                  new Align(
                    alignment: Alignment.centerLeft,
                    child: Text(this.colaboratorName,
                        style: const TextStyle(
                            fontSize: 32.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                  new Align(
                      alignment: Alignment.centerLeft,
                      child:
                          Text('${this.cargoName} - ${this.departamentoName}',
                              style: const TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                              ))),
                ],
              )),
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

  final List entries = [
    {"descricao": "Tema legal", "data": "10/05/2022"},
    {"descricao": "Incontentamento", "data": "5/02/2022"},
  ];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
      // child: Center(

      child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
                // height: 50,
                // color: Colors.amber[colorCodes[index]],
                // child: Center(child: Text('Entry ${entries[index]}')),

                child: SizedBox(
                    width: 200.0,
                    height: 100.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                      shadowColor: Colors.black12,
                      child: InkWell(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(builder: (context) => new Colaborator(colaborator: entries[index])),
                          //   );
                        },
                        child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(children: <Widget>[
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text('${entries[index]["descricao"]}',
                                      style: TextStyle(
                                          color: colorText, fontSize: 24))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text('\n${entries[index]["data"]}',
                                      style: TextStyle(
                                          color: colorText, fontSize: 15))),
                              // Padding(
                              // padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              // child:
                              // ),
                              // Container(
                              // child:
                              // )
                            ])),
                      ),
                    )));
          }),
    );
  }
}
