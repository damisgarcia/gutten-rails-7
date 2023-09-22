## Tutorial iniciante para criar relacionamento um para muitos de Users e Posts

Inicialmente iremos criar uma migrate em nosso sistema para adicioanar uma referência de 'User' em 'Post' através do comando:
<pre>
  <code>
    rails g migration add_reference_user_to_posts user:references
    rails db:migrate
  </code>
</pre>
``

Após criação de nossa migrate iremos configurar nossos modelos sugiro dar uma olhada na documentação do Rails [https://guides.rubyonrails.org/association_basics.html]
