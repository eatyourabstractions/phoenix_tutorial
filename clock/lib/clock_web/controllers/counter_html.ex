defmodule ClockWeb.CounterHTML do
  use ClockWeb, :html

  embed_templates "counter_html/*"

  @doc """
  Renders a counter form.
  """
  attr :changeset, Ecto.Changeset, required: true
  attr :action, :string, required: true

  def counter_form(assigns)
end
