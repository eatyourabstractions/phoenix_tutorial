defmodule DemoWeb.CounterLive do
  use DemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket = assign(socket, :counter, 0)
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
      <h1>Current count: <%= @counter %></h1>
      <button phx-click="inc">+1</button>
      <button phx-click="reset">Reset</button>
    """
  end

  def handle_event("inc", _, socket) do
    socket = update(socket, :counter, &(&1 + 1))
    {:noreply, socket}
  end

  def handle_event("reset", _, socket) do
    socket = assign(socket, :counter, 0)
    {:noreply, socket}
  end

end
