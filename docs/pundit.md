## Instalação e Configuração do Pundit para OO Authorization

<pre>
  <code>gem 'pundit', '~> 2.3', '>= 2.3.1'</code>
</pre>

Incluir no `app/controllers/application_controller.rb`:

<pre>
  <code>
    class ApplicationController < ActionController::Base
      include Pundit::Authorization
    end
  </code>
</pre>

Agora rode o comando para configurações básicas do Pundit: `rails g pundit:install`

Agora iremos criar nossa política de autorização segue abaixo um exemplo:

<pre>
  <code>
    class PostPolicy < ApplicationPolicy
      class Scope < Scope
        def resolve
          if user.present?
            case user.role
            when 'admin'
              scope.all
            when 'publisher'
              scope.where(user_id: user.id)
            else
              scope.published
            end
          else
            scope.published
          end
        end
      end
    
      def show?
        true
      end
    
      def manage?
        user.admin? || user.publisher?
      end
    end
  </code>
</pre>
