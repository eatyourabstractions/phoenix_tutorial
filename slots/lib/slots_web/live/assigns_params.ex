defmodule MyAppWeb.One do
  use Phoenix.Component

  def modal(assigns) do
    ~H"""
      <div class="modal-container">
        <div class="header">
          <h1><%= @title %></h1>
        </div>

        <div class="modal-body">
          <p class="text-sm text-gray-500">
            <%= @body %>
          </p>
        </div>

        <div class="modal-footer">
          <button>Ok</button>
          <button>Cancel</button>
        </div>
      </div>
    """
  end
end
