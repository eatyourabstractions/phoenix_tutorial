
defmodule PentoWeb.PromoLive do
  use PentoWeb, :live_view
  alias Pento.Promo
  alias Pento.Promo.Recipient

  def mount(_params, _session, socket) do
    {:ok,
      socket
        |> assign_recipient()
        |> assign_changeset()
    }

  end

  def handle_event("validate", %{"recipient" => recipient_params}, %{assigns: %{recipient: recipient}} = socket) do
    changeset =
      recipient
        |> Promo.change_recipient(recipient_params)
        |> Map.put(:action, :validate)

    {:noreply,
    socket |> assign(:changeset, to_form(changeset)) }

  end

  defp assign_recipient(socket) do
    socket
      |> assign(:recipient, %Recipient{})
  end

  defp assign_changeset(%{assigns: %{recipient: recipient}} = socket) do
    # recipient = socket.assigns.recipient
    socket
      |> assign(:changeset, to_form(Promo.change_recipient(recipient)))

  end
end
