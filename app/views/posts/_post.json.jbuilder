<%= form_with(model: post) do |form| %>
    <% if post.errors.any? %>
      <div id="error_explanation">
        <h2><%= pluralize(post.errors.count, "error") %> prohibited this post from being saved:</h2>
  
        <ul>
          <% post.errors.each do |error| %>
            <li><%= error.full_message %></li>
          <% end %>
        </ul>
      </div>
    <% end %>
  
    <div class="field">
      <%= form.label :title %>
      <%= form.text_field :title %>
    </div>
  
    <div class="field">
      <%= form.label :body %>
      <%= form.text_area :body %>
    </div>
  
    <div class="actions">
      <%= form.submit %>
    </div>
  <% end %>