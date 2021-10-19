import 'package:flutter/material.dart';
import 'package:flutter_calc/home_drawer.dart';
import 'home_drawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double n1 = 0;
  double n2 = 0;
  double res = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora'),
        backgroundColor: Colors.blue[850],
      ),
      drawer: getHomeDrawer(),
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Text('Calculadora simples criada como atividade avaliativa para a disciplina Tópicos de Informática.'
              '\nInformações do aluno disponíveis no menu superior esquerdo.'
              '\n\nInsira dois números e em seguida a operação que deseja realizar'),
            )
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  onChanged: (value) {
                    if (value.isEmpty) {
                      setState(() => n1 = 0);
                    } else {
                      setState(() {
                        n1 = double.parse(value);
                      });
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Insira o primeiro número',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  onChanged: (value) {
                    if (value.isEmpty) {
                      setState(() => n2 = 0);
                    } else {
                      setState(() {
                        n2 = double.parse(value);
                      });
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Insira o segundo número',
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
            child: Text(
              'Operação: ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: 
                SizedBox(
                  height: 75,
                  width: 75,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        res = n1 + n2;
                      });
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(16.0),
                      textStyle: const TextStyle(fontSize: 45)
                    ),
                    child: 
                      Text('+')
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: 
                SizedBox(
                  height: 75,
                  width: 75,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        res = n1 - n2;
                      });
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(16.0),
                      textStyle: const TextStyle(fontSize: 45)
                    ),
                    child: 
                      Text('-')
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: 
                SizedBox(
                  height: 75,
                  width: 75,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        res = n1 * n2;
                      });
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(16.0),
                      textStyle: const TextStyle(fontSize: 45)
                    ),
                    child: 
                      Text('x')
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: 
                SizedBox(
                  height: 100,
                  width: 100,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        res = n1 / n2;
                      });
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(16.0),
                      textStyle: const TextStyle(fontSize: 45)
                    ),
                    child: 
                      Text('/')
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
              child: Text('Resultado: ' + res.toString(),
                  style: TextStyle(fontSize: 30)),
            )
          )
        ],
      ),
    );
  }
}