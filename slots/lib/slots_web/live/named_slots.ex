defmodule MyAppWeb.Three do
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
        <button><%= render_slot(@confirm) %></button>
        <button><%= render_slot(@cancel) %></button>
      </div>
    </div>
    """
   end

end
