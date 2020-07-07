# README

# Projeto: Sistema Ponto (Desafio Solides)

## Instalação:
```
git clone https://github.com/MatheusCandido1/sistema_ponto.git
```

Navegue para o diretório onde estão os arquivos do projeto
```cd sistema_ponto```

Neste projeto, utilizei o Ruby 2.3. Para checar sua versão, digite em um console: ```
ruby -v```

Para atualizar as dependências, utilize o commando  ```bundle``` ou ```bundle install```

## Banco de dados

Para conectar com o bd, configure as variavéis (usuario, senha e host) do seu banco de dados no arquivo *'config/database.yml'*

Para gerar o schema do banco de dados, use o comando ```rake db:migrate``` ou faça a importação do arquivo *'dump.sql'*

Caso tenha optado pelo *migrate*, utilize também o comando ```rake db:seed``` para criar o usuário admin. Esse terá as seguintes credencias como padrão:

E-mail: admin@admin.com

Senha: secret

Caso você faça a importação do *dump.sql*, o banco já estará populado com o usuário admin e dois usuários estágiarios, com algums pontos já cadastrados.

## Rodando a aplicação

Use o comando ```rails s``` para incializar o servidor. No seu navegador, utilize a url: *localhost:3000*








