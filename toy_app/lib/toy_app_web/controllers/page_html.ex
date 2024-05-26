defmodule ToyAppWeb.PageHTML do
  @moduledoc """
  This module contains pages rendered by PageController.

  See the `page_html` directory for all templates available.
  """
  use ToyAppWeb, :html

  embed_templates "static_page_html/*"
end