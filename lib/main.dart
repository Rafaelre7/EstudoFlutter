import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Tarefas'),
          ),
          body: ListView(
            // scrollDirection: Axis.horizontal, //caso queira fazer padrao carrosel na horizonta
            children: [
              Task('Aprender Flutter'),
              Task('Aprender Java'),
              Task('Aprender Kotlin'),
              Task('Aprender Kotlin'),
              Task(
                  'Aprender Kotlin hkjsefhdjkfhgdsjkhgkjdshgkjhsdkjghkjsdhgkjdfhgjha'),
              Task('Aprender Kotlin'),
              Task('Aprender Kotlin'),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
          ),
        ));
  }
}

//Stateless: quando o componente é estatíco e nunca atualiza só quando é reiniciado a aplicação
//Statefull: o valor é reativo sempre que alterado alguma variavel ele atualiza
class Task extends StatefulWidget {
  final String nome;

  const Task(this.nome, {super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(
              color: Colors.blue,
              height: 140,
            ),
            Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: Colors.grey,
                        width: 72,
                        height: 100,
                      ),
                      Container(
                          width: 200,
                          child: Text(
                            widget.nome,
                            style: TextStyle(
                                fontSize: 24,
                                overflow: TextOverflow
                                    .ellipsis //colocando ... caso texto muito grande
                                ),
                          )),
                      ElevatedButton(
                          onPressed: () {
                            //Funcao para mostrar que esta alterando o valor
                            setState(() {
                              nivel++;
                            });
                            print(nivel);
                          },
                          child: Icon(Icons.arrow_drop_up))
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        child: LinearProgressIndicator(
                          color: Colors.white,
                          value: nivel/10,
                        ),
                        width: 200,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        "Nivel: $nivel",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
