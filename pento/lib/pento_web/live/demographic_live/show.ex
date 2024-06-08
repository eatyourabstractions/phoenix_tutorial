
defmodule PentoWeb.DemographicLive.Show do
  use Phoenix.Component

  alias Pento.Survey.Demographic
  alias PentoWeb.CoreComponents

  attr :demographic, Demographic, required: true
  def details(assigns) do
    ~H"""
      <div>
        <h2 class="font-medium text 2xl">Demographics <span>&#x2713</span></h2>
          <CoreComponents.table rows={[@demographic]} id="demographic-table">
            <:col :let={demographic} label="Gender">
              <%= demographic.gender %>
            </:col>
            <:col :let={demographic} label="Year Of Birth">
              <%= demographic.year_of_birth %>
            </:col>
          </CoreComponents.table>
      </div>
    """
  end

end
