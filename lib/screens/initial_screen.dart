import 'package:flutter/material.dart';
import 'package:nosso_primeiro_projeto/components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas'),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: Duration(microseconds: 1000),
        child: ListView(
          // scrollDirection: Axis.horizontal, //caso queira fazer padrao carrosel na horizonta
          children: const [
            Task(
                'Aprender Flutter',
                'https://play-lh.googleusercontent.com/5e7z5YCt7fplN4qndpYzpJjYmuzM2WSrfs35KxnEw-Ku1sClHRWHoIDSw3a3YS5WpGcI',
                BoxFit.cover,
                3),
            Task(
                'Aprender Java',
                'https://www.macworld.com/wp-content/uploads/2023/01/learn_java_on_mac.jpg?quality=50&strip=all',
                BoxFit.cover,
                5),
            Task(
                'Aprender Kotlin',
                'https://mathiasfrohlich.gallerycdn.vsassets.io/extensions/mathiasfrohlich/kotlin/1.7.1/1581441165235/Microsoft.VisualStudio.Services.Icons.Default',
                // 'assets/images/kotlin.jpeg', caso for usado imagens dentro do projeto
                BoxFit.cover,
                4),
            Task(
                'Aprender Swift',
                'https://www.macworld.com/wp-content/uploads/2023/01/swift_1200home-1.jpg?quality=50&strip=all&w=1024',
                BoxFit.cover,
                3),
            Task(
                'Aprender Ruby',
                'https://desenvolvimentoaberto.files.wordpress.com/2015/01/ruby-261x300.png',
                BoxFit.cover,
                1),
            Task(
                'Aprender DevOps',
                'https://img.freepik.com/vetores-gratis/ilustracao-de-devops-de-design-plano_23-2149364438.jpg',
                BoxFit.cover,
                2),
            SizedBox(height: 80,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}