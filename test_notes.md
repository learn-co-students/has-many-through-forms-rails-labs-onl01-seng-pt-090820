
  <h1> Comment </h1>
  <%byebug%>
      <%= form_for @comments do |f| %>
        <%= f.collection_select(:user_id, User.all, :id, :username, prompt: true) %><br>
        <%= f.label :content %>
        <%= f.text_field :content %><br>
      
        <%= f.label :user %>
        <%= f.field_for :user %><br>
        <%= f.hidden_field :post_id, value: @post.id %>
      <%= f.submit %>
    <% end %>
