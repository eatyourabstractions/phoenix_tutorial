defmodule PentoWeb.ProductLive.Show do
  alias PentoWeb.Presence
  use PentoWeb, :live_view

  alias Pento.Catalog

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket |> assign(:my_msg, "CHAPTER'S 4 LAST EXERCISE COMPLETE!!")}
  end

  @impl true
  def handle_params(%{"id" => id}, _, socket) do
    product = Catalog.get_product!(id)
    maybe_track_user(product, socket)
    {:noreply,
     socket
     |> assign(:page_title, page_title(socket.assigns.live_action))
     |> assign(:product, product)}
  end

  defp page_title(:show), do: "Show Product"
  defp page_title(:edit), do: "Edit Product"

  def maybe_track_user(product, %{assigns: %{live_action: :show, current_user: current_user}} = socket) do
    if connected?(socket) do
      Presence.track_user(self(), product, current_user.email)

    end

  end

  def maybe_track_user(_product, _socket), do: nil
end
