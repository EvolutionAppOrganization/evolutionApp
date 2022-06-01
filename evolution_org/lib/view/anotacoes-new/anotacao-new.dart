import 'package:flutter/material.dart';

import '../crie-grupo/crie-grupo.dart';

void main() => runApp(const AnotacaoNew());

class AnotacaoNew extends StatelessWidget {
  const AnotacaoNew({Key? key}) : super(key: key);

  static const String _title = 'Evolution.org';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
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
          title: Text(
            'FeedBacks',
            style: const TextStyle(
              fontSize: 32.0,
              color: Colors.white,
            ),
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
  TextEditingController temaController = TextEditingController();
  TextEditingController feedbackController = TextEditingController();
  


  static const colorText = Color.fromARGB(255, 100, 100, 100);



  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
        // child: Center(
        child: ListView(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: temaController,
                decoration: const InputDecoration(
                  // border: OutlineInputBorder(),
                  labelText: 'Tema',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                maxLength: 120,
                controller: feedbackController,
                decoration: const InputDecoration(
                  // border: OutlineInputBorder(),
                  labelText: 'Escreva seu feedback aqui...',
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
                    'Adicionar Feedback',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    
                  },
                )),
          ],
        )
        // )
        );
  }
}
