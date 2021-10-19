import 'package:flutter/material.dart';
import 'package:flutter_calc/home_drawer.dart';
import 'home_drawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double number01 = 0;
  double number02 = 0;
  double result = 0;

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
                      setState(() => number01 = 0);
                    } else {
                      setState(() {
                        number01 = double.parse(value);
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
                      setState(() => number02 = 0);
                    } else {
                      setState(() {
                        number02 = double.parse(value);
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
                        result = number01 + number02;
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
                        result = number01 - number02;
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
                        result = number01 * number02;
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
                        result = number01 / number02;
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
              child: Text('Resultado: ' + result.toString(),
                  style: TextStyle(fontSize: 30)),
            )
          )
        ],
      ),
    );
  }
}