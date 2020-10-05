# Listaê

2º aplicativo desenvolvido para as aulas de LDDM do curso de Engenharia de Computação

## Documentação

O aplicativo consiste de uma única tela, na qual é possível adicionar itens de texto na lista através de um FloatingActionButton, e removê-los através de botões à direita de cada item da lista. Idealmente, é uma ferramenta para gerenciar quaisquer tipos de necessidade de listagem do usuário, como listas de nomes, listas de compras, etc.

## Estrutura
1. main.dart (Inicializa o app);
2. app.dart (Define e configura o MaterialApp, chama a Home Page);
3. pages
  * Home Page (Chama a página de lista);
  * Lista Page (Tela principal do aplicativo, que exibe a lista de fato);
4. widgets
  * FullScreen Dialog (Widget que lida com a entrada da string do item da lista);
  * List Item (Widget que contém a string da lista, e o botão de exclusão);
5. blocs
  * App Bloc (Gerencia as regras de negócio da página da lista, através das streams de uma lista que contém as strings de cada item)
