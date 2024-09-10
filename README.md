# Sistema de Gerenciamento Simplificado Web
Este projeto é um sistema de gerenciamento simplificado desenvolvido para a web utilizando Flutter. O objetivo é fornecer uma interface intuitiva e eficiente para gerenciar diferentes aspectos de um sistema de forma fácil e rápida.

Sumário
Visão Geral
Pré-requisitos
Configuração do Ambiente
Instalação
Execução do Projeto
Tecnologias Utilizadas
Contribuição
Licença

--Visão Geral--

O sistema de gerenciamento simplificado web foi desenvolvido com o intuito de facilitar a administração de dados e processos através de uma interface web moderna. O projeto foi criado com Flutter, uma framework de UI do Google para criar aplicações nativas compiladas para mobile, web e desktop a partir de uma única base de código.

Pré-requisitos
Antes de executar o projeto, certifique-se de ter os seguintes pré-requisitos instalados:

Flutter (versão 3.0 ou superior)
Dart (incluso no Flutter SDK)
Node.js (opcional, caso precise de funcionalidades específicas relacionadas ao backend)

--Configuração do Ambiente--

1 - Clone o repositório:

git clone https://github.com/seu-usuario/sistema-gerenciamento-simplificado.git

2 - Navegue até o diretório do projeto:

cd sistema-gerenciamento-simplificado

3 - Instale as dependências do Flutter:

flutter pub get

--Instalação--

1 - Configure o ambiente de desenvolvimento Flutter para a web:

Certifique-se de que a configuração para a web está ativada:

flutter config --enable-web

2 - Construa o projeto:

flutter build web
Este comando irá compilar o projeto para a web, gerando os arquivos na pasta build/web.

--Execução do Projeto--

Para rodar o projeto localmente em um servidor de desenvolvimento, utilize:

flutter run -d chrome
Isso abrirá o projeto no navegador padrão.

Para rodar em outro navegador, você pode especificar o navegador desejado com a flag -d. Por exemplo, para Firefox:

flutter run -d firefox


--Tecnologias Utilizadas--

Flutter: Framework para desenvolvimento de UIs nativas para diferentes plataformas.
Dart: Linguagem de programação usada pelo Flutter.
Supabase (opcional): Para autenticação e armazenamento em nuvem.

--Contribuição--

Contribuições são bem-vindas! Se você quiser contribuir com o projeto, por favor siga estas etapas:

1 - Faça um fork do repositório.
2 - Crie uma branch para sua feature ou correção (git checkout -b minha-feature).
3 - Faça suas alterações e commit (git commit -am 'Adiciona nova feature').
4 - Envie sua branch para o repositório remoto (git push origin minha-feature).
5 - Crie um pull request.

--Licença--

Este projeto está licenciado sob a Licença MIT.
