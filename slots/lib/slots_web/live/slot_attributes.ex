defmodule MyAppWeb.Five do
  use Phoenix.Component

  def modal(assigns) do
    ~H"""
    <div class="modal-container">
      <div class="header">
        <%= render_slot(@header) %>                 <!-- HERE  -->
      </div>

      <div class="modal-body">
        <p class="text-sm text-gray-500">
          <%= render_slot(@inner_block) %>          <!-- HERE  -->
        </p>
      </div>

      <div class="modal-footer">                    <!-- HERE  -->
        <div class="modal-footer">
        <%= for confirm <- @confirm do %>
          <button class={"#{confirm.classes}"}><%= render_slot(@confirm) %></button>
        <% end %>

        <%= for cancel <- @cancel do %>
          <button class={"#{cancel.classes}"}><%= render_slot(@cancel) %></button>
        <% end %>
      </div>
      </div>
    </div>
    """
   end

end
