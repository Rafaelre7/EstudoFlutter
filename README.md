# Lista de tarefas

Utilizei esse projeto para colocar em pratica uma base de aprendizado em flutter.

## Oque foi implementado

- Widgets como Row, Collumn, Stack, Container
  
- Elevated Button

- Material Design para apps android e Cupertino para apps IOS.

- Scaffold: O Widget que segue as regras do material Design para criar uma tela com appBar, body, floatingActionButton, além de outros parâmetros que podemos verificar no catálogo de Widgets da documentação.

- Stateless Widget: Estrutura pré-preparada para criarmos nosso Widget customizado. Widget de tela estática, ou seja, que não muda com o tempo ou ações.

- ListView: O Widget que permite mostrar uma lista de elementos na tela, com a possibilidade de arrastar a tela. Com esse Widget começamos a descobrir como explorar telas maiores do que o limite de espaço do nosso dispositivo. Armado com o parâmetro children, possui também outros parâmetros que podemos verificar no catálogo de Widgets da documentação.

- Padding: O Widget que nos permite criar uma camada externa de espaço em cada um dos 4 lados de seu Widget filho (child) usando o EdgeInsets no parâmetro padding.

- Stateful Widget: Estrutura pré-preparada para criarmos nosso Widget customizado, um Widget de tela dinâmica, ou seja, que pode mudar com o tempo ou ações.

- LinearProgressIndicator: O primeiro Widget do catálogo que usamos já é um Stateful por natureza! Ele possui a capacidade de mudar de tamanho de acordo com seu valor (value) em double. Temos também a opção de alterar sua cor de fundo (backgroundColor) e cor principal (color), além de outros parâmetros que podemos verificar no catálogo de Widgets da documentação.

- Hot Reload e Hot Restart: Com a descoberta do Stateful podemos agora entender a grande diferença entre o Hot Restart e o Hot Reload. Vimos como o Hot Restart reinicia nossa aplicação recarregando os valores e redesenhando a tela, sem guardar nenhuma informação (demora um pouco mais), enquanto o Hot Reload recarrega alguns elementos simples na tela e mantém os valores salvos (extremamente rápido).

- Image: O Widget tem o poder de adicionar imagens ao nosso projeto: imagens da internet, dos assets, dos arquivos e até da memória do dispositivo. Possui parâmetros para controlar o tamanho vertical (height), o tamanho horizontal (width), o encaixe da foto (fit), além de outros parâmetros que podemos verificar no catálogo de Widgets da documentação.
  
- BoxDecoration: Para realizarmos o ajuste fino do nosso Layout usamos o parâmetro decoration do Container. A partir daí descobrimos o poder do BoxDecoration para manipular as bordas usando o parâmetro borderRadius. Percebemos também que quando usamos o decoration o parâmetro color precisa ser usado apenas dentro do BoxDecoration. Lembre-se que podemos verificar outros parâmetros no catálogo de Widgets da documentação.
  
- AnimatedOpacity: Nosso primeiro Widget com animação, permitindo manipular a opacidade de seu Widget filho(a) (child) com uma duração (duration) pré-estabelecida.

