# Stock Manager

Este repositório contém o projeto Stock-Manager, um sistema de gerenciamento de estoque desenvolvido em Delphi. O objetivo principal deste projeto é 
servir como um recurso para documentar o aprendizado e a evolução no desenvolvimento com Delphi, oferecendo uma solução prática para controle de estoque, 
vendas, compras, contas a pagar e receber, cadastro de clientes, produtos, fornecedores e usuários.

## Tecnologias Utilizadas

*   **Delphi**: Linguagem de programação e ambiente de desenvolvimento integrado (IDE) utilizado para construir a aplicação.
*   **Banco de Dados**: Firebird na versão 2.5 (o script SQL indica a criação de tabelas, triggers e generators compatíveis com este SGBD).
  
## Estrutura do Projeto

O projeto está organizado nas seguintes pastas:

*   `Exe/`: Contém o executável compilado do sistema e arquivos dos relatórios desenvolvidos.
*   `Forms/`: Contém os arquivos de formulário (`.dfm`) e unidades (`.pas`) do Delphi, que definem a interface do usuário e a lógica de cada tela do sistema.
*   `Projeto/`: Contém os arquivos de projeto do Delphi (`.dpr` e `.dproj`), que são os arquivos principais do projeto.
*   `Script SQL.txt`: Contém o script SQL para a criação do banco de dados e suas tabelas, além de triggers e generators.

## Como Usar

Para utilizar o sistema Stock-Manager, siga os passos abaixo:

1.  **Configuração do Banco de Dados**: Utilize o `Script SQL.txt` para criar o banco de dados e as tabelas necessárias em um servidor Firebird.
2.  **Execução do Aplicativo**: O executável do sistema (`.exe`) pode ser encontrado na pasta `Exe/`. Execute-o para iniciar o Stock-Manager.
3.  **Credenciais Iniciais**: Verifique o `Script SQL.txt` para possíveis credenciais de usuário padrão ou crie um novo usuário diretamente no banco de dados, se necessário.

## Funcionalidades

O sistema Stock-Manager oferece as seguintes funcionalidades:

*   **Gestão de Usuários**: Cadastro, edição e controle de acesso de usuários.
*   **Gestão de Empresas**: Cadastro de informações da empresa.
*   **Gestão de Fornecedores**: Cadastro e gerenciamento de fornecedores.
*   **Gestão de Clientes**: Cadastro e gerenciamento de clientes.
*   **Gestão de Produtos**: Cadastro de produtos com controle de estoque (quantidade em estoque e estoque mínimo).
*   **Gestão de Compras**: Registro de compras, incluindo itens comprados, valores e formas de pagamento.
*   **Contas a Pagar**: Gerenciamento de contas a pagar relacionadas às compras, com controle de vencimento, pagamento, juros e status.
*   **Gestão de Vendas**: Registro de vendas, incluindo itens vendidos, valores, formas de pagamento e troco.
*   **Contas a Receber**: Gerenciamento de contas a receber relacionadas às vendas, com controle de vencimento, recebimento, juros e status.
*   **Relatórios**: Consultas e relatórios diversos sobre compras, vendas, contas a pagar e receber, agrupados por período, fornecedor/cliente e forma de pagamento.

## Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou pull requests para melhorias, correção de bugs ou novas funcionalidades.
