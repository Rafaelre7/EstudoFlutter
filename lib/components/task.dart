//Stateless: quando o componente é estatíco e nunca atualiza só quando é reiniciado a aplicação
//Stateful: o valor é reativo sempre que alterado alguma variavel ele atualiza
import 'package:flutter/material.dart';
import 'package:nosso_primeiro_projeto/components/difficulty.dart';

class Task extends StatefulWidget {
  final String nome;
  final String foto;
  final BoxFit box;
  final int dificulde;

  const Task(this.nome, this.foto, this.box, this.dificulde, {super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4), color: Colors.blue),
            height: 140,
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white),
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.grey),
                      width: 72,
                      height: 100,
                      child: ClipRRect(
                        //Usado para colocar borda circular em uma imagem
                        borderRadius: BorderRadius.circular(4),
                        child: Image.network(
                        // child: Image.asset( //quando for usar imagem local sem acesso a internet
                          widget.foto,
                          fit: widget.box,
                        ),
                      ), //Colocando uma imagem
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 200,
                            child: Text(
                              widget.nome,
                              style: const TextStyle(
                                  fontSize: 24,
                                  overflow: TextOverflow
                                      .ellipsis //colocando ... caso texto muito grande
                              ),
                            )),
                        Difficulty(
                          dificultyLevel: widget.dificulde,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 52,
                      width: 65,
                      child: ElevatedButton(
                          onPressed: () {
                            //Funcao para mostrar que esta alterando o valor
                            setState(() {
                              nivel++;
                            });
                          },
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(Icons.arrow_drop_up),
                              Text(
                                "UP",
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          )),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: SizedBox(
                      width: 200,
                      child: LinearProgressIndicator(
                        color: Colors.white,
                        value: (widget.dificulde > 0)
                            ? (nivel / widget.dificulde) / 10
                            : 1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      "Nivel: $nivel",
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}