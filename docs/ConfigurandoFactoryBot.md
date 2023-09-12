# Instalação e configuração FactoryBot com Faker

Adicione ao Gemfile e instale as Gems abaixo:

<pre>
<code>
gem 'factory_bot_rails'
gem 'faker', require: false
</code>
</pre>

Vamos criar nossa primeira factory, no diretório spec/factories crie por exemplo o arquivo post.rb com o seguinte código abaixo:

<pre>
<code>
require "factory_bot"
require "faker"

FactoryBot.define do
  factory :post do
    title { Faker::Lorem.sentence }
    after(:build) do |post|
      post.body = Faker::Lorem.paragraph(sentence_count: 25)
    end
  end
end

</code>
</pre>

Em seguida através do comando em seu terminal `rails c`. Execute o código abaixo:

<pre>
<code>
FactoryBot.create_list :post, 15
</code>
</pre>

Pronto, será criado 15 Posts como exemplo para o nosso blog
