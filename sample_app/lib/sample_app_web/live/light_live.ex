defmodule SampleAppWeb.LightLive do
  use SampleAppWeb, :live_view
  # use Phoenix.LiveView

  def render(assigns) do
    ~H"""
      <h1>The light is <%= @light_bulb_status %>.</h1>
      <button phx-click="on" class={"btn btn-success #{@on_button_status}"} >On</button>
      <button phx-click="off" class={"btn btn-primary #{@off_button_status}"}  >Off</button>
    """
  end

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(:light_bulb_status, "off")
      |> assign(:on_button_status, "")
      |> assign(:off_button_status, "disabled")

    {:ok, socket}
  end

  def handle_event("on", _value, socket) do
    socket =
      socket
      |> assign(:light_bulb_status, "on")

    {:noreply, socket}
  end

  def handle_event("off", _value, socket) do
    socket =
      socket
      |> assign(:light_bulb_status, "off")

    {:noreply, socket}
  end
end
