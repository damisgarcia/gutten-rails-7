# Instalação e configuração do Devise

O Devise é uma biblioteca popular de autenticação para Ruby on Rail

<pre>
  <code>
    gem 'devise', '~> 4.9', '>= 4.9.2'
    gem 'devise-tailwindcssed'
  </code>
</pre>

Pós instalação da Gem no projeto rode o comando para intalação do Devise no projeto:

<pre>
  <code>
    rails generate devise:install
  </code>
</pre>

Iremos criar agora um modelo User que o Devise utilizara em seu sistema de autênticação:

<pre>
  <code>
    rails generate devise User
    rails db:migrate
  </code>
</pre>

Configure as rotas no arquivo config/routes.rb. Adicione o seguinte código para gerar as rotas do Devise:

<pre>
  <code>
    devise_for :users
  </code>
</pre>

Agora iremos criar as views relacionadas ao sistema de autênticação do Devise

<pre>
  <code>
    rails generate devise:views:tailwindcssed
  </code>
</pre>

Agora iremos criar um controlador administrativo para manipularmos os usuários cadastrados no sistema:

<pre>
  <code>
    rails generate scaffold_controller admin/user :email, :password, :password_confirmation --model-name=User
  </code>
</pre>

Será criado a estrutura de manipulação dos usuários do sistema na pasta `app/controllers/admin` iremos criar o arquivo `app/controllers/admin_controller.rb` para bloquear qualquer acesso não autorizados aos controladores `/admin`:

<pre>
  <code>
    class Admin::AdminController < ApplicationController
      before_action :authenticate_user!
    end
  </code>
</pre>

Em seguida iremos editar o controller `/app/controllers/admin/users_controller.rb`:

<pre>
  <code>
    class Admin::Users_Controller < AdminController
      ....
    end
  </code>
</pre>

