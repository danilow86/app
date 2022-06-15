
## FLUTTER APP







## First Steps

appBar método para criação de barra de navegação
body corpo 

floating action button
floatingActionButton

single render and multi render
Container é como se fosse uma div


O child dentro de um render herda os atributos, sendo assim
os sobrepõe

single render são importantes(verificar conceito)


brightness: Brightness.dark tema escuro


gerenciar um estado:
child: Switch(
            value: isDartTheme,
            onChanged: (value) {
              setState(() {
                isDartTheme = value;
              });
            }),´

Change notifier como se fosse um set State

Para fazer o inverso de um boolean basta colocar uma interrogação no método
notifyListeners método para notificar quem está escutando 


Design patern 
instanciar uma classe dentro dela mesma

Foi preciso instanciar a classe class AppController no app_widget e Home_page


AnimatedBuilder: escutar o método anterior
## Componetização de Widgets

Reutilização de código

Stl(atalho) cria a estrutura de statetless 
class  extends StatelessWidget {
  const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
## Columns 
Columns tem children

    Column(
        children: [
     
        ])

Debug paiting ajuda a identificar o objeto na página
## MainAxisAlignment
crossAxisAligmentent: Alinha cada item individualmente

Espaçamentos
MainAxisAlignment.spaceAround,espaçamento menor nas margens
MainAxisAlignment.spaceBetween, espaço equivalente
MainAxisAlignment.Evenly,espaçamento igual, mas com margem
## Listview

Contém scroll, diferente da propriedade column
Erro de overflow == quando tenho algo desenhado fora da tela
## Borders and more

extField Para a area de login

decoration para decorar a tela
esse input recebe parâmetros


diferentes tipos de borders -> border: OutlineInputBorder
obscureText: true, para ocultar o texto, serve para digitação de senhas por exemplo

keyboardType: TextInputType.emailAddress, serve para colocar a máscara do campo como email

RaisedButton(onPressed: () {} serve para criar o botão de login

ajustar espaçamento entre os elementos
SizeBox(height: 10)


onChanged: (text) {print(text);} Faz com que o texto seja escutado

Para acontecer o login criar strings(email e password)

Para utilizar valores numéricos
With: MediaQuery.of(context).size.width,
Height: MediaQuery.of(context).size.height,


Somente o Scaffold tem o scroll no login page

navegação entre telas 
2 formas
Manual -> forçar uma rota
automática

Criando rotas
MaterialPageRoute(builder: (context) => HomePage()));

Na instrução abaixo ainda ficamos com o ícone de voltar na tela home, então neste 
caso devemos utilizar um outro tipo de push(mais abaixo)
isso ocorre porque a tela apenas foi sobrescrita
 Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => HomePage()));
                    } 
## Rotas Nomeadas 

initialRoute: '/',
            routes: {
              '/': (context) => LoginPage(),
              '/home': (context) => HomePage(),
            });
## Depuração(Breakpoint)

Basta selecionar a área que você quer fazer stop 

console de debug é possível ver o valor da variável utilizada
## Curso de Flutter #

21 - Image.network (Adicionando imagem da internet)
Image.asset
Image.file
Image.Memory
Image.network

Container(
                width: 300,
                height: 300,
                child: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/Logo_TV_2015.png/250px-Logo_TV_2015.png'),
              ),

## Curso de Flutter #

22 - Image.asset (Adicionando imagem local)

A pasta assets serve para inserirmos tudo que não está relacionado ao projeto

tudo que é declarado como asset deve ser declarado  no pubspec.yaml\
aqui é preciso descomentar a linha do assets, colocar no mesmo nível do flutter
e em seguida inserir o caminho da imagem

yaml é orientado a identação,

## Curso de Flutter #

23 - Stack Multirender

Responsável por empilhar os itens, por exemplo se adicionarmos um background ao nosso body(como abaixo) ele será colocado para trás


Colunas disposição vertical dos widgets
row disposição horizontal dos widgets 



fit é a proprieda que permite o preenchimento da tela inteira
## Curso de Flutter #
24 - Material Card

Child do Card aceita apenas um Child


Fiz a alteração acima, pois não era possível enxergar as labels de text

Opção para fazer padding único
                    padding: const EdgeInsets.all(12.0),

Opção para fazer padding em diferentes áreas
                    padding: const EdgeInsets.only(left:12, right: 2, top:20, bottom:12),
## Curso de Flutter #
25 - Drawer

O scaffold tem uma propriedade chamada Drawer e basta instanciar o widget chamado drawer

Estiliza o menu principal e faz com que apareçam o nome e email formatados adequadamente
UserAccountsDrawerHeader(
                accountName: Text('Danilo'),
                accountEmail: Text('danilo@test.com')),

Adding an image (avatar) to our menu local image

currentAccountPicture: Image.asset('assets/images/avatar.png’)
## Curso de Flutter #
26 - ClipRRect

Propriedade para deixar a imagem circular - Primeira opção
 borderRadius: BorderRadius.circular(40),

Propriedade para deixar a imagem circular - Segunda opçãoeixar a imagem circular - Primeira opção
borderRadius: BorderRadius.ClipOval(),