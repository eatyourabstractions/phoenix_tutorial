defmodule PentoWeb.SearchLive do
  use PentoWeb, :live_view
  alias Pento.Catalog.Search

  def mount(_params, _session, socket) do

    {:ok,
      socket
      |> assign_prompt()
      |> assign_form()
    }

  end

  def render(assigns) do
    ~H"""
      <.header>
        Enter your SKU number
      </.header>
      <div>
      <.simple_form
        for={@form}
        id="search-form"
        phx-change="validate"
        phx-submit="save"
      >
      <.input field={@form[:prompt]} type="text" label="SKU number"/>

        <:actions>
          <.button phx-disable-with="Searching...">Search product</.button>
      </:actions>
      </.simple_form>

      </div>

    """

  end

  def handle_event("validate", %{"search" => %{"prompt" => prompt_params}}, %{assigns: %{prompt: prompt}} = socket) do
    # IO.inspect(prompt)
    {prompt_num, _} = Integer.parse(prompt_params)
    # IO.inspect(prompt_num)
    changeset =
      prompt
        |> Search.sku_policy(%{:sku => prompt_num})
        |> Map.put(:action, :validate)

    # {:noreply, socket}
    # IO.inspect(changeset)

    {
      :noreply,
      socket |> assign(:form, to_form(changeset))
    }

  end



  # mount helper functions
  defp assign_prompt(socket) do
    socket
      |> assign(:prompt, %Search{})
  end

  defp assign_form(%{assigns: %{prompt: prompt}} = socket) do
    # recipient = socket.assigns.recipient
    socket
      |> assign(:form, to_form(Search.sku_policy(prompt) ))

  end

end
