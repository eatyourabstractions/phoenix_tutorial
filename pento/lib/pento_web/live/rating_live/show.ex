
defmodule PentoWeb.RatingLive.Show do
  use Phoenix.Component

  attr :rating, :any, required: true
  def stars(assigns) do
    ~H"""
      <div>
        <%=
          @rating.stars
            |> filled_stars()
            |> Enum.concat(unfilled_stars(@rating.stars))
            |> Enum.join(" ")
        %>
      </div>
    """
  end

  def filled_stars(stars) do
    List.duplicate("*" , stars)
  end

  def unfilled_stars(stars) do
    List.duplicate("", 5 - stars)
  end

end
