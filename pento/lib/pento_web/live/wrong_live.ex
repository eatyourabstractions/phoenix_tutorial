defmodule PentoWeb.WrongLive do
  use PentoWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, score: 0, message: "Make a guess: ")}
  end

  @spec render(any) ::
  Phoenix.LiveView.Rendered.t()
  def render(assigns) do
    ~H"""
      <h1>your score: <%= @score %></h1>
      <h2>
        <%= @message %>
        It's <%= time() %>
      </h2>
      <h2>
        <%= for n <- 1..10  do %>
          <.link href="#" phx-click="guess" phx-value-number={n}>
            <%= n %>
          </.link>
        <% end%>
      </h2>
    """
  end

  def time() do
    DateTime.utc_now |> to_string()
  end

  def handle_event("guess", %{"number" => guess}, socket) do
    message = "your guess: #{guess}. Wrong. Guess again."
    score = socket.assigns.score - 1
    {
      :noreply,
      assign(
        socket,
        message: message,
        score: score
      )
    }

  end
end
