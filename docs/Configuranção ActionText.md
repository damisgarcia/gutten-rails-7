# Configuração ActionText

Execute o comando abaixo para instalação e pré-configuração do ActionText

<code>
bin/rails action_text:install
</code>

<br>

Exemplo de uma entidade utilizando ActionText

<code>rails g model Post title body:rich_text</code>

<pre>
  <code>
    class Post < ApplicationRecord
      has_rich_text :body

      has_one_attached :media do |attachable|
        attachable.variant :thumb, resize_to_limit: [300, 300]
        attachable.variant :medium, resize_to_limit: [600, 600]
      end
    end
  </code>
</pre>

## Referências

https://edgeguides.rubyonrails.org/action_text_overview.html
https://edgeguides.rubyonrails.org/active_storage_overview.html

### Dependências do ActionStorage

#### Instale Image Magic

<code>
  sudo apt install imagemagick

</code>

#### Adicione ao Gemfile image_processing para processamento de imagens no ActionStorage do Rails

<code>
  gem "image_processing", ">= 1.2"
</code>

#### Configure config/application.rb

<pre>
<code>
class Application < Rails::Application
  ....
  config.active_storage.variant_processor = :mini_magick
end
</code>
</pre>
