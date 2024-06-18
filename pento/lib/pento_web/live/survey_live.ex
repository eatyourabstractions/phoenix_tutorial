
defmodule PentoWeb.SurveyLive do
  # use
  use PentoWeb, :live_view

  # aliases
  alias Pento.Survey
  alias PentoWeb.DemographicLive
  # alias __MODULE__.Component

  def mount(_params, _session, socket) do
    {:ok, socket |> assign_demographic }
  end

  defp assign_demographic(%{assigns: %{current_user: current_user}} = socket) do
    # IO.inspect(current_user)
    current_user_demographic = Survey.get_demographic_by_user(current_user)
    assign(socket, :demographic, current_user_demographic)
  end

  def handle_info({:created_demographic, demographic}, socket) do
    {:noreply, handle_demographic_created(socket, demographic)}

  end

  def handle_demographic_created(socket, demographic) do
    socket
      |> put_flash(:info, "Demographic created succesfully")
      |> assign(:demographic, demographic)
  end

end
