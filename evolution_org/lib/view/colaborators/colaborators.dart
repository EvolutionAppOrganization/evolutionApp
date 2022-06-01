import 'package:flutter/material.dart';

import '../colaborator/colaborator.dart';

void main() => runApp(new Colaborators());

class Colaborators extends StatelessWidget {
  String groupName = '';
  Colaborators({grupo = ""}){
    this.groupName = grupo["nome"];
  }

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
          TextSpan(text: this.groupName),
        ],
      ),
    );


    return MaterialApp(
      title: "Evolution.org",
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 100,
          leading: new IconButton(
              icon: new Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context, true);
              }),
          backgroundColor: Color(0xff8798D6),
          centerTitle: false,
          title: tabText,
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
    {"nome": "Pedro", "cargo": "Desenvolvedor", "departamento": "Indefinido"},
    {"nome": "João", "cargo": "Designer", "departamento": "Indefinido"},
  ];
  final List<int> colorCodes = <int>[600, 500, 100];

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
      padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
      // child: Center(

      // child: ListView(
      //   children: <Widget>[
      //     Container(
      //         // alignment: Alignment.center,
      //         padding: const EdgeInsets.all(10),
      //         child: SizedBox(
      //           width: 200.0,
      //           height: 100.0,
      //           child: Card(
      //               shape: RoundedRectangleBorder(
      //                 borderRadius: BorderRadius.circular(10.0),
      //               ),
      //               elevation: 5,
      //               shadowColor: Colors.black12,
      //               child: Padding(
      //                   padding: EdgeInsets.all(10.0),
      //                   child: Row(children: const <Widget>[
      //                     Icon(
      //                       Icons.badge,
      //                       color: Colors.black,
      //                       size: 80.0,
      //                       semanticLabel:
      //                           'Text to announce in accessibility modes',
      //                     ),
      //                     Padding(
      //                       padding:
      //                           const EdgeInsets.fromLTRB(15, 20, 10, 10),
      //                       child: Text(
      //                         'Colaborador',
      //                         style:
      //                             TextStyle(color: colorText, fontSize: 24),
      //                       ),
      //                     )
      //                   ]))),
      //         )),
      //     Container(
      //         // alignment: Alignment.center,
      //         padding: const EdgeInsets.all(10),
      //         child: SizedBox(
      //           width: 200.0,
      //           height: 100.0,
      //           child: Card(
      //               shape: RoundedRectangleBorder(
      //                 borderRadius: BorderRadius.circular(10.0),
      //               ),
      //               elevation: 5,
      //               shadowColor: Colors.black12,
      //               child: Padding(
      //                   padding: EdgeInsets.all(10.0),
      //                   child: Row(children: const <Widget>[
      //                     Icon(
      //                       Icons.group,
      //                       color: Colors.black,
      //                       size: 80.0,
      //                       semanticLabel:
      //                           'Text to announce in accessibility modes',
      //                     ),
      //                     Padding(
      //                       padding:
      //                           const EdgeInsets.fromLTRB(15, 20, 10, 10),
      //                       child: Text(
      //                         'Grupos',
      //                         style:
      //                             TextStyle(color: colorText, fontSize: 24),
      //                       ),
      //                     )
      //                   ]))),
      //         )),
      //   ],
      // )
      // )

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
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => new Colaborator(colaborator: entries[index])),
                          );
                      },
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(children: <Widget>[
                        Align(alignment: Alignment.centerLeft, child:  Text('${entries[index]["nome"]}',
                              style: TextStyle(color: colorText, fontSize: 24))),
                         Align(alignment: Alignment.centerLeft, child: Text('\n${entries[index]["cargo"]}',
                              style: TextStyle(color: colorText, fontSize: 15))),
                        // Padding(
                          // padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          // child: 
                        // ),
                        // Container(
                          // child: 
                        // )
                      ])),
                 
                      ),)
            ));
          }),
    );
  }
}
