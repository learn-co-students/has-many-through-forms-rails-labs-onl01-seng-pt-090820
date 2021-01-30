



<h1> THE POST SHOW </h1>

<h3> Title: </h3>
<h2><%= @post.title %></h2>

<h3> Category: </h3>
<% @post.post_categories.each do |post_category| %>
  <%= post_category.category.name %>
  <% end %>

<h3> Content: </h3>
<%= @post.content %>

<h3> Comment: </h3>

  <% @post.comments.each do |comment| %>
    <%= comment.user_id %> says: <%= comment.content %><br>
  <% end %>

<h3> Users: </h3>
<% @post.users.each do |user| %>
  <%= user.username %><br>
  <% end %>

  <h1> NEW Comment </h1>
      <%= form_for @post.comments.build do |f| %>
      <%= f.hidden_field :post_id, value: @post.id %>
        <%= f.collection_select(:user_id, User.all, :id, :username, prompt: true) %><br>
        <%= f.fields_for :user, User.new do |user_fields| %>
          <%= user_fields.label :username %>
          <%= user_fields.text_field :username %>
        <% end %>
        <%= f.label :content %>
        <%= f.text_field :content %><br>
        <%= f.label :user %>
      <%= f.submit %>
    <% end %>


<h1><%= @post.title %></h1>
<p>
  <%= @post.content %>
</p>
<p>
Categories: <%= @post.categories.map(&:name).join(' ') %>
</p>
<ul>
<% @post.comments.each do |comment| %>
  <li>
    <%= comment.user.username %> says: <%= comment.content %>
  </li>
<% end %>
</ul>

Commentors:
<ul>
<% @post.users.distinct.each do |user| %>
  <li>
    <%= link_to user.username, user_path(user) %>
  </li>
<% end %>
</ul>

<%= form_for @post.comments.build do |f| %>
  <%= f.hidden_field :post_id %>
  <p>
    <%= f.collection_select :user_id, User.all, :id, :username %>
  </p>

  <%= f.fields_for :user, User.new do |user_fields| %>
    <%= user_fields.label :username %>
    <%= user_fields.text_field :username %>
  <% end %>
  
  <p>
    <%= f.label :content, "New Comment" %><br>
    <%= f.text_area :content %>
  </p>
  <br/>
  <%= f.submit %>
<% end %>